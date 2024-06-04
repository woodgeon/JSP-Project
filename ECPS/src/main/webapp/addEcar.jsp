<%@ page contentType="text/html; charset=utf-8"%>
<%@ taglib prefix="fmt" uri="http://java.sun.com/jsp/jstl/fmt" %>
<html>
<head>
<link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
<script type="text/javascript" src="./resources/js/validation.js"></script>
<title>도서 등록</title>
</head>
<body>
<fmt:setLocale value='<%= request.getParameter("language") %>'/>
<fmt:bundle basename="bundle.message" >
<div class="container py-4">
   <%@ include file="menu.jsp"%>    

   <div class="p-5 mb-4 bg-body-tertiary rounded-3">
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold"><fmt:message key="title" /></h1>
        <p class="col-md-8 fs-4">Ecar Addition</p>
		<a href="./ecars.jsp" class="btn btn-secondary"> 차량목록 &raquo;</a>     
      </div>
    </div>
  
  <div class="row align-items-md-stretch">   
        <div class="text-end"> 
            <a href="?language=ko" >Korean</a> | <a href="?language=en" >English</a>
            <a href = "logout.jsp" class ="btn btn-sm btn-success pull right">logout</a>
        </div>  
        <form name="newEcar" action="./processAddEcar.jsp" method="post" enctype ="multipart/form-data">        
            <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="carType" /></label>
                <div class="col-sm-3">
                    <input type="text" name="carType" id="carType" class="form-control" >
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="carName" /></label>
                <div class="col-sm-3">
                    <input type="text" name="carName" id="carName" class="form-control" >
                </div>
            </div>
                <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="unitPrice" /></label>
                <div class="col-sm-3">
                    <input type="text" name="unitPrice" id="unitPrice" class="form-control" >
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="company" /></label>
                <div class="col-sm-3">
                    <input type="text" name="company" class="form-control">
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="releaseDate" /></label>
                <div class="col-sm-3">
                    <input type="text" name="releaseDate" class="form-control">
                </div>
            </div>
    
            <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="description" /></label>
                <div class="col-sm-5">
                    <textarea name="description" id="description" cols="50" rows="2" 
                        class="form-control" placeholder="100자 이상 적어주세요"></textarea>
                </div>
            </div>
                <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="unitsInStock" /></label>
                <div class="col-sm-3">
                    <input type="text" name="unitsInStock" id = "unitsInStock" class="form-control" >
                </div>
            </div>
            <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="condition" /></label>
                <div class="col-sm-5">
                    <input type="radio" name="condition" value="New " ><fmt:message key="condition_New" />
                    <input type="radio" name="condition" value="Old" > <fmt:message key="condition_Old" />
                </div>              
            </div>      
            
            <div class="mb-3 row">
                <label class="col-sm-2"><fmt:message key="carImage" /></label>
                <div class="col-sm-5">
                    <input type="file" name="carImage" class="form-control">
                </div>
            </div>
            
            <div class="mb-3 row">
                <div class="col-sm-offset-2 col-sm-10 ">
                    <input type="button" class="btn btn-primary" value="<fmt:message key="button" />" onclick="CheckAddEcar()">
                </div>
            </div>
        </form>
    </div>
    <jsp:include page="footer.jsp" />
</div>  
</fmt:bundle>
</body>
</html>


