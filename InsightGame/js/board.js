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
	
	// 더보기 버튼 
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
					var regDate = new Date(item.regDate).format("yyyy-MM-dd (HH:mm:ss)")
					var groupId = item.groupId;
					var groupLvl = item.groupLevel;
					var cmts = item.cmts;
					if(cmts != 0 ) cmts = cmts
					else cmts = "";
					console.log(regDate+"//////"+item.regDate);
					// tr1 : td1: 작성자 			, td2: 수정/삭제 버튼
					// tr2 : td3(colspan=2) : [+header+], contents
					// tr3 : td4(colspan=2) : 작성일자
					// tr4 : td5(colspan=2) : 댓글 버튼
					var tr1 = $('<tr>').html('<td name="writer" value="7" style="text-align: left; padding-bottom: 1px; padding-left: 1px; font-weight:bold">'+writer+'</td>'
							+'<td style="text-align: right; padding-bottom: 1px; vertical-align: middle;">'
								+'<div class="btn-group dropright">'
								+'<a data-toggle="dropdown" aria-haspopup="true"aria-expanded="false">'
								+'<img src="img/dotdot.png"></a>'
									+'<div class="dropdown-menu" style="margin-left:4px;">'
										+'<button class="dropdown-item" name="modifyBtn" onclick="modifyBtn('+bId+')">수정</button>'
										+'<button class="dropdown-item" name="deleteBtn" onclick="deleteBtn('+bId+')">삭제</button>'
									+'</div>'
								+'</div>'
							+'</td>').appendTo('#boardTable tbody');
					var tr2 = $('<tr>').html('<td colspan="2" name="header" value="'+header+'" style="text-align:left; padding:0px 1px; border-top:0px;"><span style="color: gray">['+header+']</span> '+content).appendTo('#boardTable tbody');
					var tr3 = $('<tr>').attr({'name':'regDate', 'colspan':"2", 'style':"text-align: left; padding: 0px 1px; border-top:0px;"})
						.text(regDate).insertAfter(tr2);
					var tr4 = $('<tr>').attr({'id':'tr_'+bId})
						.html('<td colspan="2" style="text-align: left; padding-right: 5px; padding-left: 5px; padding-top: 5px; padding-bottom: 14px; border-top:0px;">'
								+'<button class="btn btn-secondary btn-sm" name="commentBtn" value="'+cmts+'" onclick="commentBtn('+bId+ ')" style="cursor:pointer">댓글'
								+'<c:if test="${list.cmts != 0}"> '+cmts+'</c:if>'
							+'</button>'
						+'</td>')
						.appendTo('#boardTable tbody');
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

