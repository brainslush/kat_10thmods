#include "script_component.hpp"
/*
 * Author: Katalam
 * Add vehicle menu for each synchronized object
 *
 * Arguments:
 * 0: Logic <LOGIC>
 *
 * Return Value:
 * None
 *
 * Example:
 * [_logic] call kat_10thMods_faction_generic_fnc_moduleAddVehicleMenu3den;
 *
 * Public: No
 */

params ["_logic"];

if !(isServer) exitWith {};

private _objects = synchronizedObjects _logic;
{
    [_x] remoteExec [QFUNC(addVehicleMenu), 0, true];
} forEach _objects;

deleteVehicle _logic;
