/**
 * 
 */

$(document).ready(function () {
		$('#LoginForm').submit(function (event) {
				//submit이 자동으로 되는 기능을 막기
				event.preventDefault();
				
				//id pwd를 가져오기
				//document.getElementById("id").value;
				var id = $('#id').val();
				var pwd= $('#pwd').val();
				console.log(id, pwd);
				
				//서버로 post전송
				$.post("http://httpbin.org/post",
							{ "id" : id, "pwd" : pwd},
							function(data){
								//alert(data.form.id + '님 로그인 되었습니다.');
								var myModal = $('#myModal');
								myModal.modal();
								myModal.find('.modal-body').text(data.form.id + '님 로그인 되었습니다.')
							});
		});
	});
	
	//간단하게 쓰기
	$(function() {
		
	});