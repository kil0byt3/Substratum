
// craftingTable.addShapeless("chop_ingot", <item:minecraft:gold_nugget> * 10, [<item:minecraft:gold_ingot>, <item:minecraft:flint>]);

// craftingTable.addShaped("coal_compression", <item:minecraft:diamond_block>, [
//    [<item:minecraft:coal_block>, <item:minecraft:coal_block>, <item:minecraft:coal_block>],
//    [<item:minecraft:coal_block>, <item:minecraft:diamond>, <item:minecraft:coal_block>],
//    [<item:minecraft:coal_block>, <item:minecraft:coal_block>, <item:minecraft:coal_block>]]);

// <item:quark:white_candle>

// Candles 

craftingTable.removeRecipe(<item:buildersaddition:large_candle>);
craftingTable.removeRecipe(<item:buildersaddition:large_soul_candle>);

craftingTable.addShaped("candles_wax", <item:quark:white_candle>*2, [
      [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:honeycomb>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:honeycomb>, <item:minecraft:air>]
]);

// Swap candles between BA and Quark
craftingTable.addShapeless("candles_swaptoba", <item:buildersaddition:large_candle>, [<item:quark:white_candle>]);
craftingTable.addShapeless("candles_swaptoq", <item:quark:white_candle>, [<item:buildersaddition:large_candle>]);

craftingTable.addShapeless("candles_soulcandle", <item:buildersaddition:large_soul_candle>, [<item:buildersaddition:large_candle>, <item:minecraft:soul_sand>]);

// Deeds
craftingTable.removeRecipe(<item:craftabledeeds:empty_deed>);
craftingTable.addShaped("deed_cheap", <item:craftabledeeds:empty_deed>, [
      [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>],
      [<item:minecraft:paper>, <item:minecraft:diamond_block>, <item:minecraft:paper>],
      [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
]);

craftingTable.removeRecipe(<item:craftabledeeds:deed_pedestal>);
craftingTable.addShaped("deed_pedestal", <item:craftabledeeds:deed_pedestal>, [
      [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
      [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
      [<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]
]);