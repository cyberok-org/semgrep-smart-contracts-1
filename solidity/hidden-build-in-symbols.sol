contract Vuln {
	function gasleft() returns(uint256) { return 5;}
	function F() {
		gasleft();
		keccak256("gg");
	}
}
