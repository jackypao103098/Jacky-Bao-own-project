<%@ page contentType="text/html; charset=UTF-8" pageEncoding="Big5"%>
<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page import="java.util.*"%>
<%@ page import="com.mem.model.*"%>
<%-- �����m�߱ĥ� EL ���g�k���� --%>

<%
    MemService memSvc = new MemService();
    List<MemVO> list = memSvc.getall();
    pageContext.setAttribute("list",list);
%>


<html>
<head>
<title>�Ҧ��|����� - listAllmem.jsp</title>
<%-- CSS --%>
	<%@ include file="/frontend/commonCSS.file" %>
<style>
  table#table-1 {
	background-color: #CCCCFF;
    border: 2px solid black;
    text-align: center;
  }
  table#table-1 h4 {
    color: red;
    display: block;
    margin-bottom: 1px;
  }
  h4 {
    color: blue;
    display: inline;
  }
</style>

<style>
  table {
	width: 800px;
	background-color: white;
	margin-top: 5px;
	margin-bottom: 5px;
  }
  table, th, td {
    border: 1px solid #CCCCFF;
  }
  th, td {
    padding: 5px;
    text-align: center;
  }
</style>

</head>
<body >
<%-- header --%>
  <%@ include file="/frontend/header.file" %>
<table>
	<tr>
		<th>���u�s��</th>
		<th>���u�m�W</th>
		<th>¾��</th>
		<th>���Τ��</th>
		<th>�~��</th>
		<th>����</th>
		<th>����</th>
		<th>�ק�</th>
		<th>�R��</th>
	</tr>
	<%@ include file="page1.file" %> 
	<c:forEach var="memVO" items="${list}" begin="<%=pageIndex%>" end="<%=pageIndex+rowsPerPage-1%>">
		
		<tr>
			<td>${memVO.mem_no}</td>
				<td>${memVO.mem_acc}</td>
				<td>${memVO.mem_pwd}</td>
				<td>${memVO.acc_status}</td>
				<td>${memVO.mem_name}</td>
				<td>${memVO.mem_email}</td>
				<td>${memVO.mem_mobile}</td>
				<td>${memVO.mem_city}</td>
				<td>${memVO.mem_dist}</td>
				<td>${memVO.mem_addr}</td>
				<td>${memVO.mem_reg_date}</td>
				<td>${memVO.mem_pic}</td>
				<td>${memVO.mem_report_count}</td>
				<td>${memVO.mem_card}</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/mem.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�ק�">
			     <input type="hidden" name="mem_no"  value="${memVO.mem_no}">
			     <input type="hidden" name="action"	value="getOne_For_Update"></FORM>
			</td>
			<td>
			  <FORM METHOD="post" ACTION="<%=request.getContextPath()%>/mem.do" style="margin-bottom: 0px;">
			     <input type="submit" value="�R��">
			     <input type="hidden" name="mem_no"  value="${memVO.mem_no}">
			     <input type="hidden" name="action" value="delete"></FORM>
			</td>
		</tr>
	</c:forEach>
</table>
<%@ include file="page2.file" %>
   
    </div> <!-- �o��� div �|�v�T footer ���i�R -->
  </div> <!-- �o��� div  footer ���i�R -->

  <!-- �D���e end -->

  <%-- footer --%>
	<%@ include file="/frontend/footer.file" %>
  	
  	<%-- commonJS --%>
	<%@ include file="/frontend/commonJS.file" %>
</body>
</html>