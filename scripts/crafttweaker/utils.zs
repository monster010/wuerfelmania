#priority 4050

/*
	Würfelmania Utils Script

	This script provides utility functions for use in other scripts

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/

import crafttweaker.data.IData;
import crafttweaker.item.IIngredient;
import crafttweaker.item.IItemStack;
import crafttweaker.oredict.IOreDictEntry;
import crafttweaker.recipes.IRecipeFunction;

function capitalize(str as string) as string {
	return str.substring(0, 1).toUpperCase() + str.substring(1);
}

function convertSnakeToCamel(str as string) as string {
	var splitString as string[] = str.split("_");
	var newString as string = splitString[0];

	for i, substring in splitString {
		if (i != 0) {
			newString += capitalize(substring);
		}
	}

	return newString;
}

// Add item to oreDict if it does not exist already
function ensureOreDict(itemOreDict as IOreDictEntry, item as IItemStack) {
	if (!(itemOreDict in item)) {
		itemOreDict.add(item);
	}
}

// Formats a bucket with liquid NBT
function formatBucket(bucket as IItemStack, liquidName as string) as IItemStack {
	// Minecraft unique buckets
	if (bucket.definition.owner == "forge") {
		if (liquidName == "lava") {
			return <minecraft:lava_bucket:0>;
		} else if (liquidName == "milk") {
			return <minecraft:milk_bucket:0>;
		} else if (liquidName == "water") {
			return <minecraft:water_bucket:0>;
		}
	}
}

function formatBucketIngredient(bucket as IItemStack, liquidName as string) as IIngredient {
	return formatBucket(bucket, liquidName) as IIngredient;
}

// Get the fluid amount required to create an item
function getFluidAmount(resourcePartName as string) as int {
	if (resourcePartName == "dust" ||
		resourcePartName == "ingot" ||
		resourcePartName == "plate"
	) {
		return 144;
	} else if (resourcePartName == "rod") {
		return 72;
	} else if (resourcePartName == "block") {
		return 1296;
	} else if (resourcePartName == "gear") {
		return 576;
	} else if (resourcePartName == "nugget") {
		return 16;
	}

	return 0;
}

// Get the Tinkers' Contstruct cast for a given part
function getTinkersCast(resourcePartName as string) as IItemStack {
	if (resourcePartName == "ingot") {
		return <tconstruct:cast_custom:0>;
	} else if (resourcePartName == "gear") {
		return <tconstruct:cast_custom:4>;
	} else if (resourcePartName == "plate") {
		return <tconstruct:cast_custom:3>;
	} else if (resourcePartName == "nugget") {
		return <tconstruct:cast_custom:1>;
	}

	return null;
}

function getResourcePartOreDict(partName as string, resourceName as string) as IOreDictEntry {
	return oreDict.get(partName ~ capitalize(resourceName));
}

/*
	Function used in the recipe creation for Iron BackPacks.
*/
static ironbackpacksRecipeFunc as IRecipeFunction = function(out, ins, cInfo) {
	var currentTag = ins.bag.tag;

	var packInfoData as IData = {
		spec: out.tag.packInfo.spec,
		type: out.tag.packInfo.type
	};

	var mergeData as IData = {
		packInfo: currentTag.packInfo.update(packInfoData)
	};

	var newTag = currentTag.update(mergeData);

	return out.withTag(newTag);
};