function getCommentList(bId, targetTr){
	$.ajax({
		url:"getCommentList.do",
		type: "post",
		dataType:"json",
		data: {"groupId": bId},
		success: function(data){
			var list = data.commentList;
				$.each(list, function(index, item) {
					var cmt_bId = item.bId;
					var cmt_content = item.content;
					var cmt_writer = item.writer;
					var cmt_regDate = new Date(item.regDate).format("yyyy-MM-dd&nbsp;(HH:mm:ss)")
					var cmt_groupId = item.groupId;
					var tr = $('<tr>').attr('id', 'cmts_tr_'+cmt_bId).addClass('tr_cmts_'+bId).insertAfter(targetTr)
					var td1 = $('<td>')
						.attr('bId', cmt_bId)
						.css({"text-align": 'left', 'padding-bottom': '1px', 'padding-left': '.75rem', 'padding-right': '5px', 'width': '170px' })
						.html('<b>└　'+cmt_writer+'</b>').appendTo(tr)
					var td2 = $('<td>').css({'text-align':'left', 'padding-left':'2px'})
						.attr({'colspan': '2', 'name': "content"})
						.html(cmt_content+
							'&nbsp;&nbsp;<span style="color: gray; font-size: 12px; font-style: italic;">'+cmt_regDate+'</span>'
						).appendTo(tr)
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
	alert("ddddddddd")
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
function getCommentList(bId, targetTr){
	$.ajax({
		url:"getCommentList.do",
		type: "post",
		dataType:"json",
		data: {"groupId": bId},
		success: function(data){
			var list = data.commentList;
				$.each(list, function(index, item) {
					var cmt_bId = item.bId;
					var cmt_content = item.content;
					var cmt_writer = item.writer;
					var cmt_regDate = new Date(item.regDate).format("yyyy-MM-dd&nbsp;(HH:mm:ss)")
					var cmt_groupId = item.groupId;
					var tr = $('<tr>').attr('id', 'cmts_tr_'+cmt_bId).addClass('tr_cmts_'+bId).insertAfter(targetTr)
					var td1 = $('<td>')
						.attr('bId', cmt_bId)
						.css({"text-align": 'left', 'padding-bottom': '1px', 'padding-left': '.75rem', 'padding-right': '5px', 'width': '170px' })
						.html('<b>└　'+cmt_writer+'</b>').appendTo(tr)
						var td2 = $('<td>').css({'text-align':'left', 'padding-left':'2px'})
						.attr({'colspan': '2', 'name': "content"})
						.html(cmt_content+
							'&nbsp;&nbsp;<span style="color: gray; font-size: 12px; font-style: italic;">'+cmt_regDate+'</span>&nbsp;&nbsp;'
						).appendTo(tr)
//					var deltBtn = $('<button>').addClass('btn btn-outline-secondary my-2 my-sm-0')
//						.attr({'onclick':'deleteBtn('+cmt_bId+')', 'name': 'deleteBtn', 'style' : "padding: .3rem .4rem;"})
//						.html('<img style="width:15px; height:15px;" src="img/letter-x.png">').appendTo(td2+'&nbsp;&nbsp;');
					var a = $('<a>').attr('href', '#').appendTo(td2);
						
					var delCmtBtn = $('<img>').attr({'onclick':'deleteBtn('+cmt_bId+')',
						'alt' : " ",
						'style' : "width:10px; height:10px;", 
						'src':"img/letter-x.png", 
						'border': "0" }
						).appendTo(a);
					
					
			});
		},
		error : function(e){
			if(e.status == 300)
				console.log('Failed to load data....')
		}
	})
}
function commentBtn(bId){
	var targetTr = $('#tr_'+bId);
	if(targetTr.find('button[name=commentBtn]').text() == '취소'){
		$('.tr_cmts_'+bId).remove();
		var no_cmts = targetTr.find('button[name=commentBtn]').attr('value');
		if(no_cmts == 0) no_cmts="";
		else no_cmts="&nbsp;"+no_cmts;
		targetTr.find('button[name=commentBtn]').html('댓글'+no_cmts)
	}
	else{
		targetTr.find('button[name=commentBtn]').text('취소');
		targetTr.after(function(){
			getCommentList(bId, targetTr);
			// tr> td1('ㄴ') td2,3,4('input') td5(작성자) td6('button')
			return '<tr class="tr_cmts_'+bId+' writeComment" id=tr_cmt_'+bId+'>'+
				'<td colspan="2" style="text-align: left;">└ <input id="inputComment" type="text" class="form-control" style="width: 86.8%; display: inline; margin-left: 11px; margin-right: 7px;"><button type="button" id="writeBtn_comment" class="btn btn-secondary btn-sm" onclick="writeBtn_comment('+bId+')" style="height:38px; border: 1px solid transparent; margin-bottom: 3.933px;">등록</button></td>'
				+ '</tr>';
		});
	}
}

function writeBtn_comment(bId, header){
	var targetTr = $('#tr_'+bId);
	var header = targetTr.find('td[name=header]').attr('value')
	var content = $('.tr_cmts_'+bId+'.writeComment').find('input[type="text"]').val();
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
			if(data != null){
				var cmts = targetTr.find('button[name=commentBtn]').attr('value');
				targetTr.find('button[name=commentBtn]').attr('value', cmts+1);
				commentBtn(bId);
				commentBtn(bId);
			}
		},
		error:function(request,status,error){
			alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}