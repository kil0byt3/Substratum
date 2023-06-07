// Substratum //
// Hide items from REI here.
REIEvents.hide('item', event => { 
  event.hide('quark:backpack'),
  event.hide('buildinggadgets:construction_block'),
  event.hide('citadel:effect_item')
})