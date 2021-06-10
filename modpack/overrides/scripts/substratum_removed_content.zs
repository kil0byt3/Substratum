import crafttweaker.api.item.IItemStack;
import crafttweaker.api.blocks.MCBlock;

// Mod hiding
// mods.jei.JEI.hideItem(string modid, crafttweaker.api.recipeFilter exclude)

mods.jei.JEI.hideMod("itemfilters");
craftingTable.removeByModid("itemfilters");
mods.jei.JEI.hideMod("ftbquests");
craftingTable.removeByModid("ftbquests");

// Single Item hiding
val removeRecipes = [
<item:itemfilters:always_true>,
<item:decorative_blocks:stone_pillar>,
<item:valhelsia_structures:brazier>,
<item:valhelsia_structures:soul_brazier>,
<item:druidcraft:crushed_fiery_glass>,
<item:druidcraft:tempered_fiery_glass>,
<item:druidcraft:brightstone>,
<item:druidcraft:blazing_steel>,
<item:druidcraft:heart_of_blaze>,
<item:druidcraft:debug>,
] as IItemStack[];
 
for item in removeRecipes {
mods.jei.JEI.hideItem(item);
craftingTable.removeRecipe(item);
stoneCutter.removeRecipe(item);
furnace.removeRecipe(item);
}