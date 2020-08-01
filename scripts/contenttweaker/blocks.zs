#loader contenttweaker

/*
	SkyFactory 4 ContentTweaker Blocks Script.
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
