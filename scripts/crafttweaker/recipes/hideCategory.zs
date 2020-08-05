/*
	Würfelmania Hide Categories Script

	This script handles the hiding of categories.
*/

import mods.jei.JEI;

static categories as string[] = [
	
];

function init() {
	for category in categories {
		JEI.hideCategory(category);
	}
}

//hideCategory(category)
#mods.jei.JEI.hideCategory("primitive_crafting");
#mods.jei.JEI.hideCategory("thermaldynamics.covers");
#mods.jei.JEI.hideCategory("pe.worldtransmute");
