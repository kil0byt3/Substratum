// priority: 0

console.info('RELOADED SUBSTRATUM CLIENT SCRIPTS')

REIEvents.removeCategories(event => {
	console.log(event.getCategoryIds()) //log a list of all category ids to logs/kubejs/client.txt
	event.yeet('minecraft:plugins/tag')
})

/*
REIEvents.information(event => {
	event.addItem('Item', 'Title', ['Line 1', 'Line 2'])
	
})
*/

ItemEvents.tooltip(tooltip => {
	tooltip.add('astikorcarts:supply_cart', ["§6Use a cart!", "To pull a cart yourself, walk to the front and press the DOWN arrow key.",'To use a cart with a horse or other rideable animal, do the same while mounted.', 'WIP'])
})