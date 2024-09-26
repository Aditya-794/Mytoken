 string public tokenName = "INVINCIBLE";
string public tokenAbbrv = "INVNCBL";
uint public totSupply = 0; 

mapping(address => uint) public balances;

function mint(uint _value, address _address) public {
    totSupply += _value;
    balances[_address] += _value;
}

function burn(uint _value, address _address) public {
    if (balances[_address] >= _value){
        totSupply -= _value;
        balances[_address] -= _value;
    }
}
