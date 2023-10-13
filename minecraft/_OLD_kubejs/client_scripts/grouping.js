REIEvents.groupEntries(event => {
	event.groupItemsByTag('supplementaries:rei_groups/hanging_signs', 'Hanging Signs', 'supplementaries:hanging_signs') // Group Hanging Signs
	event.groupItemsByTag('supplementaries:rei_groups/sign_posts', 'Sign Posts', 'supplementaries:sign_posts') // Group Sign Posts
    event.groupItemsByTag('pitg:rei_groups/glass_panes', 'Glass Panes', 'pitg:all_glass_panes') // Group Glass Panes
    event.groupItemsByTag('pitg:rei_groups/dual_glass_panes', 'Dual Glass Panes', 'pitg:dual_glass_panes') // Group Dual Glass Panes

	event.groupItems('kubejs:rei_groups/spawn_eggs', 'Spawn Eggs', [ // Group Spawn Eggs
		/spawn_egg/,
		'supplementaries:red_merchant_spawn_egg',
		'create_things_and_misc:hot_air_ballon_spawn_egg',
		'upgrade_aquatic:jellyfish_spawn_egg'
		])

	const useNbt = ['potion', 'enchanted_book', 'splash_potion', 'tipped_arrow', 'lingering_potion'] //Group potions/books/tipped arrows
		useNbt.forEach(id => {
			const item = Item.of(id)
			const { namespace, path } = Utils.id(item.id)
			event.groupSameItem(`kubejs:rei_groups/${namespace}/${path}`, Text.translate(item.descriptionId), item)
		}) 
})