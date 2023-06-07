REIEvents.removeCategories(event => {
	console.log(event.getCategoryIds()) //log a list of all category ids to logs/kubejs/client.txt
	event.yeet('minecraft:plugins/tag')
})


REIEvents.information(event => {
/*
	event.addItem('Item', "Title", ["Line 1", "Line 2"])
*/
	event.addItem('solsweetpotato:lunchbag', "Food Hoarding", ["When you get hungry, just hold down Right-Click to eat from your Lunch Bag!. Someone was nice enough to leave some stale bread in here for you.","When you run out, just hold Shift and Right-Click to open your Lunch Bag and add more snacks.", "You can also upgrade your Lunch Bag to hold more stacks of food."])
	event.addItem('solsweetpotato:food_book', "Eat and be merry!", ["The more diversely you eat, the more positive effects you gain!", "You can use this book to see how well you're eating."])
	event.addItem('minecraft:spyglass', "Immersive Zooming!", ["You can press Z with a spyglass to zoom in. It does not need to be in your hotbar!", "Use the scroll wheel while holding Z to adjust your zoom level."])
})




ItemEvents.tooltip(tooltip => {
/*
	tooltip.add('Item', ["Line1","Line2","Line3"])
*/
	tooltip.add('astikorcarts:supply_cart', ["§6Use a cart!", "To pull a cart yourself, walk to the front and press the DOWN arrow key.","To use a cart with a horse or other rideable animal, do the same while mounted.", "WIP"])
	tooltip.add('quark:pipe', ["§cDisabled. Decorative only, uncraftable."])
	tooltip.add('quark:encased_pipe', ["§cDisabled. Decorative only, uncraftable."])
	tooltip.add('minecraft:spyglass', ["§6Press Z!"])
	tooltip.add('solsweetpotato:lunchbag', ["§6For holding your snacks!"])
	tooltip.add('solsweetpotato:food_book', ["§6For checking your health!"])
	tooltip.add('alexsmobs:animal_dictionary', ["§eA very important book.","A lot of creatures in this world do very special things.","When you have a minute, study this book to find out more about them."])
})