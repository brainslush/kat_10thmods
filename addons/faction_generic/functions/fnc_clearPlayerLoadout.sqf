#include "script_component.hpp"
/*
 * Author: Katalam
 * Cleares the inventory of the given player with global effect.
 *
 * Arguments:
 * 0: Unit <OBJECT>
 *
 * Return Value:
 * None
 *
 * Example:
 * [player] call kat_10thMods_faction_generic_fnc_clearPlayerLoadout;
 *
 * Public: No
 */
params [["_unit", objNull, [objNull]]];

removeAllAssignedItems _unit;
removeAllContainers _unit;
removeAllWeapons _unit;
removeHeadgear _unit;

if ((goggles _unit) in ["G_Balaclava_blk", "G_Balaclava_combat", "G_Balaclava_lowprofile", "G_Balaclava_oli", "G_Bandanna_aviator", "G_Bandanna_beast", "G_Bandanna_blk", "G_Bandanna_khk", "G_Bandanna_oli", "G_Bandanna_shades", "G_Bandanna_sport", "G_Bandanna_tan", "murshun_cigs_cig0", "murshun_cigs_cig1", "murshun_cigs_cig2", "murshun_cigs_cig3", "murshun_cigs_cig4", "G_Diving", "G_I_Diving", "G_B_Diving", "G_O_Diving", "Mask_M40", "Mask_M40_OD", "Mask_M50", "G_Respirator_blue_F", "G_Respirator_white_F", "G_Respirator_yellow_F", "G_Balaclava_TI_blk_F", "G_Balaclava_TI_G_blk_F", "G_Balaclava_TI_tna_F", "G_Balaclava_TI_G_tna_F", "G_Goggles_VR"]) then {
    removeGoggles _unit;
};
