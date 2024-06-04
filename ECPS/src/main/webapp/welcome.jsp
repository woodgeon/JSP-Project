<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.Date"%>
<html >
<head>    
   <link rel ="stylesheet" href ="./resources/css/bootstrap.min.css" />
	<title>Welcome</title>
	<style>
	
	</style>
</head>
<body>
<div class="container py-4">
   <%@ include file="menu.jsp"%>    
	<%!String greeting = "전기차 쇼핑몰에 오신 것을 환영합니다";
	
	String tagline = "Welcome to Web Market!";%>	
    <div class="p-5 mb-4 bg-body-tertiary rounded-3"> 
      <div class="container-fluid py-5">
        <h1 class="display-5 fw-bold"><%=greeting%></h1>
        <p class="col-md-8 fs-4">EcarMarket</p>    
        <a>첨단 기술과 혁신적인 디자인이 결합된 전기차를 만나보세요. 최신 모델부터 다양한 옵션까지, 저희 사이트에서 여러분의 미래 자동차를 찾아보세요.</a>
      </div>
    </div>

    <div class="row align-items-md-stretch   text-center">
      <div class="col-md-12">
        <div class="h-100 p-5">
        <a href="./ecars.jsp" class="btn btn-outline-primary"> 차량목록 &raquo;</a>
          <h3><%=tagline%></h3>          
          <%
                response.setIntHeader("Refresh", 1);
				Date day = new java.util.Date();
				String am_pm;
				int hour = day.getHours();
				int minute = day.getMinutes();
				int second = day.getSeconds();
				if (hour / 12 == 0) {
					am_pm = "AM";
				} else {
					am_pm = "PM";
					hour = hour - 12;
				}
				String CT = hour + ":" + minute + ":" + second + " " + am_pm;
				out.println("현재 접속  시각: " + CT + "\n");
			%>  			
        </div>
      </div>   
 	</div> 	
	<%@ include file="footer.jsp"%>   
  </div>
  <script type="text/javascript">
  
  </script>
</body>
</html>
  