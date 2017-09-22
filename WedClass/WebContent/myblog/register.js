
	$(document).ready(function() {
        $('#regForm').submit(function(event) {
           // 자동으로 submit 되는 걸 막기
           event.preventDefault();

           // id, pwd값 가져오기
           // document.getElementById("id").value
           var id = $('#regId').val();
           var pwd = $('#regPwd').val();
           console.log(id, pwd);

           // 서버로 post 전송(ajax)
           $.post( "http://httpbin.org/post", 
              {"id" : id, "pwd" : pwd }, 
              function(data) {
                 //alert(data.form.id + '님 로그인 되었습니다.');
                 var myModal = $('#myModal');
                 myModal.modal();
                 myModal.find('.modal-body').text(data.form.id + '님 회원가입 되었습니다.');
              });
           });
     });

