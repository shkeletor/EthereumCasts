pragma solidity ^0.4.23;

contract Lottery {
  address manager;
  address[] players;

  constructor() public {
    manager=msg.sender;
  }

  function enter() public payable {
      require(msg.value > 0.01 ether);

      players.push(msg.sender);
  }

  function random()  public view returns(uint){
     return uint(keccak256(block.difficulty,now,players));
  }

  function pickWinner() public restricted {
      players[random() % players.length].transfer(address(this).balance);
      players = new address[](0);
  }

  modifier restricted() {
      require(msg.sender==manager);

      _;
  }

  function getPlayers() public view returns(address[]) {
      return players;
  }
}
