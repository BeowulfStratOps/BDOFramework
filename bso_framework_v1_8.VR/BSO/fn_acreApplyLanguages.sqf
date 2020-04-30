/////bmf-v1_8////

if (hasInterface) then {
    {
        _x call acre_api_fnc_babelAddLanguageType;
    } foreach bso_acre_languages;

    switch (side player) do {
        case blufor: {
            bso_acre_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
        case opfor: {
            bso_acre_language_opfor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_opfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
        case independent: {
            bso_acre_language_indfor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_indfor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
        case civilian: {
            bso_acre_language_civilian call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_civilian select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
        default {
            bso_acre_language_blufor call acre_api_fnc_babelSetSpokenLanguages;
            [bso_acre_language_blufor select 0] call acre_api_fnc_babelSetSpeakingLanguage;
        };
    };
};
