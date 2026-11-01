extends Node

class_name ItemType

enum Types {
	ATTACK = 0, 
	CONTROL = 1, 
	BUFF = 2, 
	DEBUFF = 3, 
	HEAL = 4,
	ATTACK_WBUFF = 5,
	ATTACK_WSTUN = 6, 
	ATTACK_WDEBUFF = 7, 
	ATTACK_WHEAL = 8,
	CONTROL_WSTATE = 9, 
	BUFF_WSTATE = 10, 
	DOUBLE_DEBUFF = 11,
}

const x = preload("res://Utilities/FighterStates/Buffs.gd") #x == Buffs enum
const y = preload("res://Utilities/FighterStates/Debuffs.gd") #y == Debuffs enum
const z = preload("res://Utilities/FighterStates/States.gd") #z == States enum

var ty: Types;
var buff: x.Buffs;
var debuff: y.Debuffs;
var second_debuff: y.Debuffs;
var state_set: z.States;
