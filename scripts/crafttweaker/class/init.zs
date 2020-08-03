#priority 3100

/*
	Würfelmania Class Creation Script.

	This script creates and sets the globals for the class we use to interact with mods.
*/
// Mods
global actuallyAdditions as scripts.crafttweaker.class.mods.actuallyAdditions.ActuallyAdditions = scripts.crafttweaker.class.mods.actuallyAdditions.ActuallyAdditions();
global appliedEnergistics as scripts.crafttweaker.class.mods.appliedEnergistics.AppliedEnergistics = scripts.crafttweaker.class.mods.appliedEnergistics.AppliedEnergistics(8);
global immersiveEngineering as scripts.crafttweaker.class.mods.immersiveEngineering.ImmersiveEngineering = scripts.crafttweaker.class.mods.immersiveEngineering.ImmersiveEngineering(6000, 600);
global mekanism as scripts.crafttweaker.class.mods.mekanism.Mekanism = scripts.crafttweaker.class.mods.mekanism.Mekanism();
global tinkers as scripts.crafttweaker.class.mods.tinkers.Tinkers = scripts.crafttweaker.class.mods.tinkers.Tinkers();

// Utils
global recipeUtil as scripts.crafttweaker.class.utils.recipeUtil.RecipeUtil = scripts.crafttweaker.class.utils.recipeUtil.RecipeUtil();
