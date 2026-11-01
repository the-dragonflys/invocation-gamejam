@abstract
class_name Fighter extends Node2D #Classe abstrata Fighter

# define as propriedades da classe Fighter e seus tipos
var life : int;
var damage : int;
var defense : int;
var stat_change: ChangeStats;
var state: States.Types;

@abstract
func use_item(target: Fighter,item: Item) -> void

@abstract
func attack(target: Fighter) -> void

@abstract
func change_life(target: Fighter) -> void

@abstract
func change_defense(target: Fighter) -> void

@abstract
func change_damage(target: Fighter) -> void

@abstract
func change_state(target: Fighter) -> void
