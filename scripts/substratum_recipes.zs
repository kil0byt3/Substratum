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
// craftingTable.removeRecipe(<item:craftabledeeds:empty_deed>);
// craftingTable.addShaped("deed_cheap", <item:craftabledeeds:empty_deed>, [
//       [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>],
//       [<item:minecraft:paper>, <item:minecraft:diamond_block>, <item:minecraft:paper>],
//       [<item:minecraft:paper>, <item:minecraft:paper>, <item:minecraft:paper>]
// ]);
// 
// craftingTable.removeRecipe(<item:craftabledeeds:deed_pedestal>);
// craftingTable.addShaped("deed_pedestal", <item:craftabledeeds:deed_pedestal>, [
//       [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
//       [<item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>, <item:minecraft:gold_ingot>],
//       [<item:minecraft:iron_block>, <item:minecraft:iron_block>, <item:minecraft:iron_block>]
// ]);

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

craftingTable.removeRecipe(<item:supplementaries:rope>);

//New rope recipe
craftingTable.addShaped("supplementeries_rope", <item:supplementaries:rope> * 3, [
      [<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>],
      [<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>],
      [<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>]
]);

craftingTable.removeRecipe(<item:adfinders:mineral_finder>);
craftingTable.removeRecipe(<item:adfinders:metal_finder>);
craftingTable.removeRecipe(<item:adfinders:gem_finder>);

//New mineral finder recipe
craftingTable.addShaped("mineral_finder", <item:adfinders:mineral_finder>, [
      [<item:minecraft:repeater>, <tag:items:forge:glass_panes>, <item:minecraft:repeater>],
      [<item:minecraft:iron_block>, <item:minecraft:compass>, <item:minecraft:iron_block>],
      [<item:minecraft:repeater>, <item:minecraft:iron_block>, <item:minecraft:repeater>]
]);

//New metal finder recipe
craftingTable.addShaped("metal_finder", <item:adfinders:metal_finder>, [
      [<item:minecraft:repeater>, <tag:items:forge:glass_panes>, <item:minecraft:repeater>],
      [<item:minecraft:gold_block>, <item:minecraft:compass>, <item:minecraft:gold_block>],
      [<item:minecraft:repeater>, <item:minecraft:gold_block>, <item:minecraft:repeater>]
]);

//New mineral finder recipe
craftingTable.addShaped("gem_finder", <item:adfinders:gem_finder>, [
      [<item:minecraft:repeater>, <tag:items:forge:glass_panes>, <item:minecraft:repeater>],
      [<item:minecraft:diamond_block>, <item:minecraft:compass>, <item:minecraft:diamond_block>],
      [<item:minecraft:repeater>, <item:minecraft:diamond_block>, <item:minecraft:repeater>]
]);

craftingTable.removeRecipe(<item:paraglider:paraglider>);
//New paraglider recipe
craftingTable.addShaped("paraglider", <item:paraglider:paraglider>, [
      [<item:minecraft:stick>, <item:minecraft:leather>, <item:minecraft:stick>],
      [<item:minecraft:leather>, <item:minecraft:stick>, <item:minecraft:leather>],
      [<item:minecraft:stick>, <item:minecraft:air>, <item:minecraft:stick>]
]);

//Name Tag
craftingTable.addShaped("name_tag", <item:minecraft:name_tag>, [
      [<item:minecraft:air>, <item:minecraft:paper>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:leather>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:experience_bottle>, <item:minecraft:air>]
]);

//Village Bell
craftingTable.addShaped("village_bell", <item:minecraft:bell>, [
      [<item:minecraft:air>, <item:supplementaries:rope>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:golden_helmet>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);
