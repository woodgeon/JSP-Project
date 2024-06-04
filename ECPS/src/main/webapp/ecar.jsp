<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Ecar"%>
<%@ page import="dao.EcarRepository"%>
<%@ page errorPage="exceptionNoEcarName.jsp" %>
<html>
<head>
 <link href = "./resources/css/bootstrap.min.css" rel="stylesheet">

<title>차량 정보</title>
<script type="text/javascript">
	function addToCart() {
		if (confirm("상품을 장바구니에 추가하시겠습니까?")) {
			document.addForm.submit();
		} else {		
			document.addForm.reset();
		}
	}
</script>
</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>    

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">차량 정보</h1>
        <p class="col-md-8 fs-4">EcarInfo</p>      
      </div>
    </div>
    
    <%
        String name = request.getParameter("id");
        EcarRepository dao = EcarRepository.getInstance();
        Ecar ecar = dao.getCarByName(name);
    %>
     <div class="row align-items-md-stretch">       
            <div class="col-md-5">
                <img src="./resources/images/<%=ecar.getFileName()%>" style="width: 70%">
            </div>
            <div class="col-md-12">
				<h3><b><%=ecar.getCarName()%></b></h3>
				<p><%=ecar.getDescription()%>
				<p><b>차량 이름 : </b><span class="badge text-bg-danger"> <%=ecar.getCarType()%></span>							
				<p><b>제조사</b> : <%=ecar.getCompany()%>	
				<p><b>출시일</b> : <%=ecar.getReleaseDate()%>
				<p><b>재고수</b> : <%=ecar.getUnitsInStock()%>
				<h4><%=ecar.getUnitPrice()%>원</h4>
				<p><form name="addForm" action="./addCart.jsp?id=<%= ecar.getCarName() %>" method="post">
				<a href="#" class="btn btn-info" onclick="addToCart()"> 차량주문 &raquo;</a>
				<a href="./cart.jsp" class="btn btn-warning"> 장바구니 &raquo;</a> 
				<a href="./ecars.jsp" class="btn btn-secondary"> 차량목록 &raquo;</a>
				</form>
			</div>
        </div>
    <jsp:include page="footer.jsp" />
</div>
</body>
</html>


