#priority 4000

/*
	Würfelmania Run (preInit) Script

	Functions or Global creations before other scripts are called.
*/

static PACK_NAME as string = "Würfelmania";
static PACK_VERSION as string = "0.0.0"; // Keep below 11 characters

printLogo();

function printLogo() {
	// ==================================
	// Logging
	var packVersionForLogo as string = "v" ~ PACK_VERSION;

	// Logo
	print(packVersionForLogo);
}
