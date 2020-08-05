#priority -100

/*
	Würfelmania Run (postInit) Script

	This script is the main runner for the pack. This file should ONLY be
	modified if you know what you are doing. Changing anything in here could cause
	potential script failures and game breaking issues.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.zenstages.ZenStager;

// ==================================
// Initialize Scripts
initStaging();
initEvents();
initItemModifiers();
initRecipes();
initIntegration();

// TODO: Find a home
scripts.crafttweaker.initialInventory.init();

// ==================================
// Build the Stages
ZenStager.buildAll();

function initRecipes() {
	scripts.crafttweaker.recipes.hide.init();
	scripts.crafttweaker.recipes.removeAndHide.init();
	scripts.crafttweaker.recipes.hideCategory.init();

	// Mod Specific Recipes
	scripts.crafttweaker.recipes.mods.actuallyAdditions.init();
	scripts.crafttweaker.recipes.mods.appliedEnergistics2.init();
	scripts.crafttweaker.recipes.mods.betterBuilderswands.init();
	scripts.crafttweaker.recipes.mods.bibliocraft.init();
	scripts.crafttweaker.recipes.mods.chisel.init();
	scripts.crafttweaker.recipes.mods.chiselsAndBits.init();
	scripts.crafttweaker.recipes.mods.darkutils.init();
	scripts.crafttweaker.recipes.mods.enderIO.init();
	scripts.crafttweaker.recipes.mods.enderUtilities.init();
	scripts.crafttweaker.recipes.mods.extraCells.init();
	scripts.crafttweaker.recipes.mods.huntingdim.init();
	scripts.crafttweaker.recipes.mods.immersiveEngineering.init();
	scripts.crafttweaker.recipes.mods.industrialForegoing.init();
	scripts.crafttweaker.recipes.mods.ironBackpacks.init();
	scripts.crafttweaker.recipes.mods.ironChest.init();
	scripts.crafttweaker.recipes.mods.mekanism.init();
	scripts.crafttweaker.recipes.mods.minecraft.init();
	scripts.crafttweaker.recipes.mods.mobGrindingUtils.init();
	scripts.crafttweaker.recipes.mods.mysticalAgriculture.init();
	scripts.crafttweaker.recipes.mods.rftools.init();
	scripts.crafttweaker.recipes.mods.tconstruct.init();
	scripts.crafttweaker.recipes.mods.thermalFoundation.init();
	scripts.crafttweaker.recipes.mods.tinyProgressions.init();
	scripts.crafttweaker.recipes.mods.torchmaster.init();
	scripts.crafttweaker.recipes.mods.valkyrieLib.init();
}

function initStaging() {

}

function initEvents() {
	scripts.crafttweaker.events.playerLoggedIn.init();
}

function initIntegration() {
	scripts.crafttweaker.modIntegrations.actuallyAdditions.init();
	scripts.crafttweaker.modIntegrations.appliedEnergistics2.init();
	scripts.crafttweaker.modIntegrations.enderIO.init();
	scripts.crafttweaker.modIntegrations.industrialForegoing.init();
	scripts.crafttweaker.modIntegrations.mekanism.init();
	scripts.crafttweaker.modIntegrations.tinkers.init();
}

function initItemModifiers() {
	scripts.crafttweaker.itemModifiers.burnTime.init();
	scripts.crafttweaker.itemModifiers.hardness.init();
	scripts.crafttweaker.itemModifiers.harvestLevel.init();
	scripts.crafttweaker.itemModifiers.hide.init();
	scripts.crafttweaker.itemModifiers.rename.init();
	scripts.crafttweaker.itemModifiers.tooltips.init();
}
