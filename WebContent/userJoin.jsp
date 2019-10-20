<%@ page language="java" contentType="text/html; charset=UTF-8"
    pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
	<meta http-equiv="Content-Type" content="text/html; charset=UTF-8">
	<meta name="viewport" content="width=device-width, initial-scale=1"><%--반응형 웹이 정상적으로 작동하도록 설정함 --%>
	<link rel="stylesheet" href="css/bootstrap.css"><%--css파일 가져올수있도록 설정함 --%>
	<link rel="stylesheet" href="css/custom.css">
	<title>SOLD OUT 신발 사이트 회원가입</title>
	<script src="https://code.jquery.com/jquery-3.1.1.min.js"></script><%--js를 링크를 통해 가져올수 있도록 함 --%>
	<script src="js/bootstrap.js"></script>
	<script type="text/javascript">
		function registerCheckFunction() {
			var userID = $('#userID').val();
			$.ajax({
				type: 'POST',
				url: './UserRegisterCheckServlet',  
				data: {userID: userID},
				success: function(result) {
					if(result == 1) {
	 					$('#checkMessage').html('사용할 수 있는 아이디입니다.');
						$('#checkType').attr('class', 'modal-content panel-success');
					}
					else {
						$('#checkMessage').html('사용할 수 없는 아이디입니다.');
						$('#checkType').attr('class', 'modal-content panel-warning');
					}
					$('#checkModal').modal("show");
				}
			})
		}
		function passwordCheckFunction() {
			var userPassword1 = $('#userPassword1').val();
			var userPassword2 = $('#userPassword2').val();
			if(userPassword1 != userPassword2) {
				$('#passwordCheckMessage').html('비밀번호가 서로 일치하지 않습니다.');
			} else {
				$('#passwordCheckMessage').html('')
			}
		}
	</script>
</head>
<body>
<nav class="navbar navbar-expand-lg navbar-light bg-light">
<a class="navbor-brand" href="sold.jsp">SOLD OUT 신발 사이트</a>
<button class="navbar-toggler" type="button" data-toggle="collapse" data-target="#navbar">
<span class="navbar-toggler-icon"></span>
         
</button>
<div id="navbar" class="collapse navbar-collapse">
<ul class="navbar-nav mr-auto">
  <li class="nav-item">  
  <a class="nav-link" href="soldout.jsp">메인</a>
</li>
<li class="nav-item dropdown">
<a class="nav-link dropdown-toggle" id="dropdown" data-toggle="dropdown">
회원관리
</a> 
<div class="dropdown-menu" aria-labelledby="dropdown">
<a class="dropdown-item" href="userLogin.jsp">로그인</a>
<a class="dropdown-item " href="userJoin.jsp">회원가입</a>
<a class="dropdown-item" href="userLogout.jsp">로그아웃</a>
</div>
</li>
</ul>
<form action="form-inline my-2 my-lg-0">
<input class="form-control mr-sm-2" type="search" placeholder="내용을 입력하세요." aria-label="Search">
<button class="btn btn-outline-success my-2 my-sm-0" type="submit">검색</button>

</form>

</div>     
</nav>  
<br><br><br>


	<div class="container">
		<form method="post" action="./userRegister"><%--userregister의 서블릿을 통해 회원가입 할수있도록 함 --%>
			<table class="table table-bordered table-hover" style="text-align: center; border: 10px solid #dddddd">
				<thead>
					<tr>
						<th colspan="3"><h4>회원 등록 양식</h4></th>
					</tr>
				</thead>
				<tbody>
				
				
					<tr>
						<td style="width: 110px;"><h5>아이디</h5></td>
						<td><input class="form-control" type="text" id="userID" name="userID" maxLength="20" placeholder="아이디를 입력해주세요"></td>
						<td style="width: 120px;"><button class="btn btn-primary" onclick="registerCheckFunction();" type="button">중복체크</button></td>
					</tr><%--registerCheckFunction()함수호출할수 있도록 onclick에 설정함--%>
					<tr>
						<td style="width: 110px;"><h5>비밀번호</h5></td>
						<td colspan="2"><input class="form-control" type="password" onkeyup="passwordCheckFunction();" id="userPassword1" name="userPassword1" maxLength="20" placeholder="비밀번호를 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 140px;"><h5>비밀번호 확인</h5></td>
						<td colspan="2"><input class="form-control" type="password" onkeyup="passwordCheckFunction();" id="userPassword2" name="userPassword2" maxLength="20" placeholder="비밀번호 확인을 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이름</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="userName" name="userName" maxLength="20" placeholder="이름을 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>나이</h5></td>
						<td colspan="2"><input class="form-control" type="text" id="userAge" name="userAge" maxLength="20" placeholder="나이를 입력해주세요"></td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>성별</h5></td>
						<td colspan="2">
							<div class="form-group" style="text-align: center; margin: 0 auto;">
								<div class="btn-group" data-toggle="buttons">
									<label class="btn btn-primary active"><%--active로 현재 선택이 되도록 해줌! --%>
										<input type="radio" name="userGender" autocomplete="off" value="남자" checked>남자
									</label>
									<label class="btn btn-primary">
										<input type="radio" name="userGender" autocomplete="off" value="남자">여자
									</label>
								</div>
							</div>
						</td>
					</tr>
					<tr>
						<td style="width: 110px;"><h5>이메일</h5></td>
						<td colspan="2"><input class="form-control" type="email" id="userEmail" name="userEmail" maxLength="30" placeholder="이메일을 입력해주세요"></td>
					</tr>
					<tr>
					   <td style="width: 110px;"><h5>주소</h5></td>
					   <td colspan="2"><input class="form-control" type="address" id="userAddress" name="userAddress" maxLength="30" placeholder="주소를 입력해주세요"></td>
					</tr>
					<script>
