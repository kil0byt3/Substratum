// priority: 0

console.info('RELOADED SUBSTRATUM SERVER SCRIPTS')

ServerEvents.recipes(event => {
	// Change recipes here
})

ServerEvents.tags('item', event => {
	// Get the #forge:cobblestone tag collection and add Diamond Ore to it
	// event.get('forge:cobblestone').add('minecraft:diamond_ore')

	// Get the #forge:cobblestone tag collection and remove Mossy Cobblestone from it
	// event.get('forge:cobblestone').remove('minecraft:mossy_cobblestone')
})

/*
function trainChanges(event) {
    // Train de-gating
    event
        .shapeless("minecraft:obsidian", [
            "minecraft:magma_block",
            "minecraft:water_bucket",
        ])
        .replaceIngredient("minecraft:water_bucket", "minecraft:bucket")
        .id("subs:washing_obsidian_manual_only");

    var track_shape = ["NSN", "NSN", "NSN"];
    [
        "create:zinc_nugget",
        "minecraft:iron_nugget",
    ].forEach((nugget) => {
        event.shaped("create:track", track_shape, {
            N: nugget,
            S: "#create:sleepers",
        });
    });
}
*/