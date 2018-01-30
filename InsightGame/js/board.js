/**
 *  board/*.jsp 
 */
var page = 1;
var header = "";

Date.prototype.format = function(f) {
    if (!this.valueOf()) return " ";
 
    var weekName = ["일요일", "월요일", "화요일", "수요일", "목요일", "금요일", "토요일"];
    var d = this;
     
    return f.replace(/(yyyy|yy|MM|dd|E|hh|mm|ss|a\/p)/gi, function($1) {
        switch ($1) {
            case "yyyy": return d.getFullYear();
            case "yy": return (d.getFullYear() % 1000).zf(2);
            case "MM": return (d.getMonth() + 1).zf(2);
            case "dd": return d.getDate().zf(2);
            case "E": return weekName[d.getDay()];
            case "HH": return d.getHours().zf(2);
            case "hh": return ((h = d.getHours() % 12) ? h : 12).zf(2);
            case "mm": return d.getMinutes().zf(2);
            case "ss": return d.getSeconds().zf(2);
            case "a/p": return d.getHours() < 12 ? "am" : "pm";
            default: return $1;
        }
    });
};

String.prototype.string = function(len){var s = '', i = 0; while (i++ < len) { s += this; } return s;};
String.prototype.zf = function(len){return "0".string(len - this.length) + this;};
Number.prototype.zf = function(len){return this.toString().zf(len);};

