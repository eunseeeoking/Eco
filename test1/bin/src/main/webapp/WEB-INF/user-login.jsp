<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta charset="UTF-8">
	<script src="js/jquery.js"></script>
	<script src="https://cdn.jsdelivr.net/npm/vue/dist/vue.js"></script>
	<title>로그인 페이지</title>
</head>
<style>
	fieldset {
		width: 300px;
	}
	span {
		margin-left: 15px;
	}
	div {
		margin: 10px;
	}
</style>
<body>
	<div id="app">
		<fieldset>
			<legend>로그인</legend>
			<div>
				아이디: <span><input type="text" v-model="id"></span>
			</div>
			<div>
				비밀번호: <input type="password" v-model="pwd" @keyup.enter="fnLogin">
			</div>
			<div>
				<button @click="fnLogin">로그인</button>
				<button @click="fnJoin">회원가입</button>
			</div>
		</fieldset>
	</div>
</body>
</html>
<script type="text/javascript">
var app = new Vue({
    el: '#app',
    data: {
    	userId: "",
    	userPw: ""
    }
    , methods: {
    	fnLogin: function() {
            var self = this;
            var nparmap = {
            		userId: self.Id,
            		userPw: self.userPw
            };
            $.ajax({
                url:"user-login.dox",
                dataType:"json",
                type: "POST",
                data: nparmap,
                success: function(data) {
                	
                }
            });
        },
        fnJoin: function() {
        	$.pageChange("/join.do",{});
        }
    }
    , created: function() {
    	var self = this;
	}
});
</script>