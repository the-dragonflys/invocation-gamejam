extends Node

class_name StatChange

const x = preload("res://Utilities/FighterStates/Buffs.gd") #x == Buffs
const y = preload("res://Utilities/FighterStates/Debuffs.gd") #y == Debuffs

var buff: x.Buffs;
var debuff: y.Debuffs;
var buff_value: int = 0;
var debuff_value: int = 0;
var heal: int = 0;
var shield_life: int = 0;
