// SPDX-License-Identifier: MIT

pragma solidity ^0.8.18;

/*
1. Unit: Testing a single function
2. Integration: Testing multiple functions
3. Forked: Testing on a forked network
4. Staging: Testing on a live network (testnet or mainnet)
*/

import {Test, console} from "forge-std/Test.sol";
import {FundMe} from "../src/FundMe.sol";
import {DeployFundMe} from "../script/DeployFundMe.s.sol";

contract FundMeTest is Test {
    FundMe fundMe;

    function setUp() external {
        // fundMe = new FundMe(0x694AA1769357215DE4FAC081bf1f309aDC325306);
        DeployFundMe deployFundMe = new DeployFundMe();
        fundMe = deployFundMe.run();
    }

    function testMinimumDollarIsFive() public {
        assertEq(fundMe.MINIMUM_USD(), 5e18);
    }

    function testOwnerIsMsgSender() public {
        assertEq(fundMe.i_owner(), msg.sender);
    }

    function testPriceFeedVersionIsAccurate() public {
        uint256 version = fundMe.getVersion();
        assertEq(version, 4);
    }
}

/*
4 types of testing:
1. Unit: Testing a single function
2. Integration: Testing multiple functions
3. Forked: Testing on a forked network
4. Staging: Testing on a live network (testnet or mainnet)
*/
