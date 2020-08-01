#priority 4000

static PACK_VERSION as string = "0.0.0"; // Keep below 11 characters
printLogo();

function printLogo() {
	// ==================================
	// Logging
	var packVersionForLogo as string = "v" ~ PACK_VERSION;

	// Logo
	print(" ____    __               ____                 __");
	print("/\\  _`\\ /\\ \\             /\\  _`\\              /\\ \\__                            __  __  __  __");
	print("\\ \\,\\L\\_\\ \\ \\/'\\   __  __\\ \\ \\L\\_\\ __      ___\\ \\ ,_\\   ___   _ __   __  __    /\\_\\/\\_\\/\\_\\/\\_\\");
	print(" \\/_\\__ \\\\ \\ , <  /\\ \\/\\ \\\\ \\  _\\/'__`\\   /'___\\ \\ \\/  / __`\\/\\`'__\\/\\ \\/\\ \\   \\/\\ \\/\\ \\/\\ \\/\\ \\");
	print("   /\\ \\L\\ \\ \\ \\\\`\\\\ \\ \\_\\ \\\\ \\ \\/\\ \\L\\.\\_/\\ \\__/\\ \\ \\_/\\ \\L\\ \\ \\ \\/ \\ \\ \\_\\ \\   \\ \\ \\ \\ \\ \\ \\ \\ \\");
	print("   \\ `\\____\\ \\_\\ \\_\\/`____ \\\\ \\_\\ \\__/.\\_\\ \\____\\\\ \\__\\ \\____/\\ \\_\\  \\/`____ \\   \\ \\_\\ \\_\\ \\_\\ \\_\\");
	print("    \\/_____/\\/_/\\/_/`/___/> \\\\/_/\\/__/\\/_/\\/____/ \\/__/\\/___/  \\/_/   `/___/> \\   \\/_/\\/_/\\/_/\\/_/");
	print("                       /\\___/                                            /\\___/");
	print("                       \\/__/                                             \\/__/          " ~ packVersionForLogo);
}