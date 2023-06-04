onEvent("recipes", (event) => {
    // Removal Object

    /*
    Examples:
        { output: "create:blaze_cake" },
        { type: "create:milling", output: "minecraft:gunpowder" },
    */

    // Output, Input, Type, Mod

    [
        //Misc
    ].forEach((recipe) => {
        event.remove(recipe);
    });
});
