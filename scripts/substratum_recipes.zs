import crafttweaker.api.item.IItemStack;
import crafttweaker.api.blocks.MCBlock;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.registries.IRecipeManager;
import crafttweaker.api.BlastFurnaceManager;
import crafttweaker.api.food.MCFood;
import crafttweaker.api.SmithingManager;
import crafttweaker.api.FurnaceManager;

// craftingTable.addShapeless("chop_ingot", <item:minecraft:gold_nugget> * 10, [<item:minecraft:gold_ingot>, <item:minecraft:flint>]);

// craftingTable.addShaped("coal_compression", <item:minecraft:diamond_block>, [
//    [<item:minecraft:coal_block>, <item:minecraft:coal_block>, <item:minecraft:coal_block>],
//    [<item:minecraft:coal_block>, <item:minecraft:diamond>, <item:minecraft:coal_block>],
//    [<item:minecraft:coal_block>, <item:minecraft:coal_block>, <item:minecraft:coal_block>]]);

// <item:quark:white_candle>

// Candles and Tallow

craftingTable.removeByName("quark:building/crafting/candles/candle_basic");

blastFurnace.addRecipe("tallow", <item:quark:tallow>, <item:minecraft:rotten_flesh>, 1.0, 100);

//Remove leather rapped sticks and replaced spartan handles
smithing.removeRecipe(<item:betterendforge:aeternium_shovel>);
smithing.addRecipe("aeternium_shovel", <item:betterendforge:aeternium_shovel>, <item:betterendforge:aeternium_shovel_head>, <item:spartanweaponry:handle>);
smithing.removeRecipe(<item:betterendforge:aeternium_sword_handle>);
smithing.addRecipe("aeternium_sword_handle", <item:betterendforge:aeternium_sword_handle>, <item:betterendforge:terminite_ingot>, <item:spartanweaponry:handle>);
smithing.removeRecipe(<item:betterendforge:aeternium_hammer>);
smithing.addRecipe("aeternium_smith_hammer", <item:betterendforge:aeternium_hammer>, <item:betterendforge:aeternium_hammer_head>, <item:spartanweaponry:handle>);
smithing.removeRecipe(<item:betterendforge:aeternium_axe>);
smithing.addRecipe("aeternium_axe", <item:betterendforge:aeternium_axe>, <item:betterendforge:aeternium_axe_head>, <item:spartanweaponry:handle>);
smithing.removeRecipe(<item:betterendforge:aeternium_pickaxe>);
smithing.addRecipe("aeternium_pickaxe", <item:betterendforge:aeternium_pickaxe>, <item:betterendforge:aeternium_pickaxe_head>, <item:spartanweaponry:handle>);
smithing.removeRecipe(<item:betterendforge:aeternium_hoe>);
smithing.addRecipe("aeternium_hoe", <item:betterendforge:aeternium_hoe>, <item:betterendforge:aeternium_hoe_head>, <item:spartanweaponry:handle>);

craftingTable.addShaped("candles_tallow", <item:quark:white_candle>*4, [
      [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:quark:tallow>, <item:minecraft:air>]
]);

craftingTable.addShaped("candles_beeswax", <item:quark:white_candle>*2, [
      [<item:minecraft:air>, <item:minecraft:string>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:honeycomb>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:honeycomb>, <item:minecraft:air>]
]);

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

// Safety Net

craftingTable.removeRecipe(<item:farmersdelight:safety_net>);
craftingTable.addShaped("safety_net", <item:farmersdelight:safety_net>*2, [
      [<item:supplementaries:rope>, <item:supplementaries:rope>],
      [<item:supplementaries:rope>, <item:supplementaries:rope>]
]);

// Elderflower Cordial
craftingTable.removeRecipe(<item:druidcraft:elderflower_cordial>);
craftingTable.addShapeless("elderflower_cordial", <item:druidcraft:elderflower_cordial>, [<item:minecraft:sugar>, <item:minecraft:potion>.withTag({Potion: "minecraft:water" as string}), <item:druidcraft:elderflower>]);
<item:druidcraft:elderflower_cordial>.setMaxStackSize(1);

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

//New stamp recipe
craftingTable.removeRecipe(<item:endermail:stamp>);
craftingTable.addShapeless("endermail_stamp", <item:endermail:stamp>, [<item:minecraft:paper>, <item:minecraft:gold_nugget>]);

// Buff string from flax
craftingTable.removeByName("supplementaries:strings");
craftingTable.addShapeless("flaxtostring", <item:minecraft:string>*3, [<item:supplementaries:flax>]);
// Rope recipe
craftingTable.removeRecipe(<item:supplementaries:rope>);
craftingTable.addShaped("supplementeries_rope", <item:supplementaries:rope> * 3, [
      [<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>],
      [<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>],
      [<item:minecraft:air>, <tag:items:forge:string>, <item:minecraft:air>]
]);

//New lead recipes
craftingTable.removeRecipe(<item:minecraft:lead>);
craftingTable.addShaped("leadwithslime", <item:minecraft:lead>*4, [
      [<item:supplementaries:rope>, <item:supplementaries:rope>, <item:minecraft:air>],
      [<item:supplementaries:rope>, <item:minecraft:slime_ball>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:air>, <item:supplementaries:rope>]
]);
craftingTable.addShaped("leadwithrope", <item:minecraft:lead>, [
      [<item:supplementaries:rope>, <item:supplementaries:rope>, <item:minecraft:air>],
      [<item:supplementaries:rope>, <item:supplementaries:rope>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:air>, <item:supplementaries:rope>]
]);

//New fish oil recipe
craftingTable.addShaped("fish_oil", <item:alexsmobs:fish_oil>, [
      [<item:minecraft:glass_bottle>, <tag:items:forge:raw_fishes>, <tag:items:forge:raw_fishes>],
      [<tag:items:forge:raw_fishes>, <tag:items:forge:raw_fishes>, <item:minecraft:air>],
      [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:air>]
]);

//New amber gem recipe
craftingTable.addShaped("amber_block", <item:betterendforge:amber_gem>, [
      [<item:druidcraft:amber>, <item:druidcraft:amber>],
      [<item:druidcraft:amber>, <item:druidcraft:amber>],
]);

//New ancient debris recipes
<recipetype:create:crushing>.addRecipe("ancient_debris", [<item:minecraft:netherite_scrap>*4], <item:minecraft:ancient_debris>);

