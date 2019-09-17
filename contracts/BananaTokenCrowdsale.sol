pragma solidity >=0.5.0 <0.6.0;
import './BananaToken.sol';
import 'zeppelin-solidity/contracts/crowdsale/emission/MintedCrowdsale.sol';
import 'zeppelin-solidity/contracts/crowdsale/validation/TimedCrowdsale.sol';

contract BananaTokenCrowdsale is TimedCrowdsale, MintedCrowdsale {
    constructor
        (
            uint256 _openingTime,// ICO開始時間
            uint256 _closingTime,// ICO終了時間
            uint256 _rate,// ETHとのトレードレート
            address payable _wallet,// ETH集めるウォレットのアドレス
            MintableToken _token// 販売中のトークンのアドレス
        )
        public
        Crowdsale(_rate, _wallet, _token)
        TimedCrowdsale(_openingTime, _closingTime){}
}
