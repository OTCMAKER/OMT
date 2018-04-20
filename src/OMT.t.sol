pragma solidity ^0.4.17;

import "ds-test/test.sol";

import "./OMT.sol";

contract OMTTest is DSTest {
    OMT omt;

    function setUp() {
        omt = new OMT();
    }

    function testFail_basic_sanity() {
        assertTrue(false);
    }

    function test_basic_sanity() {
        assertTrue(true);
    }

    function test_transfer_to_contract_with_fallback() {
        assertTrue(true);
    }

    function test_transfer_to_contract_without_fallback() {
        assertTrue(true);
    }
}
