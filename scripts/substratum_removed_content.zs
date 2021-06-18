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
<item:minecraft:crossbow>,

] as IItemStack[];
 
for item in removeRecipesItem {
mods.jei.JEI.hideItem(item);
craftingTable.removeRecipe(item);
stoneCutter.removeRecipe(item);
furnace.removeRecipe(item);
}


// Regex Bolt Removal

mods.jei.JEI.hideRegex(".*bolt.*");
craftingTable.removeByRegex(".*bolt.*");

craftingTable.addShaped("crossbow_bolt", <item:spartanweaponry:bolt> * 4, [
      [<item:minecraft:air>, <item:minecraft:air>, <item:minecraft:iron_ingot>],
      [<item:minecraft:air>, <item:minecraft:iron_nugget>, <item:minecraft:air>],
      [<item:minecraft:feather>, <item:minecraft:air>, <item:minecraft:air>]
]);