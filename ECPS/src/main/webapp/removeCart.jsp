<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="dto.Ecar"%>
<%@ page import="dao.EcarRepository"%>
<%
	String id = request.getParameter("id");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("ecars.jsp");
		return;
	}

	EcarRepository dao = EcarRepository.getInstance();
	
	Ecar ecar = dao.getCarByName(id);
	if (ecar == null) {
		response.sendRedirect("exceptionNoEcarName.jsp");
	}

	ArrayList<Ecar> cartList = (ArrayList<Ecar>) session.getAttribute("cartlist");
	Ecar goodsQnt = new Ecar();
	for (int i = 0; i < cartList.size(); i++) { // 상품리스트 하나씩 출력하기
		goodsQnt = cartList.get(i);
		if (goodsQnt.getCarName().equals(id)) {
			cartList.remove(goodsQnt);
		}
	}

	response.sendRedirect("cart.jsp");
%>
