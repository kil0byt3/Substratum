import crafttweaker.api.item.IItemStack;
import crafttweaker.api.blocks.MCBlock;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.registries.IRecipeManager;

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

//Dungeon Door

craftingTable.addShaped("dungeon_door", <item:valhelsia_structures:dungeon_door>, [
      [<tag:items:minecraft:planks>, <item:minecraft:air>, <tag:items:minecraft:planks>],
      [<tag:items:minecraft:planks>, <item:minecraft:iron_ingot>, <tag:items:minecraft:planks>],
      [<tag:items:minecraft:stone_bricks>, <item:minecraft:air>, <tag:items:minecraft:stone_bricks>]
]);

//saddle
craftingTable.addShaped("saddle", <item:minecraft:saddle>, [
      [<tag:items:forge:leather>, <tag:items:forge:leather>, <tag:items:forge:leather>],
      [<tag:items:forge:leather>, <tag:items:forge:string>, <tag:items:forge:leather>],
      [<item:minecraft:air>, <item:minecraft:iron_ingot>, <item:minecraft:air>]
]);

//Zombie Flesh to Leather
<recipetype:create:milling>.addRecipe("flesh_to_leather_create", [<item:minecraft:leather>, <item:minecraft:leather> % 25], <item:minecraft:rotten_flesh>);

//iron horse armor
craftingTable.addShaped("iron_horse_armor", <item:minecraft:iron_horse_armor>, [
      [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
      [<item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>, <item:minecraft:iron_ingot>],
      [<item:minecraft:iron_ingot>, <item:minecraft:air>, <item:minecraft:iron_ingot>]
]);

//gold horse armor
craftingTable.addShaped("gold_horse_armor", <item:minecraft:golden_horse_armor>, [
      [<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>],
      [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
      [<item:minecraft:gold_ingot>, <item:minecraft:air>, <item:minecraft:gold_ingot>]
]);

//diamond horse armor
craftingTable.addShaped("diamond_horse_armor", <item:minecraft:diamond_horse_armor>, [
      [<item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>],
      [<item:minecraft:diamond>, <item:minecraft:diamond>, <item:minecraft:diamond>],
      [<item:minecraft:diamond>, <item:minecraft:air>, <item:minecraft:diamond>]
]);