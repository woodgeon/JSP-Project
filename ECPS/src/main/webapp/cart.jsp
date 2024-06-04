﻿<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Ecar"%>
<%@ page import="dao.EcarRepository"%>
<html>
<head>
<link rel="stylesheet" href="./resources/css/bootstrap.min.css" />
<%
	String cartId = session.getId();
%>
<title>장바구니</title>
</head>
<body>

<div class="container py-4">
   <%@ include file="menu.jsp"%>	

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">장바구니</h1>
        <p class="col-md-8 fs-4">Cart</p>      
      </div>
    </div>
  	
	 <div class="row align-items-md-stretch ">	 	
		<div class="row">
			<table width="100%">
				<tr>
					<td align="left"><a href="./deleteCart.jsp?cartId=<%=cartId%>" class="btn btn-danger">삭제하기</a></td>
					<td align="right"><a href="#" class="btn btn-success">주문하기</a></td>
				</tr>
			</table>
		</div>
		<div style="padding-top: 50px">
			<table class="table table-hover">
				<tr>
					<th>상품</th>
					<th>가격</th>
					<th>수량</th>
					<th>소계</th>
					<th>비고</th>
				</tr>
				<%				
					int sum = 0;
					ArrayList<Ecar> cartList = (ArrayList<Ecar>) session.getAttribute("cartlist");
					if (cartList == null)
						cartList = new ArrayList<Ecar>();

					for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
						Ecar ecar = cartList.get(i);
						int total = ecar.getUnitPrice() * ecar.getQuantity();
						sum = sum + total;
				%>
				<tr>
					<td><%=ecar.getCarType()%> - <%=ecar.getCarName()%></td>
					<td><%=ecar.getUnitPrice()%></td>
					<td><%=ecar.getQuantity()%></td>
					<td><%=total%></td>
					<td><a href="./removeCart.jsp?id=<%=ecar.getCarName()%>" class="badge text-bg-danger">삭제</a></td>
				</tr>
				<%
					}
				%>
				<tr>
					<th></th>
					<th></th>
					<th>총액</th>
					<th><%=sum%></th>
					<th></th>
				</tr>
			</table>
			<a href="./ecars.jsp" class="btn btn-secondary"> &laquo; 쇼핑 계속하기</a>
		</div>
	</div>

	<jsp:include page="footer.jsp" />
</div>
</body>
</html>
