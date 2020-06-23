/////bmf-v2_0////

// Set up babel languages
bso_acre_languages = [["en","English"],["gr","Greek"]];
bso_acre_language_blufor = ["en"];
bso_acre_language_opfor = ["gr"];
bso_acre_language_indfor = ["gr","en"];
bso_acre_language_civilian = ["gr"];

// Split radio channels. Sides will start with different radio frequency ranges. Radios can be picked up from bodies/people tho. Independent from Babel
bso_acre_splitChannels = true;

// Don't remove this!
[] call bso_fnc_acreApplyLanguages;

// Set up different spoken languages for individiual units, using their Variable Name.
// If used, it must be called _after_ bso_fnc_acreApplyLanguages.
// You can have multiple of those:
//
// ["translator_1", ["en", "gr"]] call bso_fnc_acreCustomLanguages;