function inputPhoneNumber(obj) {



    var number = obj.value.replace(/[^0-9]/g, "");
    var phone = "";



    if(number.length < 4) {
        return number;
    } else if(number.length < 7) {
        phone += number.substr(0, 3);  
        phone += "-";
        phone += number.substr(3);
    } else if(number.length < 11) {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 3);
        phone += "-";
        phone += number.substr(6);
    } else {
        phone += number.substr(0, 3);
        phone += "-";
        phone += number.substr(3, 4);
        phone += "-";
        phone += number.substr(7);
    }  
    obj.value = phone;
}
</script>  
					<tr> 
					    <td style="width: 110px;"><h5>전화번호</h5></td>
					   <td colspan="2"><input class="form-control" type="phone" id="userPhone" name="userPhone" onKeyup="inputPhoneNumber(this);" maxLength="13" placeholder="전화번호를 입력하세요"></td>
					<tr>			
						<td style="text-align: left;" colspan="3"><h5 style="color: red;" id="passwordCheckMessage"></h5><input class="btn btn-primary pull-right" type="submit" value="회원가입"></td>
						 
					</tr>			<%--pull-right으로 오른쪽으로 고정시키게 설정한다.- --%>
					
					<td style="text-align: left;" colspan="3"><h5 style="color: red;" ></h5><input class="btn btn-primary pull-right" onclick="location.href='userLogin.jsp'" type="submit" value="돌아가기"></td>
			        
				</tbody>
			</table>
		</form>
	</div>
	<%
		String messageContent = null;
		if(session.getAttribute("messageContent") != null) {
			messageContent = (String) session.getAttribute("messageContent");  
		}
		String messageType = null;
		if(session.getAttribute("messageContent") != null) {
			messageType = (String) session.getAttribute("messageType");
		}
		if(messageContent != null) {
	%>
	<div class="modal fade" id="messageModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div class="modal-content <% if(messageType.equals("오류 메세지")) out.println("panel-warning"); else out.println("panel-success");%>">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							<%= messageType %>
						</h4>
					</div>
					<div class="modal-body">
						<%= messageContent %>
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	<script>
		$('#messageModal').modal("show");
	</script>
	<%
		session.removeAttribute("messageContent");
		session.removeAttribute("messageType");
		}
	%>
	<div class="modal fade" id="checkModal" tabindex="-1" role="dialog" aria-hidden="true">
		<div class="vertical-alignment-helper">
			<div class="modal-dialog vertical-align-center">
				<div id="checkType" class="modal-content panel-info">
					<div class="modal-header panel-heading">
						<button type="button" class="close" data-dismiss="modal">
							<span aria-hidden="true">&times;</span>
							<span class="sr-only">Close</span>
						</button>
						<h4 class="modal-title">
							확인 메세지
						</h4>
					</div>
					<div class="modal-body" id="checkMessage">
					</div>
					<div class="modal-footer">
						<button type="button" class="btn btn-primary" data-dismiss="modal">확인</button>
					</div>
				</div>
			</div>
		</div>
	</div>
	</body>
<footer class="bg-dark mt-4 p-5 text-center" style="color:#FFFFF;">
   
      <p>           
       상호명 : (주)Sold Out | 대표자명 : 유성재 | 사업자등록번호: 113-55-12030  |  정보보호 책임자 : 이창현<br>
        대표전화 000-0000-3200 | E-mail yuseong12345@naver.com | 통신판매업신고 : 통신판매업신고 제2018-01053<br>
        사업장 주소 : 인천폴리텍<br>
        COPYRIGHT 2018. (주)sold out ALL RIGHTS RESERVED.<br>
       <img src="images/confirm_01.gif" width="200" height="30" alt="매매보호(에스크로)서비스">
       <img src="images/confirm_02.gif" width="200" height="30" alt="매매보호(에스크로)서비스"></p>
   
  <p>&nbsp;</p>
</footer>
<!-- 제이쿼리 자바스크립트 추가하기 -->
<script src="./js/jquery.min.js"></script>  
<!-- pooper 자바스크립트 추가하기 -->
<script src="./js/pooper.js"></script>  
<!-- 부트스트랩 자바스크립트 추가하기 -->
<script src="./js/bootstrap.min.js"></script>  

</html>
</body>
</html>
