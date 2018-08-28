pragma solidity ^0.4.2;

contract DappToken{
    
    string public name = "Nandas Token";
    string public symbol = "NANDAS";
    string public standard = "Nandas Token v1.0";
    uint256 public totalSupply;

    event Transfer(
     address indexed _form,
     address indexed _to,
     uint256 _value
    );

    mapping(address => uint256) public balanceOf;
    
    function DappToken (uint256 _initialSupply) public {
       balanceOf[msg.sender]= _initialSupply; 
       totalSupply = _initialSupply;
    
    }
    
  // Transfer
  function transfer(address _to, uint256 _value) public returns (bool success){
       require(balanceOf[msg.sender] >= _value);
    
    balanceOf[msg.sender] -= _value;
    balanceOf[_to] += _value;

    Transfer(msg.sender, _to, _value);
    
    return true;
  }
    }

