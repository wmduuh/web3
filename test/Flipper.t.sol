// SPDX-License-Identifier: MIT
pragma solidity ^0.8.24;

import {Test} from "forge-std/Test.sol";
import {Flipper} from "../src/Flipper.sol";

contract FlipperTest is Test {
    Flipper public flipper;

    function setUp() public {
        flipper = new Flipper();
    }

    function test_getValue() public {
        flipper.getValue();
        assertEq(flipper.getValue(), true);
    }
    function test_flipValue() public {
        flipper.flip();
        assertEq(flipper.getValue(),false);
    }
    //function testFuzz_SetNumber(uint256 x) public {
    //    counter.setNumber(x);
    //    assertEq(counter.number(), x);}
}
