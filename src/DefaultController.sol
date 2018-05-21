pragma solidity ^0.4.13;

import "ds-auth/auth.sol";
import "erc20/erc20.sol";
import "./TokenController.sol";
import "./Controlled.sol";

contract DefaultController is DSAuth, TokenController {
    address public tokenAddress;

    // Each Swap Controller has its own token, each token should set their own controller.
    function DefaultController(address _tokenAddress)
    {
        tokenAddress = _tokenAddress;
    }

    function changeController(address _token, address _newController) public auth {
        Controlled(_token).changeController(_newController);
    }

    function proxyPayment(address _owner) payable public returns (bool)
    {
        return false;
    }

    function onTransfer(address _from, address _to, uint _amount) public returns (bool)
    {
        if (_to == tokenAddress)
        {
            return false;
        }
        
        return true;
    }

    function onApprove(address _owner, address _spender, uint _amount) public returns (bool)
    {
        return true;
    }
}