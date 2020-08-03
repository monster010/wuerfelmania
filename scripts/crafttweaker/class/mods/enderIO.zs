#priority 3400

/*
	Würfelmania Ender IO Script

	This script is a zenClass to allow easy interation with Ender IO.
*/
import crafttweaker.item.IItemStack;
import crafttweaker.item.ILiquidStack;
import crafttweaker.item.IIngredient;

import crafttweaker.enchantments.IEnchantmentDefinition;

import mods.enderio.AlloySmelter;
import mods.enderio.CombustionGen;
import mods.enderio.Enchanter;
import mods.enderio.SagMill;
import mods.enderio.SliceNSplice;
import mods.enderio.SoulBinder;
import mods.enderio.Vat;

zenClass enderIO {

	zenConstructor() {
	}

	// AlloySmelter
	/*
		Remove a AlloySmelter Recipe
	*/
	function removeAlloySmelter(input as IItemStack) {
		AlloySmelter.removeRecipe(input);
	}

	/*
		Add a AlloySmelter Recipe
	*/
	function addAlloySmelter(output as IItemStack, input as IItemStack) {
		AlloySmelter.addRecipe(output, input);
	}

	function addAlloySmelter(output as IItemStack, input as IItemStack, energyCost as int) {
		AlloySmelter.addRecipe(output, input, energyCost);
	}

	function addAlloySmelter(output as IItemStack, input as IItemStack, energyCost as int, xp as float) {
		AlloySmelter.addRecipe(output, input, energyCost, xp);
	}

	// CombustionGen
	/*
		Remove a CombustionGen Fuel
	*/
	function removeCombustionGenFuel(fuel as ILiquidStack) {
		CombustionGen.removeFuel(fuel);
	}

	/*
		Remove a CombustionGen Coolant
	*/
	function removeCombustionGenCoolant(coolant as ILiquidStack) {
		CombustionGen.removeCoolant(coolant);
	}

	/*
		Add a CombustionGen Fuel
	*/
	function addCombustionGenFuel(fuel as ILiquidStack, powerPerCycleRF as int, totalBurnTime as int) {
		CombustionGen.addFuel(fuel, powerPerCycleRF, totalBurnTime);
	}

	/*
		Add a CombustionGen Coolant
	*/
	function addCombustionGenCoolant(coolant as ILiquidStack, coolingPerMB as float) {
		CombustionGen.addCoolant(coolant, coolingPerMB);
	}

	// Enchanter
	/*
		Remove a Enchanter Recipe
	*/
	function removeEnchanter(output as IEnchantmentDefinition) {
		Enchanter.removeRecipe(output);
	}

	/*
		Add a Enchanter Recipe
	*/
	function addEnchanter(output as IEnchantmentDefinition, input as IIngredient, amountPerLevel as int, costMultiplier as double) {
		Enchanter.addRecipe(output, input, amountPerLevel, costMultiplier);
	}

	// SagMill
	/*
		Remove a SagMill Recipe
	*/
	function removeSagMill(input as IItemStack) {
		SagMill.removeRecipe(input);
	}

	/*
		Add a SagMill Recipe
	*/
	function addSagMill(output as IItemStack[], chances as float[], input as IIngredient) {
		SagMill.addRecipe(output, float, input);
	}
	function addSagMill(output as IItemStack[], chances as float[], input as IIngredient, bonusType as String) {
		SagMill.addRecipe(output, float, input, bonusType);
	}
	function addSagMill(output as IItemStack[], chances as float[], input as IIngredient, bonusType as String, energyCost as int) {
		SagMill.addRecipe(output, float, input, bonusType, energyCost);
	}
	function addSagMill(output as IItemStack[], chances as float[], input as IIngredient, bonusType as String, energyCost as int, xp as float[]) {
		SagMill.addRecipe(output, float, input, bonusType, energyCost, xp);
	}

	// SliceNSplice
	/*
		Remove a SliceNSplice Recipe
	*/
	function removeSliceNSplice(output as IItemStack) {
		SliceNSplice.removeRecipe(output);
	}

	/*
		Add a SliceNSplice Recipe
	*/
	function addSliceNSplice(output as IItemStack, input as IIngredient) {
		SliceNSplice.addRecipe(output, input);
	}
	function addSliceNSplice(output as IItemStack, input as IIngredient, energyCost as int) {
		SliceNSplice.addRecipe(output, input, energyCost);
	}
	function addSliceNSplice(output as IItemStack, input as IIngredient, energyCost as int, xp as float) {
		SliceNSplice.addRecipe(output, input, energyCost, xp);
	}

	// SoulBinder
	/*
		Remove a SoulBinder Recipe
	*/
	function removeSoulBinder(output as IItemStack) {
		SoulBinder.removeRecipe(output);
	}

	/*
		Add a SoulBinder Recipe
	*/
	function addSoulBinder(output as IItemStack, input as IIngredient, entities as String[], xp as int) {
		SoulBinder.addRecipe(output, input, entities, xp);
	}
	function addSoulBinder(output as IItemStack, input as IIngredient, entities as String[], xp as int, energyCost as int) {
		SoulBinder.addRecipe(output, input, entities, xp, energyCost);
	}

	// The Vat
	/*
		Remove a Vat Recipe
	*/
	function removeVat(output as ILiquidStack) {
		Vat.removeRecipe(output);
	}

	/*
		Add a Vat Recipe
	*/
	function addVat(output as ILiquidStack, input as ILiquidStack, slot1Solids as IIngredient[], slot1Mults as float[], slot2Solids as IIngredient[], slot2Mults as float[]) {
		Vat.addRecipe(output, input, slot1Solids, slot1Mults, slot2Solids, slot2Mults);
	}
	function addVat(output as ILiquidStack, input as ILiquidStack, slot1Solids as IIngredient[], slot1Mults as float[], slot2Solids as IIngredient[], slot2Mults as float[], energyCost as int) {
		Vat.addRecipe(output, input, slot1Solids, slot1Mults, slot2Solids, slot2Mults, energyCost);
	}
}
