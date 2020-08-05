/*
    Würfelmania Minecraft Recipe Script

    This script handles the recipes for Minecraft.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

import scripts.crafttweaker.craftingUtils;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:diamond_pickaxe>: [
		[
			[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
			[null, <ore:stickWood>, <ore:gemDiamond>],
			[<ore:stickWood>, null, <ore:gemDiamond>]
		]
	],
	<minecraft:diamond_shovel>: [
		[
			[null, <ore:gemDiamond>, <ore:gemDiamond>],
			[null, <ore:stickWood>, <ore:gemDiamond>],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:diamond_sword>: [
		[
			[null, null, <ore:gemDiamond>],
			[null, <ore:gemDiamond>, null],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:diamond_axe>: [
		[
			[<ore:gemDiamond>, <ore:gemDiamond>, <ore:gemDiamond>],
			[<ore:gemDiamond>, <ore:stickWood>, null],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:iron_pickaxe>: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
			[null, <ore:stickWood>, <ore:ingotIron>],
			[<ore:stickWood>, null, <ore:ingotIron>]
		]
	],
	<minecraft:iron_shovel>: [
		[
			[null, <ore:ingotIron>, <ore:ingotIron>],
			[null, <ore:stickWood>, <ore:ingotIron>],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:iron_sword>: [
		[
			[null, null, <ore:ingotIron>],
			[null, <ore:ingotIron>, null],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:iron_axe>: [
		[
			[<ore:ingotIron>, <ore:ingotIron>, <ore:ingotIron>],
			[<ore:ingotIron>, <ore:stickWood>, null],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:stone_pickaxe>: [
		[
			[<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
			[null, <ore:stickWood>, <extrautils2:compressedcobblestone>],
			[<ore:stickWood>, null, <extrautils2:compressedcobblestone>]
		]
	],
	<minecraft:stone_shovel>: [
		[
			[null, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
			[null, <ore:stickWood>, <extrautils2:compressedcobblestone>],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:stone_axe>: [
		[
			[<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
			[<extrautils2:compressedcobblestone>, <ore:stickWood>, null],
			[<ore:stickWood>, null, null]
		]
	],
	<minecraft:wooden_pickaxe>: [
		[
			[<ore:logWood>, <ore:logWood>, <ore:logWood>],
			[null, <ore:stickWood>, <ore:logWood>],
			[<ore:stickWood>, null, <ore:logWood>]
		]
	],
	<minecraft:crafting_table>: [
		[
			[<ore:logWood>, <ore:logWood>],
			[<ore:logWood>, <ore:logWood>],
		]
	]
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
	<minecraft:furnace>: [
		[
			[<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
			[<extrautils2:compressedcobblestone>, null, <extrautils2:compressedcobblestone>],
			[<extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>, <extrautils2:compressedcobblestone>],
		]
	]
};

static namedMirroredRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Shapeless Recipes
*/
static shapelessRecipes as IIngredient[][][IItemStack] = {

};

static namedShapelessRecipes as IIngredient[][][string][IItemStack] = {
};

/*
    Recipe Removals
*/
static removeRecipes as IItemStack[] = [
	<minecraft:diamond_pickaxe>,
	<minecraft:diamond_shovel>,
	<minecraft:diamond_sword>,
	<minecraft:diamond_axe>,
	<minecraft:iron_pickaxe>,
	<minecraft:iron_shovel>,
	<minecraft:iron_sword>,
	<minecraft:iron_axe>,
	<minecraft:stone_pickaxe>,
	<minecraft:stone_shovel>,
	<minecraft:stone_axe>,
	<minecraft:wooden_pickaxe>,
	<minecraft:crafting_table>,
	<minecraft:furnace>,
];

function init() {
	// Un-named recipes
	recipeUtil.process(shapedRecipes, false);
    recipeUtil.process(mirroredRecipes, true);
    recipeUtil.process(shapelessRecipes);

	// Named recipes
	recipeUtil.processNamed(namedShapedRecipes, false);
    recipeUtil.processNamed(namedMirroredRecipes, true);
    recipeUtil.processNamed(namedShapelessRecipes);

	recipeUtil.removeRecipes(removeRecipes);
}
