pragma solidity >=0.4.21 <0.6.0;
import "zeppelin-solidity/contracts/token/ERC20/MintableToken.sol";
import "zeppelin-solidity/contracts/token/ERC20/BurnableToken.sol";

contract BananaToken is MintableToken,BurnableToken {
  string public name = "BananaToken";// トークンの名称を設定
  string public symbol = "BNNT";// トークンを単位として表す場合にどのように表記するかを設定
  uint public decimals = 3;// 小数点の桁をどのまで許可するかを設定
  uint256 public INITIAL_SUPPLY = 2000000000 * (10 ** uint256(decimals));// 初期発行量(20億BNNT)
  address public owner;

  constructor() public {
    totalSupply_ = INITIAL_SUPPLY;
    balances[msg.sender] = INITIAL_SUPPLY;
    owner = msg.sender;
  }
}
