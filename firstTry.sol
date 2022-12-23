// SPDX-License-Identifier: MIT

pragma solidity ^0.8.3 ;
 
contract counter{
    uint public number1 = 0;
    int public number2 = 0;
    address public owner = msg.sender;
    bool checkin = true;
    bytes8 public byt = 'numofbyt';

  enum Colors{
   redColor,
    blueColor
}
Colors Color;

function inc() external { // increase the number1 by 1
    number1 += 1; // only positive numbers
}

function dec() external { // decrease the number2 by 1
    number2 -= 1; // for negatives numbers
}

function isOwner(address _add) view external {
  require(_add == owner,"u're not the owner");
}

function valid() external {
    Color = Colors.blueColor;
}

function check() external view {
    if (byt.length >= 7) {
         checkin;
    }
}

}