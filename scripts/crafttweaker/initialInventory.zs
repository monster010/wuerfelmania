/*
    Würfelmania Initial Inventory Script

    This script handles Initial Inventory.
*/
import crafttweaker.enchantments.IEnchantmentDefinition;
import crafttweaker.item.IItemStack;
import mods.initialinventory.InvHandler;

static akashictome as IItemStack = <akashictome:tome>.withTag({"akashictome:data": {industrialforegoing: {id: "industrialforegoing:book_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "industrialforegoing"}, Damage: 0 as short}, tconstruct: {id: "tconstruct:book", Count: 1 as byte, tag: {"akashictome:definedMod": "tconstruct"}, Damage: 0 as short}, draconicevolution: {id: "draconicevolution:info_tablet", Count: 1 as byte, tag: {"akashictome:definedMod": "draconicevolution"}, Damage: 0 as short}, extrautils2: {id: "extrautils2:book", Count: 1 as byte, tag: {"akashictome:definedMod": "extrautils2"}, Damage: 0 as short}, thermalfoundation: {id: "thermalfoundation:tome_lexicon", Count: 1 as byte, tag: {"akashictome:definedMod": "thermalfoundation"}, Damage: 0 as short}, actuallyadditions: {id: "actuallyadditions:item_booklet", Count: 1 as byte, tag: {"akashictome:definedMod": "actuallyadditions"}, Damage: 0 as short}, immersiveengineering: {id: "immersiveengineering:tool", Count: 1 as byte, tag: {"akashictome:definedMod": "immersiveengineering"}, Damage: 3 as short}, bloodmagic: {id: "guideapi:bloodmagic-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "bloodmagic"}, Damage: 0 as short}, woot: {id: "guideapi:woot-guide", Count: 1 as byte, tag: {"akashictome:definedMod": "woot"}, Damage: 0 as short}, valkyrielib: {id: "valkyrielib:guide", Count: 1 as byte, tag: {"akashictome:definedMod": "valkyrielib"}, Damage: 0 as short}, rftools: {id: "rftools:rftools_shape_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools"}, Damage: 0 as short}, rftools1: {id: "rftools:rftools_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools1"}, Damage: 0 as short}, rftools2: {id: "rftoolsdim:rftoolsdim_manual", Count: 1 as byte, tag: {"akashictome:definedMod": "rftools2"}, Damage: 0 as short}}});

static epicsword as IItemStack = <minecraft:stone_sword>.withTag({ench: [{lvl: 1 as short, id: 34 as short}], Unbreakable: 1, HideFlags: 63}).withDisplayName("§dEpic Sword");

function init() {
	InvHandler.addStartingItem(epicsword, 0);
	InvHandler.addStartingItem(<minecraft:bread> * 10, 1);
	InvHandler.addStartingItem(akashictome, 2);
}
