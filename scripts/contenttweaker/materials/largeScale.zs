#loader contenttweaker

/*
	Würfelmania ContentTweaker Large Scale Script.

	This script is intended for large scale registration.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialPartData;

import scripts.contenttweaker.materials.utils.addDefaultMoltenData;
import scripts.contenttweaker.materials.utils.addDefaultOreData;
import scripts.contenttweaker.materials.init.materials;

function init() {
	// ==================================
	// Apply Molten to Materials
	registerDefaultMolten([
		materials.osmium,
		materials.reinforcedObsidian
	]);

}

function registerDefaultMolten(fluidMaterials as Material[]) {
	for i, fluid in fluidMaterials {
		var fluidMaterialsData as MaterialPartData = fluid.registerPart("molten").getData();
		addDefaultMoltenData(fluidMaterialsData);
	}
}

function registerPartNoParams(partName as string, partMaterials as Material[]) {
	for material in partMaterials {
		material.registerPart(partName);
	}
}
