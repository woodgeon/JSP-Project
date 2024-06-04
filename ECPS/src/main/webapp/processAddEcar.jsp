<%@ page contentType="text/html; charset=utf-8"%>
<%@ page import="dto.Ecar"%>
<%@ page import="dao.EcarRepository"%>
<%@ page import="com.oreilly.servlet.*"%>
<%@ page import="com.oreilly.servlet.multipart.*"%>
<%@ page import="java.util.*"%>
<%
    request.setCharacterEncoding("UTF-8");

    String filename = "";

    String realFolder = "C:\\User\\82109\\Webserver-Programming\\.metadata\\.plugins\\org.eclipse.wst.server.core\\tmp0\\wtpwebapps\\EcarMarket\\resources\\images";
    int maxSize = 5 * 1024 * 1024; //최대 업로드될 파일의 크기5Mb
    String encType = "utf-8"; //인코딩 타입
    

    MultipartRequest multi = new MultipartRequest(request, realFolder, maxSize, encType, new DefaultFileRenamePolicy());

    String carType = multi.getParameter("carType");
	String carName = multi.getParameter("carName");
	String unitPrice = multi.getParameter("unitPrice");
	String company = multi.getParameter("company");
	String releaseDate = multi.getParameter("releaseDate");	
	String description = multi.getParameter("description");
	String unitsInStock = multi.getParameter("unitsInStock");
	String condition = multi.getParameter("condition");

    Enumeration files = multi.getFileNames();
    String fname = (String) files.nextElement();
    String fileName = multi.getFilesystemName(fname);
    
    
    int price;

    if (unitPrice.isEmpty())
        price = 0;
    else
        price = Integer.valueOf(unitPrice);

    long stock;

    if (unitsInStock.isEmpty())
        stock = 0;
    else
        stock = Long.valueOf(unitsInStock); 
    
    
    EcarRepository dao = EcarRepository.getInstance();

    Ecar newEcar = new Ecar();
	newEcar.setCarType(carType);
	newEcar.setCarName(carName);
	newEcar.setUnitPrice(price);
	newEcar.setCompany(company);
	newEcar.setReleaseDate(releaseDate);
	newEcar.setDescription(description);
	newEcar.setUnitsInStock(stock);
	newEcar.setCondition(condition);
	newEcar.setFileName(fileName);

    dao.addEcar(newEcar);

    response.sendRedirect("ecars.jsp");

%>


