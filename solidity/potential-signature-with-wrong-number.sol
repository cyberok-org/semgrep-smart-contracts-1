contract Vuln {
	bytes32 private idHash;
	address owner; 
	constructor() {
		idHash = keccak256(abi.encodePacked(msg.sender));
		owner = msg.sender;
	}
	function transfer(address id,uint8 v,bytes32 r,bytes32 s) public {
		ecrecover(idHash,v,r,s);
		address from = ecrecover(idHash,v,r,s);		
		require(from == id);
		id.transfer(address(this).balance);
	}
}
