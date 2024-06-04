<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Ecar"%>
<%@ page import="dao.EcarRepository"%>
<html>
<head>
 <link href = "./resources/css/bootstrap.min.css" rel="stylesheet">

<title>차량 목록</title>
</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>    
   
   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold">도서목록</h1>
        <p class="col-md-8 fs-4">EcarList</p>
        <a href="./addEcar.jsp?id="
  		class="btn btn-secondary" role="button">신규 차량 등록 &raquo; </a>      
      </div>
    </div>
    <%
        EcarRepository dao = EcarRepository.getInstance();
        ArrayList<Ecar> listOfEcars = dao.getAllEcars();
    %>   
       
     <div class="row align-items-md-stretch   text-center">     
     <%
        for (int i = 0; i < listOfEcars.size(); i++) {
            Ecar ecar = listOfEcars.get(i);
      %>
        <div class="col-md-4">
            <div class="h-100 p-2">
       		    <img src="./resources/images/<%=ecar.getFileName()%>" style="width : 375; height : 225" />			
				<h5><b><%=ecar.getCarName()%></b></h5>
				<p><%=ecar.getCompany()%>
				<br> <%=ecar.getCarType()%> | <%=ecar.getUnitPrice()%>원
				<p> <%=ecar.getDescription().substring(0,60)%>...
				<a href="./ecar.jsp?id=<%= ecar.getCarName() %>"
  				 class="btn btn-secondary" role="button">상세정보 &raquo; </a>
				<p><%=ecar.getUnitPrice()%>원
			</div>	  
        </div>          
        <%
            }
        %>  
        </div>  
        <%@ include file="footer.jsp"%>   
  </div>
</body>
</html>


