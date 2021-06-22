import crafttweaker.api.item.IItemStack;
import crafttweaker.api.blocks.MCBlock;
import crafttweaker.api.tag.MCTag;

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
<item:spartanweaponry:explosive_charge>,
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
<item:farmersdelight:rope>,
<item:quark:rope>,
<item:druidcraft:rope>,
<item:druidcraft:hemp_seeds>,
<item:druidcraft:hemp>,

] as IItemStack[];
 
for item in removeRecipesItem {
mods.jei.JEI.hideItem(item);
craftingTable.removeRecipe(item);
stoneCutter.removeRecipe(item);
furnace.removeRecipe(item);
}


// Regex Removal

mods.jei.JEI.hideRegex(".*bolt.*");
craftingTable.removeByRegex(".*bolt.*");
mods.jei.JEI.hideRegex(".*heavy_crossbow.*");
craftingTable.removeByRegex(".*heavy_crossbow.*");
mods.jei.JEI.hideRegex(".*arrow_.*");
craftingTable.removeByRegex(".*arrow_.*");
mods.jei.JEI.hideRegex(".*spikes_tipped*");
craftingTable.removeByRegex(".*spikes_tipped.*");