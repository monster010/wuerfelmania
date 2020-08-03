/*
	Würfelmania Furnace Recipes Script.

	This script is used to add or remove recipes to the furnace.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.IIngredient;


var outputToRemove as IIngredient[] = [

];

var recipesToAdd as IIngredient[][IItemStack] = {

};


// =========================================
for item in outputToRemove {
	furnace.remove(item);
}

for output, inputs in recipesToAdd {
	for input in inputs {
		furnace.addRecipe(output, input);
	}
}
