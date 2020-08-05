/*
	Würfelmania Remove and Hide Script

	This script handles the removal and hiding of IIngredients.
*/
import crafttweaker.item.IIngredient;

import mods.jei.JEI;

static removeAndHideIngredients as IIngredient[] = [
	// Akashic Tome
	<akashictome:tome>,

	// Misc
	<minecraft:tnt>,

	// Tools
	<minecraft:stone_sword>,
	<minecraft:golden_pickaxe>,
	<minecraft:golden_shovel>,
	<minecraft:golden_sword>,
	<minecraft:golden_axe>,
	<minecraft:wooden_shovel>,
	<minecraft:wooden_sword>,
	<minecraft:wooden_axe>,
	<enderio:item_end_steel_pickaxe>,
	<enderio:item_stellar_alloy_pickaxe>,
	<mysticalagriculture:inferium_pickaxe>,
	<mysticalagriculture:prudentium_pickaxe>,
	<mysticalagriculture:intermedium_pickaxe>,
	<mysticalagriculture:superium_pickaxe>,
	<projectred-exploration:ruby_pickaxe>,
	<projectred-exploration:sapphire_pickaxe>,
	<projectred-exploration:peridot_pickaxe>,
	<thaumcraft:void_pick>,
	<thermalfoundation:tool.pickaxe_copper>,
	<thermalfoundation:tool.pickaxe_tin>,
	<thermalfoundation:tool.pickaxe_silver>,
	<thermalfoundation:tool.pickaxe_lead>,
	<thermalfoundation:tool.pickaxe_aluminum>,
	<thermalfoundation:tool.pickaxe_nickel>,
	<thermalfoundation:tool.pickaxe_platinum>,
	<thermalfoundation:tool.pickaxe_steel>,
	<thermalfoundation:tool.pickaxe_electrum>,
	<thermalfoundation:tool.pickaxe_invar>,
	<thermalfoundation:tool.pickaxe_bronze>,
	<thermalfoundation:tool.pickaxe_constantan>,
	<tp:obsidian_pickaxe>,
	<mob_grinding_utils:null_sword>,
	<tp:obsidian_sword>,
	<thermalfoundation:tool.sword_copper>,
	<thermalfoundation:tool.sword_tin>,
	<thermalfoundation:tool.sword_silver>,
	<thermalfoundation:tool.sword_lead>,
	<thermalfoundation:tool.sword_aluminum>,
	<thermalfoundation:tool.sword_nickel>,
	<thermalfoundation:tool.sword_platinum>,
	<thermalfoundation:tool.sword_steel>,
	<thermalfoundation:tool.sword_electrum>,
	<thermalfoundation:tool.sword_invar>,
	<thermalfoundation:tool.sword_bronze>,
	<thermalfoundation:tool.sword_constantan>,
	<thaumcraft:void_sword>,
	<mysticalagriculture:inferium_sword>,
	<mysticalagriculture:prudentium_sword>,
	<mysticalagriculture:intermedium_sword>,
	<mysticalagriculture:superium_sword>,
	<projectred-exploration:ruby_sword>,
	<projectred-exploration:sapphire_sword>,
	<projectred-exploration:peridot_sword>,
	<grimoireofgaia:weapon_prop_sword_gold>,
	<grimoireofgaia:weapon_prop_sword_iron>,
	<grimoireofgaia:weapon_prop_sword_stone>,
	<grimoireofgaia:weapon_prop_sword_wood>,
	<grimoireofgaia:weapon_prop>,
	<mysticalagriculture:inferium_shovel>,
	<mysticalagriculture:prudentium_shovel>,
	<mysticalagriculture:intermedium_shovel>,
	<mysticalagriculture:superium_shovel>,
	<projectred-exploration:ruby_shovel>,
	<projectred-exploration:sapphire_shovel>,
	<projectred-exploration:peridot_shovel>,
	<thaumcraft:void_shovel>,
	<thermalfoundation:tool.shovel_copper>,
	<thermalfoundation:tool.shovel_tin>,
	<thermalfoundation:tool.shovel_silver>,
	<thermalfoundation:tool.shovel_lead>,
	<thermalfoundation:tool.shovel_aluminum>,
	<thermalfoundation:tool.shovel_nickel>,
	<thermalfoundation:tool.shovel_platinum>,
	<thermalfoundation:tool.shovel_steel>,
	<thermalfoundation:tool.shovel_electrum>,
	<thermalfoundation:tool.shovel_invar>,
	<thermalfoundation:tool.shovel_bronze>,
	<thermalfoundation:tool.shovel_constantan>,
	<tp:obsidian_spade>,
	<enderio:item_end_steel_axe>,
	<enderio:item_dark_steel_axe>,
	<enderio:item_stellar_alloy_axe>,
	<mysticalagriculture:inferium_axe>,
	<mysticalagriculture:prudentium_axe>,
	<mysticalagriculture:intermedium_axe>,
	<mysticalagriculture:superium_axe>,
	<mysticalagradditions:inferium_paxel>,
	<mysticalagradditions:prudentium_paxel>,
	<mysticalagradditions:intermedium_paxel>,
	<mysticalagradditions:superium_paxel>,
	<mysticalagradditions:supremium_paxel>,
	<projectred-exploration:ruby_pickaxe>,
	<projectred-exploration:sapphire_pickaxe>,
	<projectred-exploration:peridot_pickaxe>,
	<thaumcraft:void_axe>,
	<thermalfoundation:tool.axe_copper>,
	<thermalfoundation:tool.axe_tin>,
	<thermalfoundation:tool.axe_silver>,
	<thermalfoundation:tool.axe_lead>,
	<thermalfoundation:tool.axe_aluminum>,
	<thermalfoundation:tool.axe_nickel>,
	<thermalfoundation:tool.axe_platinum>,
	<thermalfoundation:tool.axe_steel>,
	<thermalfoundation:tool.axe_electrum>,
	<thermalfoundation:tool.axe_invar>,
	<thermalfoundation:tool.axe_bronze>,
	<thermalfoundation:tool.axe_constantan>,
	<tp:obsidian_axe>,
	<grimoireofgaia:weapon_prop_axe_gold>,
	<grimoireofgaia:weapon_prop_axe_iron>,
	<grimoireofgaia:weapon_prop_axe_stone>,
	<grimoireofgaia:weapon_prop_axe_wood>,
	<tp:diamond_battle>,
	<tp:emerald_battle>,
	<tp:obsidian_battle>,
	<tp:c_axe>,


	// Mekanism
	<mekanism:flamethrower>,
	<mekanism:freerunners>,
	<mekanism:armoredjetpack>,
	<mekanism:jetpack>,
	<mekanism:scubatank>,
	<mekanism:obsidiantnt>,


	// Books
	<minecraft:knowledge_book>,

	// EnderIO
	<enderio:block_decoration1:*>,
	<enderio:block_decoration2:*>,
	<enderio:block_decoration3:*>,
	<enderio:item_fluid_conduit:*>,

	// Tinker's Construct
    <tcomplement:chisel:*>,
    <tcomplement:chisel_head:*>,
];

function init() {
	for ingredient in removeAndHideIngredients {
		JEI.removeAndHide(ingredient);
	}
}
