extends Node

class_name ItemType #Classe ItemType que é responsavel por definir o tipo do item e os tipos de buffs/debuffs/states dele

enum Types { #Enum para os tipos de items
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

#propriedades da classe ItemType
var ty: Types;
var buff: Effects.Buffs;
var debuff: Effects.Debuffs;
var second_debuff: Effects.Debuffs;
var state_set: States.Types;
