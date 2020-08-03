/*
	Würfelmania Harvest Level Modification Script

	This script allows for the modification of an ItemStack's Harvest Level.
*/
import crafttweaker.block.IBlockDefinition;
import crafttweaker.item.IItemStack;

// Set block axe harvest level
static axeLevelPairs as IItemStack[][int] = {

};

function init() {
	for axeLevel, items in axeLevelPairs {
		for item in items {
			var blockDefinition as IBlockDefinition = item.asBlock().definition;
			blockDefinition.setHarvestLevel("axe", axeLevel);
		}
	}
}
