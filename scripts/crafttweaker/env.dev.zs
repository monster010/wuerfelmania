#priority 4100

/*
	Dev environment only stuff
*/

// This should be changed on release.
global isDevelopment as bool = true;

// Enable container output to console
if (isDevelopment) {
	mods.recipestages.Recipes.setPrintContainers(true);
}
