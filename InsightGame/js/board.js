/**
 *  board/*.jsp 
 */
var page = 1;
var header = "";
function setHeader(val){
	header = val;
	var target = $('#headerBtn').text(val);
}
function openComments(bId){
	var targetTr = $('#tr_'+bId);
	if(targetTr.next('tr').attr('class').substr(0, 4) == 'cmts'){
		console.log('Already exists....')
		$('.cmts_'+bId).toggle();
	}
	else{
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
						var cmt_regDate = item.regDate;
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
}
//     게시글 작성 ajax
$(document).ready(function(){
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
//		        	alert('sucess')
		        	location.reload();
	        	}
	    	},
	    	error:function(request,status,error){
			    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
			}
		});
	});
});

function modifyBtn(bId){
//	alert(bId);
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
//			alert('sucess')		
			location.reload()
		},
		error:function(request,status,error){
		    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}

function deleteBtn(bId){
	alert(bId)
	$.ajax({
		url: "delete.do", 
		type: "post",
		dataType: "json",
		data:{	
			"bId" : bId,
		}, 
		success: function(data){
//			alert('sucess')		
			location.reload()
		},
		error:function(request,status,error){
		    alert("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
		}
	});
}
function commentBtn(bId){
	var targetTr = $('#tr_'+bId);
	if(targetTr.next('tr').attr('id') == 'tr_cmt_'+bId){
		targetTr.next('tr').remove()
		targetTr.find('button[name=commentBtn]').text('댓글')
		targetTr.css("background", "");
	}
	else{
		targetTr.find('button[name=commentBtn]').text('취소');
		targetTr.next('tr').addClass('product_thumb').css({
			
		});
		targetTr.after(function(){
			// tr> td1('ㄴ') td2,3,4('input') td5(작성자) td6('button')
			return '<tr id=tr_cmt_'+bId+'><td>ㄴ</td>'+
				'<td colspan="3"><input id="writeComment" type="text" class="form-control" aria-label="..."></td>'+
				'<td>작성자</td>'+
				'<td><button type="button" id="writeBtn_comment" class="btn btn-secondary btn-sm" onclick="writeBtn_comment('+bId+')">등록</button></td></tr>';
		});
	}
}
function writeBtn_comment(bId, header){
	var targetTr = $('#tr_'+bId);
	var header = targetTr.find('td[name=header]').attr('value')
	var content = $('#writeComment').val();
	var writer = 'temp222';
	var parentBId = bId;
//	alert("["+bId+"]"+header+".//."+content+writer)
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