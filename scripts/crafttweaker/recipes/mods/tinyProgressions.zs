/*
    Würfelmania Tiny Progressions Recipe Script

    This script handles the recipes for Tiny Progressions.

    Note: These scripts are created and for the usage in SevTech: Ages and other
    modpacks curated by DarkPacks. You can use these scripts for reference and for
    learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;

import mods.zenstages.Utils;

/*
    Shaped Recipes
*/
static shapedRecipes as IIngredient[][][][IItemStack] = {
	<tp:emerald_pickaxe>: [
		[
			[<ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>],
			[null, <ore:stickWood>, <ore:gemEmerald>],
			[<ore:stickWood>, null, <ore:gemEmerald>]
		]
	],
	<tp:emerald_spade>: [
		[
			[null, <ore:gemEmerald>, <ore:gemEmerald>],
			[null, <ore:stickWood>, <ore:gemEmerald>],
			[<ore:stickWood>, null, null]
		]
	],
	<tp:emerald_sword>: [
		[
			[null, null, <ore:gemEmerald>],
			[null, <ore:gemEmerald>, null],
			[<ore:stickWood>, null, null]
		]
	],
	<tp:emerald_axe>: [
		[
			[<ore:gemEmerald>, <ore:gemEmerald>, <ore:gemEmerald>],
			[<ore:gemEmerald>, <ore:stickWood>, null],
			[<ore:stickWood>, null, null]
		]
	],
};

static namedShapedRecipes as IIngredient[][][][string][IItemStack] = {
};

/*
    Mirrored Recipes
*/
static mirroredRecipes as IIngredient[][][][IItemStack] = {
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
	<tp:emerald_pickaxe>,
	<tp:emerald_spade>,
	<tp:emerald_sword>,
	<tp:emerald_axe>,
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
