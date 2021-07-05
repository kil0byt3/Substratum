import crafttweaker.api.item.IItemStack;
import crafttweaker.api.blocks.MCBlock;
import crafttweaker.api.tag.MCTag;
import crafttweaker.api.BlastFurnaceManager;
import crafttweaker.api.registries.IRecipeManager;

// Mod hiding
// mods.jei.JEI.hideItem(string modid, crafttweaker.api.recipeFilter exclude)

mods.jei.JEI.hideMod("itemfilters");
craftingTable.removeByModid("itemfilters");
mods.jei.JEI.hideMod("ftbquests");
craftingTable.removeByModid("ftbquests");

// Single Item hiding
val removeRecipesItem = [
<item:decorative_blocks:stone_pillar>,
<item:valhelsia_structures:brazier>,
<item:valhelsia_structures:soul_brazier>,
<item:druidcraft:crushed_fiery_glass>,
<item:druidcraft:tempered_fiery_glass>,
<item:druidcraft:brightstone>,
<item:druidcraft:blazing_steel>,
<item:druidcraft:heart_of_blaze>,
<item:druidcraft:debug>,
<item:druidcraft:nether_fiery_glass_ore>,
<item:druidcraft:brightstone_ore>,
<item:upgrade_aquatic:bedroll>,
<item:druidcraft:travel_pack>,
<item:upgrade_aquatic:white_bedroll>,
<item:upgrade_aquatic:orange_bedroll>,
<item:upgrade_aquatic:magenta_bedroll>,
<item:upgrade_aquatic:light_blue_bedroll>,
<item:upgrade_aquatic:yellow_bedroll>,
<item:upgrade_aquatic:lime_bedroll>,
<item:upgrade_aquatic:pink_bedroll>,
<item:upgrade_aquatic:gray_bedroll>,
<item:upgrade_aquatic:light_gray_bedroll>,
<item:upgrade_aquatic:cyan_bedroll>,
<item:upgrade_aquatic:blue_bedroll>,
<item:upgrade_aquatic:purple_bedroll>,
<item:upgrade_aquatic:brown_bedroll>,
<item:upgrade_aquatic:green_bedroll>,
<item:upgrade_aquatic:black_bedroll>,
<item:upgrade_aquatic:red_bedroll>,
<item:quark:backpack>,
<item:sophisticatedbackpacks:inception_upgrade>,
<item:sophisticatedbackpacks:feeding_upgrade>,
<item:quark:white_crystal_cluster>,
<item:quark:black_crystal_cluster>,
<item:quark:violet_crystal_cluster>,
<item:quark:indigo_crystal_cluster>,
<item:quark:green_crystal_cluster>,
<item:quark:blue_crystal_cluster>,
<item:quark:orange_crystal_cluster>,
<item:quark:yellow_crystal_cluster>,
<item:quark:red_crystal_cluster>,
<item:endergetic:poise_bush>,
<item:endergetic:tall_poise_bush>,
<item:endergetic:tall_poise_bush>,
<item:quark:black_crystal_cluster>,
<item:druidcraft:hellkiln>,
<item:cavesandcliffs:axolotl_bucket>,
<item:cavesandcliffs:powder_snow_bucket>,
<item:cavesandcliffs:glow_ink_sac>,
<item:cavesandcliffs:goat_horn>,
<item:cavesandcliffs:axolotl_spawn_egg>,
<item:cavesandcliffs:goat_spawn_egg>,
<item:cavesandcliffs:glow_squid_spawn_egg>,
<item:cavesandcliffs:spore_blossom>,
<item:druidcraft:hellkiln_igniter>,
<item:cavesandcliffs:budding_amethyst>,
<item:cavesandcliffs:amethyst_cluster>,
<item:cavesandcliffs:medium_amethyst_bud>,
<item:cavesandcliffs:large_amethyst_bud>,
<item:cavesandcliffs:small_amethyst_bud>,
<item:cavesandcliffs:calcite>,
<item:cavesandcliffs:tuff>,
<item:cavesandcliffs:hanging_roots>,
<item:cavesandcliffs:glow_lichen>,
<item:spartanweaponry:dagger_wood>,
<item:spartanweaponry:longsword_wood>,
<item:spartanweaponry:katana_wood>,
<item:spartanweaponry:saber_wood>,
<item:spartanweaponry:rapier_wood>,
<item:spartanweaponry:greatsword_wood>,
<item:spartanweaponry:spear_wood>,
<item:spartanweaponry:halberd_wood>,
<item:spartanweaponry:pike_wood>,
<item:spartanweaponry:lance_wood>,
<item:spartanweaponry:throwing_knife_wood>,
<item:spartanweaponry:tomahawk_wood>,
<item:spartanweaponry:javelin_wood>,
<item:spartanweaponry:battleaxe_wood>,
<item:spartanweaponry:glaive_wood>,
<item:spartanweaponry:quarterstaff_wood>,
<item:minecraft:shield>,
<item:druidcraft:bone_shield>,
<item:druidcraft:chitin_shield>,
<item:druidcraft:moonstone_shield>,
<item:spartanshields:shield_tower_bronze>,
<item:spartanshields:shield_tower_steel>,
<item:spartanshields:shield_tower_tin>,
<item:spartanshields:shield_tower_silver>,
<item:spartanshields:shield_tower_lead>,
<item:spartanshields:shield_tower_nickel>,
<item:spartanshields:shield_tower_invar>,
<item:spartanshields:shield_tower_constantan>,
<item:spartanshields:shield_tower_platinum>,
<item:spartanshields:shield_tower_electrum>,
<item:spartanshields:shield_botania_manasteel>,
<item:spartanshields:shield_botania_terrasteel>,
<item:spartanshields:shield_botania_elementium>,
<item:spartanshields:shield_mekanism_osmium>,
<item:spartanshields:shield_mekanism_lapis_lazuli>,
<item:spartanshields:shield_mekanism_refined_glowstone>,
<item:spartanshields:shield_mekanism_refined_obsidian>,
<item:spartanshields:shield_mekanism_powered_basic>,
<item:spartanshields:shield_mekanism_powered_advanced>,
<item:spartanshields:shield_mekanism_powered_elite>,
<item:spartanshields:shield_mekanism_powered_ultimate>,
<item:spartanshields:shield_basic_invar>,
<item:spartanshields:shield_basic_constantan>,
<item:spartanshields:shield_basic_platinum>,
<item:spartanshields:shield_basic_electrum>,
<item:spartanshields:shield_basic_tin>,
<item:spartanshields:shield_basic_bronze>,
<item:spartanshields:shield_basic_steel>,
<item:spartanshields:shield_basic_silver>,
<item:spartanshields:shield_basic_lead>,
<item:spartanshields:shield_basic_nickel>,
<item:spartanshields:shield_basic_invar>,
<item:spartanweaponry:heavy_crossbow_tin>,
<item:spartanweaponry:heavy_crossbow_bronze>,
<item:spartanweaponry:heavy_crossbow_steel>,
<item:spartanweaponry:heavy_crossbow_silver>,
<item:spartanweaponry:heavy_crossbow_invar>,
<item:spartanweaponry:heavy_crossbow_platinum>,
<item:spartanweaponry:heavy_crossbow_electrum>,
<item:spartanweaponry:heavy_crossbow_nickel>,
<item:spartanweaponry:heavy_crossbow_lead>,
<item:farmersdelight:rope>,
<item:quark:rope>,
<item:druidcraft:rope>,
<item:druidcraft:hemp_seeds>,
<item:druidcraft:hemp>,
<item:cavesandcliffs:copper_ingot>,
<item:create:handheld_worldshaper>,
<item:bno:aluminum_block>,
<item:bno:copper_block>,
<item:bno:lead_block>,
<item:bno:nickel_block>,
<item:bno:silver_block>,
<item:bno:tin_block>,
<item:bno:osmium_block>,
<item:bno:uranium_block>,
<item:bno:netheremerald_ore>,
<item:bno:nethersilver_ore>,
<item:bno:netherlead_ore>,
<item:bno:netheraluminum_ore>,
<item:bno:nethertin_ore>,
<item:bno:netherosmium_ore>,
<item:bno:netheruranium_ore>,
<item:bno:nethernickel_ore>,
<item:bno:aluminum_ingot>,
<item:bno:copper_ingot>,
<item:bno:lead_ingot>,
<item:bno:nickel_ingot>,
<item:bno:silver_ingot>,
<item:bno:tin_ingot>,
<item:bno:osmium_ingot>,
<item:bno:uranium_ingot>,
<item:bno:aluminum_nugget>,
<item:bno:copper_nugget>,
<item:bno:lead_nugget>,
<item:bno:nickel_nugget>,
<item:bno:silver_nugget>,
<item:bno:tin_nugget>,
<item:bno:osmium_nugget>,
<item:paraglider:horned_statue>,
<item:paraglider:spirit_orb>,
<item:paraglider:stamina_vessel>,
<item:paraglider:heart_container>,
<item:paraglider:deku_leaf>,
<item:environmental:rice>,
<item:environmental:rice_sack>,
<item:environmental:fried_egg>,
<item:create:crushed_lead_ore>,
<item:create:crushed_osmium_ore>,
<item:create:crushed_silver_ore>,
<item:create:crushed_nickel_ore>,
<item:create:crushed_aluminum_ore>,
<item:create:crushed_tin_ore>,
<item:create:crushed_uranium_ore>,
<item:waystones:white_sharestone>,
<item:waystones:sandy_waystone>,
<item:cavesandcliffs:infested_deepslate>,
<item:waystones:sharestone>,
<item:waystones:portstone>,
<item:waystones:cyan_sharestone>,
<item:waystones:purple_sharestone>,
<item:waystones:blue_sharestone>,
<item:waystones:brown_sharestone>,
<item:waystones:green_sharestone>,
<item:waystones:red_sharestone>,
<item:waystones:black_sharestone>,
<item:waystones:white_sharestone>,
<item:waystones:orange_sharestone>,
<item:waystones:magenta_sharestone>,
<item:waystones:light_blue_sharestone>,
<item:waystones:yellow_sharestone>,
<item:waystones:lime_sharestone>,
<item:waystones:pink_sharestone>,
<item:waystones:gray_sharestone>,
<item:waystones:sandy_waystone>,
<item:waystones:mossy_waystone>,
<item:waystones:light_gray_sharestone>,
<item:quark:jasper_bricks>,
<item:quark:limestone_bricks>,
<item:quark:slate_bricks>,
<item:quark:limestone_stairs>,
<item:quark:polished_limestone_stairs>,
<item:quark:limestone_bricks_stairs>,
<item:quark:limestone>,
<item:quark:polished_limestone>,
<item:quark:limestone_slab>,
<item:quark:limestone_wall>,
<item:quark:polished_limestone_slab>,
<item:quark:limestone_bricks_slab>,
<item:quark:limestone_bricks_wall>,
<item:quark:chiseled_limestone_bricks>,
<item:quark:limestone_pavement>,
<item:quark:limestone_pillar>,
<item:quark:limestone_speleothem>,
<item:quark:limestone_vertical_slab>,
<item:quark:polished_limestone_vertical_slab>,
<item:quark:limestone_bricks_vertical_slab>,
<item:quark:jasper_stairs>,
<item:quark:polished_jasper_stairs>,
<item:quark:jasper_bricks_stairs>,
<item:quark:jasper>,
<item:quark:polished_jasper>,
<item:quark:jasper_slab>,
<item:quark:jasper_wall>,
<item:quark:polished_jasper_slab>,
<item:quark:jasper_bricks_slab>,
<item:quark:jasper_bricks_wall>,
<item:quark:chiseled_jasper_bricks>,
<item:quark:jasper_pavement>,
<item:quark:jasper_pillar>,
<item:quark:jasper_speleothem>,
<item:quark:jasper_vertical_slab>,
<item:quark:polished_jasper_vertical_slab>,
<item:quark:jasper_bricks_vertical_slab>,
<item:quark:slate_stairs>,
<item:quark:slate_stairs>,
<item:quark:polished_slate_stairs>,
<item:quark:slate_bricks_stairs>,
<item:quark:slate>,
<item:quark:polished_slate>,
<item:quark:slate_slab>,
<item:quark:slate_wall>,
<item:quark:polished_slate_slab>,
<item:quark:slate_bricks_slab>,
<item:quark:slate_bricks_wall>,
<item:quark:chiseled_slate_bricks>,
<item:quark:slate_pavement>,
<item:quark:slate_pillar>,
<item:quark:slate_speleothem>,
<item:quark:slate_vertical_slab>,
<item:quark:polished_slate_vertical_slab>,
<item:quark:slate_bricks_vertical_slab>,
<item:quark:brimstone>,
<item:quark:brimstone_slab>,
<item:quark:brimstone_stairs>,
<item:quark:brimstone_bricks>,
<item:quark:brimstone_bricks_slab>,
<item:quark:brimstone_bricks_stairs>,
<item:quark:brimstone_vertical_slab>,
<item:quark:brimstone_bricks_vertical_slab>,
<item:quark:brimstone_wall>,
<item:quark:brimstone_bricks_wall>,
<item:quark:cobbedstone>,
<item:quark:cobbedstone_slab>,
<item:quark:cobbedstone_stairs>,
<item:quark:cobbedstone_wall>,
<item:quark:cobbedstone_vertical_slab>,
<item:quark:red_crystal_pane>,
<item:quark:orange_crystal_pane>,
<item:quark:yellow_crystal_pane>,
<item:quark:green_crystal_pane>,
<item:quark:blue_crystal_pane>,
<item:quark:indigo_crystal_pane>,
<item:quark:violet_crystal_pane>,
<item:quark:white_crystal_pane>,
<item:quark:black_crystal_pane>,
<item:quark:red_crystal>,
<item:quark:orange_crystal>,
<item:quark:yellow_crystal>,
<item:quark:green_crystal>,
<item:quark:blue_crystal>,
<item:quark:indigo_crystal>,
<item:quark:violet_crystal>,
<item:quark:white_crystal>,
<item:quark:black_crystal>,
<item:waystones:warp_stone>,
<item:waystones:warp_scroll>,
<item:waystones:return_scroll>,
<item:usefulrailroads:teleport_rail>,
<item:easypaxellite:tempered_netherite_paxel>,
<item:easypaxellite:adamantium_paxel>,
<item:easypaxellite:copper_paxel>,
<item:easypaxellite:mythril_paxel>,
<item:easypaxellite:onyx_paxel>,
<item:easypaxellite:tin_paxel>,
<item:easypaxellite:quartz_paxel>,
<item:easypaxellite:prismarine_paxel>,
<item:easypaxellite:paper_paxel>,
<item:easypaxellite:obsidian_paxel>,
<item:easypaxellite:nether_paxel>,
<item:easypaxellite:lapis_paxel>,
<item:easypaxellite:glowstone_paxel>,
<item:easypaxellite:fiery_paxel>,
<item:easypaxellite:ender_paxel>,
<item:easypaxellite:emerald_paxel>,
<item:easypaxellite:coal_paxel>,
<item:easypaxellite:bone_paxel>,
<item:easypaxellite:redstone_paxel>,
<item:easypaxellite:slime_paxel>,
<item:easypaxellite:ender_paxel>,
<item:ftbquests:barrier>,
<item:ftbquests:stage_barrier>,
<item:quark:carrot_crate>,
<item:quark:beetroot_crate>,
<item:quark:potato_crate>,
<item:storagedrawers:creative_storage_upgrade>,
<item:storagedrawers:creative_vending_upgrade>,
<item:create:creative_motor>,
<item:create:creative_fluid_tank>,
<item:create:creative_crate>,
<item:alexsmobs:spawn_egg_frilled_shark>,
<item:alexsmobs:spawn_egg_mimic_octopus>,
<item:alexsmobs:spawn_egg_void_worm>,
<item:createplus:goggle_chainmail_helmet>,
<item:createplus:goggle_diamond_helmet>,
<item:createplus:goggle_golden_helmet>,
<item:createplus:goggle_iron_helmet>,
<item:createplus:goggle_leather_helmet>,
<item:createplus:goggle_turtle_helmet>,
<item:createplus:goggle_netherite_helmet>,
] as IItemStack[];
 
for item in removeRecipesItem {
mods.jei.JEI.hideItem(item);
craftingTable.removeRecipe(item);
stoneCutter.removeRecipe(item);
furnace.removeRecipe(item);
blastFurnace.removeRecipe(item);
}

// Extra Removal

// Spartan arrows, quivers, bolts
//mods.jei.JEI.hideRegex(".*arrow_.*");
//craftingTable.removeByRegex(".*arrow_.*");
//mods.jei.JEI.hideRegex(".*bolt_.*");
//craftingTable.removeByRegex(".*bolt_.*");

// Hide Spartan tipped arrows
mods.jei.JEI.hideRegex(".*_tipped.*");
craftingTable.removeByRegex(".*_tipped.*");
// Hide vanilla tipped arrows
mods.jei.JEI.hideRegex(".*tipped_.*");
craftingTable.removeByRegex(".*tipped_.*");
// Hide Supp tipped spikes
mods.jei.JEI.hideRegex(".*spikes_tipped*");
craftingTable.removeByRegex(".*spikes_tipped.*");

// Misc removal
craftingTable.removeByName("druidcraft:string");
craftingTable.removeRecipe(<item:waystones:waystone>);