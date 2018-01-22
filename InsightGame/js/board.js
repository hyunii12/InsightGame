/**
 *  board/*.jsp 
 */
var header = "";
function setHeader(val){
	header = val;
	var target = $('#headerBtn').text(val);
}
//     게시글 작성 ajax
$(document).ready(function(){
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
		.replaceWith('<td><button type="button" name="submitBtn" class="btn btn-info" onclick="submitBtn('+bId+')">수정</button></td>');
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
function writeBtn_comment(bId){
	var targetTr = $('#tr_'+bId);
	var header = $("#boardTable tr[id=tr_"+bId+"] td:nth-of-type(2)").val();
	var content = $('#writeContent').val();
	var writer = 'temp2';
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
function commentBtn(bId){
	var targetTr = $('#tr_'+bId);
	if(targetTr.next('tr').attr('id') == 'tr_cmt_'+bId){
		targetTr.next('tr').remove()
		targetTr.find('button[name=commentBtn]').text('댓글')
		targetTr.css("background", "");
	}
	else{
		targetTr.find('button[name=commentBtn]').text('취소')
		targetTr.css('background', 'red');
		targetTr.after(function(){
			// tr> td1('ㄴ') td2,3,4('input') td5(작성자) td6('button')
			return '<tr id=tr_cmt_'+bId+'><td>ㄴ</td>'+
				'<td colspan="3"><input id="writeComment" type="text" class="form-control" aria-label="..."></td>'+
				'<td>작성자</td>'+
				'<td><button type="button" id="writeBtn_comment" class="btn btn-default" onclick="writeBtn_comment('+bId+')">등록</button></td></tr>';
		});
	}
}