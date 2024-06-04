function CheckAddBook() {

	var carType = document.getElementById("carType");
	var carName = document.getElementById("carName");
	var unitPrice = document.getElementById("unitPrice");
	var unitsInStock = document.getElementById("unitsInStock");
	var description = document.getElementById("description");

	
	// 차량 형태명 체크	
	if (carType.value.length < 2 || carType.value.length > 12) {
		alert("[차량 형태명]\n최소 2자에서 최대 50자까지 입력하세요");
		//name.select();
		carType.focus();
		return false;
	}
	// 차량명 체크	
	if (carName.value.length < 2 || carName.value.length > 12) {
		alert("[도서명]\n최소 2자에서 최대 50자까지 입력하세요");
		//name.select();
		carName.focus();
		return false;
	}
	// 차량 가격 체크
	if (unitPrice.value.length == 0 || isNaN(unitPrice.value)) {
		alert("[가격]\n숫자만 입력하세요");
		//unitPrice.select();
		unitPrice.focus();
		return false;
	}

	if (unitPrice.value < 0) {
		alert("[가격]\n음수를 입력할 수 없습니다");
		//unitPrice.select();
		unitPrice.focus();
		return false;
	} 

	// 재고 수 체크
	if (isNaN(unitsInStock.value)) {
		alert("[재고 수]\n숫자만 입력하세요");
		//unitsInStock.select();
		unitsInStock.focus();
		return false;
	}
	
	if (description.value.length < 80) {
		alert("[상세설명]\n최소 100자이상 입력하세요");
		//description.select();
		description.focus();
		return false;
	}
	
	function check(regExp, e, msg) {

		if (regExp.test(e.value)) {
			return true;
		}
		alert(msg);
		//e.select();
		e.focus();
		return false;
	}

	 document.newBook.submit()
}
