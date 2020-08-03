#loader contenttweaker
#priority 4000

/*
	Würfelmania ContentTweaker Init Script.

	Note: These scripts are created and for the usage in SevTech: Ages and other
	modpacks curated by DarkPacks. You can use these scripts for reference and for
	learning but not for copying and pasting and claiming as your own.
*/
import mods.contenttweaker.Color;
import mods.contenttweaker.Material;
import mods.contenttweaker.MaterialSystem;

static materials as Material[string] = {
	"ardite": MaterialSystem.getMaterialBuilder().setName("Ardite").setColor(Color.fromHex("d14210")).build(),
	"cobalt": MaterialSystem.getMaterialBuilder().setName("Cobalt").setColor(Color.fromHex("2882d4")).build(),
	"osmium": MaterialSystem.getMaterialBuilder().setName("Osmium").setColor(Color.fromHex("aabbd2")).build(),
	"quartz": MaterialSystem.getMaterialBuilder().setName("Quartz").setColor(Color.fromHex("e6e6e6")).build(),
	"reinforcedObsidian": MaterialSystem.getMaterialBuilder().setName("Reinforced Obsidian").setColor(Color.fromHex("1d1d25")).build()
};
