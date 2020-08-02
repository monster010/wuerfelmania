#priority 2600

/*
	SevTech: Ages OreDict Mod Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import crafttweaker.item.IItemStack;

var essenceCrops as IItemStack[] = [
	<mysticalagradditions:dragon_egg_crop:0>,
	<mysticalagradditions:tier6_inferium_crop:0>,
	<mysticalagriculture:aluminum_brass_crop:0>,
	<mysticalagriculture:aluminum_crop:0>,
	<mysticalagriculture:ardite_crop:0>,
	<mysticalagriculture:basalt_crop:0>,
	<mysticalagriculture:black_quartz_crop:0>,
	<mysticalagriculture:bronze_crop:0>,
	<mysticalagriculture:certus_quartz_crop:0>,
	<mysticalagriculture:chicken_crop:0>,
	<mysticalagriculture:coal_crop:0>,
	<mysticalagriculture:cobalt_crop:0>,
	<mysticalagriculture:constantan_crop:0>,
	<mysticalagriculture:copper_crop:0>,
	<mysticalagriculture:cow_crop:0>,
	<mysticalagriculture:creeper_crop:0>,
	<mysticalagriculture:diamond_crop:0>,
	<mysticalagriculture:dirt_crop:0>,
	<mysticalagriculture:dye_crop:0>,
	<mysticalagriculture:electrum_crop:0>,
	<mysticalagriculture:emerald_crop:0>,
	<mysticalagriculture:enderman_crop:0>,
	<mysticalagriculture:experience_crop:0>,
	<mysticalagriculture:fire_crop:0>,
	<mysticalagriculture:fluix_crop:0>,
	<mysticalagriculture:ghast_crop:0>,
	<mysticalagriculture:glowstone_crop:0>,
	<mysticalagriculture:glowstone_ingot_crop:0>,
	<mysticalagriculture:gold_crop:0>,
	<mysticalagriculture:guardian_crop:0>,
	<mysticalagriculture:ice_crop:0>,
	<mysticalagriculture:iron_crop:0>,
	<mysticalagriculture:knightslime_crop:0>,
	<mysticalagriculture:lapis_lazuli_crop:0>,
	<mysticalagriculture:lead_crop:0>,
	<mysticalagriculture:limestone_crop:0>,
	<mysticalagriculture:manyullyn_crop:0>,
	<mysticalagriculture:marble_crop:0>,
	<mysticalagriculture:nature_crop:0>,
	<mysticalagriculture:nether_crop:0>,
	<mysticalagriculture:nether_quartz_crop:0>,
	<mysticalagriculture:nickel_crop:0>,
	<mysticalagriculture:obsidian_crop:0>,
	<mysticalagriculture:osmium_crop:0>,
	<mysticalagriculture:pig_crop:0>,
	<mysticalagriculture:platinum_crop:0>,
	<mysticalagriculture:rabbit_crop:0>,
	<mysticalagriculture:redstone_crop:0>,
	<mysticalagriculture:refined_obsidian_crop:0>,
	<mysticalagriculture:sheep_crop:0>,
	<mysticalagriculture:silicon_crop:0>,
	<mysticalagriculture:silver_crop:0>,
	<mysticalagriculture:skeleton_crop:0>,
	<mysticalagriculture:slime_crop:0>,
	<mysticalagriculture:spider_crop:0>,
	<mysticalagriculture:steel_crop:0>,
	<mysticalagriculture:stone_crop:0>,
	<mysticalagriculture:tier1_inferium_crop:0>,
	<mysticalagriculture:tier2_inferium_crop:0>,
	<mysticalagriculture:tier3_inferium_crop:0>,
	<mysticalagriculture:tier4_inferium_crop:0>,
	<mysticalagriculture:tier5_inferium_crop:0>,
	<mysticalagriculture:tin_crop:0>,
	<mysticalagriculture:water_crop:0>,
	<mysticalagriculture:wood_crop:0>,
	<mysticalagriculture:zombie_crop:0>
];

for crop in essenceCrops {
	<ore:cropEssence>.add(crop);
}
