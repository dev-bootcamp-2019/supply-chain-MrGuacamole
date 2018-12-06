pragma solidity ^0.4.13;

import "truffle/Assert.sol";
import "truffle/DeployedAddresses.sol";
import "../contracts/SupplyChain.sol";

contract TestSupplyChain {
 

    function testOwner() public {
        SupplyChain supplyChain = new SupplyChain();
        Assert.equal(supplyChain.owner(), this, "Deployer is different from owner");
    }

    // Test for failing conditions in this contracts
    // test that every modifier is working
     // function testForSale() public{
        // SupplyChain supplyChain = new SupplyChain();
        // supplyChain.addItem("Book", 200);
        // Assert.equal(supplyChain.items(1).State, supplyChain.State.ForSale , "Not for sale");


        // _item = new supplyChain.Item();
        // supplyChain.Item _item = supplyChain.items(0);
        // Assert.equal(supplyChain.items[0].state.ForSale(), supplyChain.items(0).state.ForSale(), "boop bop");
     // }

    // buyItem

    // test for failure if user does not send enough funds
    // function enoughFunds(){
    //     Assert.equal(supplyChainTest.buyItem(0))
    // }
    // test for purchasing an item that is not for Sale
    // function notForSale(){
    //    var _item = supplyChainTest.getMapping(0);

    //     _item.state = supplyChainTest.State.Sold;
    //     Assert.equal(_item.state, supplyChainTest.State.Sold, "Purchase should fail");

    // }

    // shipItem

    // test for calls that are made by not the seller
    // test for trying to ship an item that is not marked Sold

    // receiveItem

    // test calling the function from an address that is not the buyer
    // test calling the function on an item not marked Shipped
    
        // function testNotMarkedShipped(){
        //     SupplyChain supplyChain = new SupplyChain();
        //     supplyChain.addItem("Book", 200);
            
        //     Assert.fail(supplyChain.receiveItem(1));
        // }
     


}
