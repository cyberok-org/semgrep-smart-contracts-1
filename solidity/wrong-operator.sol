contract Vuln {
	function a(uint a,uint b) {
		a=+b;
		a=-b;
	}
}
