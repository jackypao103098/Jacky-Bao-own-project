
<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="com.mem.model.*"%>

<%
MemVO memVO = (MemVO) request.getAttribute("MemVO");
%>

<html lang="en">

<head>
<title>�|�����U</title>
<%-- CSS --%>



<%@ include file="/frontend/commonCSS.file"%>
</head>

<body>
	<%-- header --%>
	<%@ include file="/frontend/header.file"%>

	<section class="registration">
		<div class="container">
			<div class="row">
				<div class="col-md-12">
					<div class="registration-box">
						<div class="reg-top">
							<h3>���U</h3>
							<p></p>
						</div>
						<%-- ���~��C --%>
						<c:if test="${not empty errorMsgs}">
							<font style="color: red">�Эץ��H�U���~:</font>
							<ul>
								<c:forEach var="message" items="${errorMsgs}">
									<li style="color: red">${message}</li>
								</c:forEach>
							</ul>
						</c:if>
						<form class="reg-form"
							action="<%=request.getContextPath()%>/mem.do" METHOD="post"
							name="form1" enctype="multipart/form-data">
							<div class="row">
								<div class="col-md-12 email">
									<label>�H�c</label> <input type="text" name="mem_email"
										value="<%=(memVO == null) ? "jackypao103098@gmail.com" : memVO.getMem_email()%>"
										placeholder="Enter Email here">
								</div>
								<div class="col-md-12 password">
									<label>�K�X</label> <input type="password" name="mem_pwd"
										placeholder="Enter your password here"
										value="<%=(memVO == null) ? "vwxyz" : memVO.getMem_pwd()%>">
								</div>
                                	<div class="col-md-12 password">
									<label>�T�{�K�X</label> <input type="password" name="memPsw2"
										placeholder="��J�ۦP�K�X"
										value="<%=(memVO == null) ? "vwxyz" : memVO.getMem_pwd()%>">
								</div>
								<div class="col-md-6 name">
									<label>�m�W</label> <input type="text" name="mem_name"
										placeholder="Enter your name here"
										value="<%=(memVO == null) ? "�\�K��" : memVO.getMem_name()%>">
								</div>
								<div class="col-md-6 sex">
									<label>�m�O</label> <select class="custom-select select-big mb-3"
										name="mem_gender">
										<option>�k</option>
										<option>�k</option>
									</select>
								</div>
								<div class="col-md-12 password">
									<label>�q��</label> <input type="text" name="mem_mobile"
										placeholder="Enter your Phone here"
										value="<%=(memVO == null) ? "0988682536" : memVO.getMem_mobile()%>">
								</div>
							</div>
							<div class="col-md-6 name">
								<label>����</label> <input type="text" name="mem_city"
									placeholder="Enter your name here"
									value="<%=(memVO == null) ? "�s�_��" : memVO.getMem_city()%>">
							</div>
							<!--                  <div class="col-md-12 password"> -->
							<!--                     <label>�[�J�ɶ�</label> -->
							<!--                     <input type="text" name="mem_reg_date" id="f_date1"> -->
							<!--                   </div> -->








							<div class="col-md-6 name">
								<label>�|���Ӥ�</label> <input type="file" name="mem_pic"
									accept="image/*" id="file0" />
							</div>

							<div class="col-md-6 name" id="preview">
								<label>�Ϥ��w��</label>
								<div id="preview">
									<img class="img" id="img0"><span class="text">�w����</span>
								</div>
							</div>

							<div class="col-md-6 name">
								<label>�H�Υd</label> <input type="text" name="mem_card"
									placeholder="Enter your name here"
									value="<%=(memVO == null) ? "5527921393052964" : memVO.getMem_card()%>">
							</div>
							<input type="hidden" name="action" value="insert">
							<div class="col-md-12">
								<button type="submit" name="button">�Ыرb��</button>
							</div>
							<div class="login-btm text-center">
								<p>
									�w���b�� ?<a
										href="<%=request.getContextPath()%>/frontend/signin/login.jsp">�n�J</a>
								</p>
							</div>
					</div>
					</form>
				</div>
			</div>
		</div>
		</div>
		</div>
	</section>

	<!-- =======================
	footer  -->
	<%-- footer --%>
	<%@ include file="/frontend/footer.file"%>

	<%-- commonJS --%>
	<%@ include file="/frontend/commonJS.file"%>
	<!-- =======================
	footer  -->

	<!-- Optional JavaScript -->
	<!-- jQuery first, then Popper.js, then Bootstrap JS -->
	<script src="js/jquery.min.js" type="text/javascript"></script>
	<script src="js/popper.min.js" type="text/javascript"></script>
	<script src="js/bootstrap.min.js" type="text/javascript"></script>
	<script src="js/functions.js" type="text/javascript"></script>
	<script src="js/owl.carousel.min.js" type="text/javascript"></script>
	<script src="js/slick.js" type="text/javascript"></script>
	<script src="js/swiper.min.js" type="text/javascript"></script>
	<script src="js/main.js" type="text/javascript"></script>
	<script src="js/jquery.fancybox.min.js" type="text/javascript"></script>
	<script src="js/bootstrap-datepicker.min.js" type="text/javascript"></script>
	<script src="js/jquery-ui.min.js" type="text/javascript"></script>
</body>
<script>
function addimage() {
	  let img = $("#img0");
	  img.attr('src', URL.createObjectURL(this.files[0]));
	  console.log(img);
	};
	$("#file0").change(addimage);
	</script>	
</html>