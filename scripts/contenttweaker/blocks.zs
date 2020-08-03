#loader contenttweaker

/*
	Würfelmania ContentTweaker Blocks Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.contenttweaker.Block;
import mods.contenttweaker.ResourceLocation;
import mods.contenttweaker.VanillaFactory;

function addBedrockProperties(block as Block) as Block {
	block.setBlockHardness(-1);
	block.setBlockResistance(18000000);
	block.setEntitySpawnable(false);
	block.setToolLevel(-1);
	block.setWitherProof(true);
	return block;
}
