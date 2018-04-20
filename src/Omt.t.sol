pragma solidity ^0.4.17;

import "ds-test/test.sol";

import "./Omt.sol";

contract OmtTest is DSTest {
    Omt omt;

    function setUp() public {
        omt = new Omt();
    }

    function testFail_basic_sanity() public {
        assertTrue(false);
    }

    function test_basic_sanity() public {
        assertTrue(true);
    }
}
