function bit(selector) {
	var el;
	if (selector.indexOf("<") == 0) {
		// selector 값이  < 로 시작한다면 : ex) <p>
		//태그 를 생성하여 배열에 담는다.
		var targetName = selector.substr(1, selector.length -2) 
		el = [document.createElement(targetName)]

	} else {
		// DOM API를 통해 찾은 순수한 태그 목록
		el = document.querySelectorAll(selector);
	};

	// 태그 목록에  도우미 함수 추가.
	el.click = function(listener) {
		for (var i=0; i< this.length; i++) {
			if (this[i].addEventListener) { //boolean 타입은 아니지만 el의 i번째 값이 addEventListener라면 (undefined이 아니라면) 
				this[i].addEventListener('click', listener);
			} else { // IE8 이하라면 
				this[i].attachEvent('onclick', listener);
			}
		}
	};
	// form 항복에 값을 설정하는 함수 추가 => getter/setter 겸용!
	el.val = function(value) {
		if (value == undefined){ // 파라미터 값이 넘어오지 않는다면 getter로 활용.
			return this[0].value // 목록의 첫 번 째 값만 리턴한다.
		} else {
			for (var i=0; i<this.length; i++) {
				this[i].value = value;
			}
		}
	};
	//innerHTML값을 다루는 함수
	el.html = function (value) {
		if (value == undefined){ // 파라미터 값이 넘어오지 않는다면 getter로 활용.
			return this[0].innerHTML; // 목록의 첫 번 째 값만 리턴한다.
		} else { //setter로 사용됨
			for (var i=0; i<this.length; i++) {
				this[i].innerHTML = value;
			}
		}
	};
	// textContent 값을다루는 함수
	el.text = function (value) {
		if (value == undefined){ // 파라미터 값이 넘어오지 않는다면 getter로 활용.
			var str='';
			for (var i=0; i<this.length; i++) {
				str += this[i].textContent;
			}
			return str;
		} else { //setter로 사용됨
			for (var i=0; i<this.length; i++) {
				this[i].textContent = value;
			}
		}
	};

	//
	el.append = function (children) {
		// 부모 태그 반복
		for (var i=0; i<this.length; i++) {
			// 부모에 자식들을 붙인다.
			for (var x=0; x<children.length; x++) {
				this[i].appendChild(children[x]);
			}
		}
	}
	return el; // 도우미 함수가 태그 목록을 리턴한다.
}

var $ = bit;
