const assert = require('assert');
const ganach = require('ganache-cli');
const Web3 = require('Web3');
const web3 = new Web3(ganache.provider());


class Car {

  park() {
    return "stopped";
  }
  drive() {
    return "vroom";
  }
}

describe('Car', () => {
  it('can park', () => {
    const car = new Car();
    assert.equal(car.park(), 'stopped');
  });
});
