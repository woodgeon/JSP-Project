<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="java.util.ArrayList"%>
<%@ page import="java.io.UnsupportedEncodingException"%>
<%@ page import="java.net.URLEncoder"%>
<%@ page import="dto.Ecar"%>
<%@ page import="dao.EcarRepository"%>
<%
	String id = request.getParameter("id");
	String encodedId = URLEncoder.encode(id, "UTF-8");
	if (id == null || id.trim().equals("")) {
		response.sendRedirect("ecars.jsp");
		return;
	}

	EcarRepository dao = EcarRepository.getInstance();

	Ecar product = dao.getCarByName(id);
	if (product == null) {
		response.sendRedirect("exceptionNoBookId.jsp");
	}

	ArrayList<Ecar> goodsList = dao.getAllEcars();
	Ecar goods = new Ecar();
	for (int i = 0; i < goodsList.size(); i++) {
		goods = goodsList.get(i);
		if (goods.getCarName().equals(id)) { 			
			break;
		}
	}
	
	ArrayList<Ecar> list = (ArrayList<Ecar>) session.getAttribute("cartlist");
	if (list == null) { 
		list = new ArrayList<Ecar>();
		session.setAttribute("cartlist", list);
	}

	int cnt = 0;
	Ecar goodsQnt = new Ecar();
	for (int i = 0; i < list.size(); i++) {
		goodsQnt = list.get(i);
		if (goodsQnt.getCarName().equals(id)) {
			cnt++;
			int orderQuantity = goodsQnt.getQuantity() + 1;
			goodsQnt.setQuantity(orderQuantity);
		}
	}

	if (cnt == 0) { 
		goods.setQuantity(1);
		list.add(goods);
	}
	out.print(id);
	response.sendRedirect("ecar.jsp?id=" + encodedId);
%>