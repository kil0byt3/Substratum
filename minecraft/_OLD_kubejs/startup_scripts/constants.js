// priority: 9002

/**
 * Minecraft's default colors, as used in vanilla item IDs and by most mods.
 * Note: Some mods use abnormal names for colors, such as Absent By Design (which uses 'silver' in some places 
 * instead of 'light_gray'), so this shouldn't be used blindly without verifying that the mod uses standard
 * color names.
 */
const COLORS = [
    'white',
    'orange',
    'magenta',
    'light_blue',
    'yellow',
    'lime',
    'pink',
    'gray',
    'light_gray',
    'cyan',
    'purple',
    'blue',
    'brown',
    'green',
    'red',
    'black'
  ];
   
  /**
   * Block IDs of all natural logs
   * To avoid accidental damage to custom builds, this list should be as close as possible to the
   * full set of naturally generating / growing log & stem blocks, without including any unnatural
   * ones (such as stripped / wood variants).
   */
  const ALL_NATURAL_LOGS = [
    'minecraft:oak_log',
    'minecraft:spruce_log',
    'minecraft:birch_log',
    'minecraft:jungle_log',
    'minecraft:acacea_log',
    'minecraft:mangrove_log',
    'minecraft:dark_oak_log',
    'minecraft:crimson_stem',
    'minecraft:warped_stem',
  ]; 
  
  const ALL_VANILLA_WOOD_TYPES = [
    'acacia',
    'birch',
    'crimson',
    'dark_oak',
    'jungle',
    'mangrove',
    'oak',
    'spruce',
    'warped',
  ];