pragma solidity ^0.4.13;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SupplyChain.sol";

contract TestSupplyChain {
    SupplyChain supplyChain = new SupplyChain();

    function testOwner() public {
        Assert.equal(supplyChain.owner(), this, "Deployer is different from owner");
    }

    // Test for failing conditions in this contracts
    // test that every modifier is working

    // buyItem

    // test for failure if user does not send enough funds
   
    // test for purchasing an item that is not for Sale
    function testNotForSale(){
        address(supplyChain).call(abi.encodeWithSignature("addItem(uint256)"), "book", 0);
        address(supplyChain).call(abi.encodeWithSignature("buyItem(uint256)"), 0);
        bool result = address(supplyChain).call(abi.encodeWithSignature("buyItem(uint256)"), 0);
        Assert.isFalse(result, "failed to check if for sale");
    }

    // shipItem

    // test for calls that are made by not the seller
    function testNonSeller(){
            address(supplyChain).call(abi.encodeWithSignature("addItem(uint256)"), "Car", 1);
            bool result = address(supplyChain).call(abi.encodeWithSignature("shipItem(uint256)"), 1);
            Assert.isFalse(result, "failed to verify caller");
        }
        
    // test for trying to ship an item that is not marked Sold
    function testIfShipped(){
    
            bool result = address(supplyChain).call(abi.encodeWithSignature("shipItem(uint256)"), 1);
            Assert.isFalse(result, "failed to check if sold");
        }

    // receiveItem
        
    // test calling the function from an address that is not the buyer
    // test calling the function on an item not marked Shipped


}
