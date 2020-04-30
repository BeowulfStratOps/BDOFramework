/////bmf-v1_8////

// ACRE Default Babel (off), Split Channels
[false, true] call acre_api_fnc_setupMission; // TODO: move this to apply?

bso_acre_languages = [["en","English"],["gr","Greek"]];
bso_acre_language_blufor = ["en"];
bso_acre_language_opfor = ["gr"];
bso_acre_language_indfor = ["gr","en"];
bso_acre_language_civilian = ["gr"];

// Don't remove this!
[] call bso_fnc_acreApplyLanguages;

// If used, it must be called _after_ bso_fnc_acreApplyLanguages
// ["translator_1", ["en", "ru"]] call bso_fnc_acreCustomLanguages;
