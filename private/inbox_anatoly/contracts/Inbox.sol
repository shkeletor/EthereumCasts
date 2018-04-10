pragma solidity ^0.4.0;
contract Inbox {
    string public message;

    function Inbox(string startMessage) public{
        message = startMessage;
    }

    function setMessage(string newMessage) public{
        message=newMessage;
    }
}
