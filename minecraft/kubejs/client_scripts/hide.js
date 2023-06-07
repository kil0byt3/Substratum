// Substratum //
// Hide items from REI here.
REIEvents.hide('item', event => { 
  event.hide('quark:backpack'),
  event.hide('citadel:effect_item')
})