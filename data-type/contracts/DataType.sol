pragma solidity ^0.8.17;

contract DataType {
    string private helloMessagePublic = "Hello public world";
    string private helloMessageExternal = "Hello external world";
    string private helloMessageInternal = "Hello internal world";
    string private helloMessagePrivate = "Hello public world";

    uint256 myInt1 = 1; // non negative integer 256
    int256 myInt2 = 1; // integer 256
    uint8 myInt3 = 1; // non negative integer 8
    bool isTrue = true;
    address owner = msg.sender; // sender address
    bytes32 bText = "hello";
    string sText = "hello";

    function getStateVariables()
        public
        view
        returns (
            uint256,
            int256,
            uint8,
            bool,
            address,
            bytes32,
            string memory
        )
    {
        return (myInt1, myInt2, myInt3, isTrue, owner, bText, sText);
    }

    // everyone can call public function. View will access local variable only, will not touch the blockchain
    function getHelloMessage() public view returns (string memory) {
        return helloMessagePublic;
    }

    // only this contract can call private function
    function getHelloMessagePrivate() private view returns (string memory) {
        return helloMessagePrivate;
    }

    function isDiscount(uint256 count) private pure returns (bool) {
        uint256 count0 = 12;
        bool discount = false;
        if (count >= count0) discount = true;
        return discount;

        // Control
        // if else
        // while () {if () break};
        // for (i=0, i<10, i++) {;}
        // do {} while ();
    }

    function someFunc() private pure returns (bool) {
        // check before invoking function
        // require();
        // undo all state changes. Return remaining gas
        // revert();
        // undo all state changes. Use up all gas
        // assert();

        return true;
    }
}