// event script
$(document).ready(function(){
	page = 1;
	$("#writeContent").keydown(function (key) {
        if(key.keyCode == 13){//키가 13이면 실행 (엔터는 13)
        	$('#writeBtn').click();
        }
    });
	$('#boardTable tr').each(function(i){
		if(!$(this).find('td[name="header"]'))
			$(this).css('background', 'lightgray')
	})
	$('#writeBtn').on('click', function(){
		var content = $('#writeContent').val();				
//		alert(header+"//"+content);
		$.ajax({
			url: "write.do", 
			type: "post",
			dataType: "json",
			data:{	
				"header" : header,
				"content": content
			}, 
			contentType: "application/x-www-form-urlencoded;charset=ISO-8859-15",
			success: function(data){
	        	if(data != null){
		        	location.reload();
	        	}
	    	},
	    	error:function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
	$('#getListBtn').on('click', function(){
		page += 1;
		$.ajax({
			url: "getList.do", 
			dataType: "json",
			data: "page="+page, 
			success: function(data){
				var boardList = data.boardList;
				$.each(boardList, function(index, item){
					var bId = item.bId;
					var header = item.header;
					var content = item.content;
					var writer = item.writer;
					var regDate = new Date(item.regDate).format("yyyy-MM-dd(HH:mm:ss)")
					var groupId = item.groupId;
					var groupLvl = item.groupLevel;
					var cmts = item.cmts;
					console.log(regDate+"//////"+item.regDate);
					var tr = $('<tr>').attr({'id': 'tr_'+bId, 'style': 'cursor:pointer'}).addClass('boards_tr').appendTo('#bodyBoardTable');
					var td1 = $('<td>').attr('name','bId').val(bId).text(bId).appendTo(tr);
					var td2 = $('<td>').attr('name','header').val(header).text("["+header+"]").appendTo(tr);
					if(cmts > 0){
						var td3 = $('<td>').attr('name','content').val(content)
						.text(content+"["+cmts+"]").appendTo(tr);
						tr.attr('onclick', 'openComments('+bId+')')
					}
					else
						var td3 = $('<td>').attr('name','content').val(content).text(content).appendTo(tr);
					var td4 = $('<td>').attr('name','writer').val(writer).text(writer).appendTo(tr);
					var td5 = $('<td>').attr('name','regDate').text(regDate).val(regDate).appendTo(tr);
					var cmtBtn = $('<button>').addClass('btn btn-secondary btn-sm')
						.attr({'onclick':'commentBtn('+bId+')', 'name': 'commentBtn'})
						.text('댓글');
					var mdfyBtn = $('<button>').addClass('btn btn-secondary btn-sm')
					.attr({'onclick':'modifyBtn('+bId+')', 'name': 'modifyBtn'})
					.text('수정');
					var deltBtn = $('<button>').addClass('btn btn-secondary btn-sm')
					.attr({'onclick':'deleteBtn('+bId+')', 'name': 'deleteBtn'})
					.text('삭제');
					var td6 = $('<td>').attr('name', 'btn_groups')
						.append(cmtBtn).append(mdfyBtn).append(deltBtn).appendTo(tr);
					
				})
	    	},
	    	error:function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
});

function setHeader(val){
	header = val;
	var target = $('#headerBtn').text(val);
}

function openComments(bId){
	var targetTr = $('#tr_'+bId);
	if(targetTr.is(":last-child")){
		getCommentList(targetTr, bId);
	}
	else {
		if(targetTr.next('tr').attr('class').substr(0, 4).toString() == 'cmts'){
			console.log('Already exists....')
			$('.cmts_'+bId).toggle();
		}
		else{
			getCommentList(targetTr, bId);
		}
	}
}
function getCommentList(targetTr, bId){
	$.ajax({
		url:"getCommentList.do",
		type: "post",
		dataType:"json",
		data: {"groupId": bId},
		success: function(data){
			targetTr.after(function(){
				var cmts = "";
				var list = data.commentList;
				$.each(list, function(index, item) {
					var cmt_bId = item.bId;
					var cmt_content = item.content;
					var cmt_writer = item.writer;
					var cmt_regDate = new Date(item.regDate).format("yyyy-MM-dd(HH:mm:ss)")
					var cmt_groupId = item.groupId;
					cmts += '<tr class="cmts_'+cmt_groupId+'" id=tr_cmt_'+bId+'>'+
						'<td></td>'+
						'<td>ㄴ</td>'+
						'<td>'+cmt_content+'</td>'+
						'<td>'+cmt_writer+'</td>'+
						'<td>'+cmt_regDate+'</td>'+
						'<td><button type="button" class="writeBtn_comment btn btn-secondary btn-sm" onclick="deleteBtn('+cmt_bId+')">삭제</button></td></tr>';
				});
				return cmts;
			});
		},
		error : function(e){
			if(e.status == 300)
				console.log('Failed to load data....')
		}
	})
}
function modifyBtn(bId){
	var targetTr = $('#tr_'+bId);
	
	var content = $("#boardTable tr[id=tr_"+bId+"] td:nth-of-type(3)")
		.replaceWith('<td><input id="re_content" type="text" class="form-control" aria-label="..."></td>')
	var submit = $("#boardTable tr[id=tr_"+bId+"] td:nth-of-type(6)")
		.replaceWith(function(){
			return '<td>'+
			'<button type="button" name="submitBtn" class="btn btn-secondary btn-sm" onclick="submitBtn('+bId+')">수정</button>'+
			'<button type="button" name="cancelBtn" class="btn btn-secondary btn-sm" onclick="location.reload()">취소</button>'+
			'</td>'
			});
}
function submitBtn(bId){
	var content = $('#re_content').val()
	$.ajax({
		url: "modify.do", 
		type: "post",
		dataType: "json",
		data:{	
			"bId" : bId,
			"content" : content
		}, 
		contentType: "application/x-www-form-urlencoded;charset=ISO-8859-15",
		success: function(data){
			location.reload()
		},
		error:function(request,status,error){
		    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function deleteBtn(bId){
	$.ajax({
		url: "delete.do", 
		type: "post",
		dataType: "json",
		data:{	
			"bId" : bId,
		}, 
		success: function(data){
			location.reload()
		},
		error:function(request,status,error){
		    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}
function commentBtn(bId){
	var targetTr = $('#tr_'+bId);
	if(targetTr.next('tr').attr('class') == 'writeCmt'){
		targetTr.next('tr').remove()
		targetTr.find('button[name=commentBtn]').text('댓글')
		targetTr.css("background", "");
	}
	else{
		targetTr.find('button[name=commentBtn]').text('취소');
		targetTr.after(function(){
			// tr> td1('ㄴ') td2,3,4('input') td5(작성자) td6('button')
			return '<tr class="writeComment" id=tr_cmt_'+bId+'><td>ㄴ</td>'+
				'<td colspan="3"><input id="inputComment" type="text" class="form-control" aria-label="..."></td>'+
				'<td>작성자</td>'+
				'<td><button type="button" id="writeBtn_comment" class="btn btn-secondary btn-sm" onclick="writeBtn_comment('+bId+')">등록</button></td></tr>';
		});
	}
}
function writeBtn_comment(bId, header){
	var targetTr = $('#tr_'+bId);
	var header = targetTr.find('td[name=header]').attr('value')
	var content = $('#inputComment').val();
	var writer = 'temp222';
	var parentBId = bId;
	$.ajax({
		url: "writeCmt.do", 
		type: "post",
		dataType: "json",
		data:{	
			"parentBId" : bId,
			"header" : header,
			"writer" : writer,
			"content": content
		}, 
		contentType: "application/x-www-form-urlencoded;charset=ISO-8859-15",
		success: function(data){
			alert(data.msg)
			if(data != null){
				location.reload();
			}
		},
		error:function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}