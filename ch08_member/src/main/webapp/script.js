function idCheck(id) {
	frm.idBtnCheck.value = "idCheck";
	if(id == "") {
		alert("아이디를 입력하세요");
		frm.id.focus();
		return;
	}
	url = "idCheck.jsp?id=" + id;
	window.open(url, "IDCheck", "width=300, height=150");
}