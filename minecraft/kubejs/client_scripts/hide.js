// Substratum //
// Hide items from REI here.
REIEvents.hide('item', (event) => { 
var subsClientRemove = [
"buildinggadgets:construction_block", // Crashes REI
"citadel:effect_item"
];

subsClientRemove.forEach(function(item, index) {
  event.hide(item)
});
})