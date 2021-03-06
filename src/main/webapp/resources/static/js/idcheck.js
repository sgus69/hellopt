function idCheck() {
    let httpRequest = new XMLHttpRequest();
    let userId = document.getElementById('userId').value;
    
    if(userId == "") {
    	alert("아이디를 입력해주십시오");
    	return;
    }
    
    httpRequest.open('POST', "/hellopt/user/idcheck")
    httpRequest.responseType = 'json';
    httpRequest.setRequestHeader('Content-Type', 'application/json;charset=UTF-8');
    httpRequest.send(JSON.stringify({"userId" : userId}));
    httpRequest.onload = function() {
        let result = httpRequest.response;
        let resultLabel = document.getElementById('idCheckResult');
        if(result == 1) {
            resultLabel.innerHTML = "중복된 아이디 입니다."
        } else {
        	resultLabel.innerHTML = "사용 가능한 아이디 입니다."
        }
    }
}

function formCheck() {
	idCheck();
	
	let result = document.getElementById('idCheckResult').innerHTML;
	if(result == "사용 가능한 아이디 입니다.") {
		let form = document.getElementById('user');
		form.submit();
	} else {
		alert("중복되지 않는 아이디를 사용해 주십시오");
	}
}