/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Lives
/// @DnDVersion : 1
/// @DnDHash : 0FAB2BCF
/// @DnDApplyTo : f8c4793a-e3e4-4b68-aca9-fadce20bcaa5
/// @DnDArgument : "x" "200"
/// @DnDArgument : "sprite" "spr_lives"
/// @DnDSaveInfo : "sprite" "5493649e-ca89-40f4-84eb-21db8bec8d96"
with(obj_hero) {
var l0FAB2BCF_0 = sprite_get_width(spr_lives);
var l0FAB2BCF_1 = 0;
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
for(var l0FAB2BCF_2 = __dnd_lives; l0FAB2BCF_2 > 0; --l0FAB2BCF_2) {
	draw_sprite(spr_lives, 0, 200 + l0FAB2BCF_1, 0);
	l0FAB2BCF_1 += l0FAB2BCF_0;
}
}

/// @DnDAction : YoYo Games.Drawing.Draw_Healthbar
/// @DnDVersion : 1
/// @DnDHash : 294CE0F0
/// @DnDArgument : "x1" "10"
/// @DnDArgument : "y1" "7"
/// @DnDArgument : "x2" "100"
/// @DnDArgument : "y2" "23"
/// @DnDArgument : "value" "obj_hero.hp"
/// @DnDArgument : "backcol" "$FFB3B3B3"
/// @DnDArgument : "barcol" "$FF050505"
/// @DnDArgument : "mincol" "$FF6575FF"
/// @DnDArgument : "maxcol" "$FF0000FF"
draw_healthbar(10, 7, 100, 23, obj_hero.hp, $FFB3B3B3 & $FFFFFF, $FF6575FF & $FFFFFF, $FF0000FF & $FFFFFF, 0, (($FFB3B3B3>>24) != 0), (($FF050505>>24) != 0));

/// @DnDAction : YoYo Games.Drawing.Draw_Instance_Score
/// @DnDVersion : 1
/// @DnDHash : 53F9A44C
/// @DnDApplyTo : f8c4793a-e3e4-4b68-aca9-fadce20bcaa5
/// @DnDArgument : "x" "32"
/// @DnDArgument : "y" "32"
/// @DnDArgument : "caption" ""SCORE:""
with(obj_hero) {
if(!variable_instance_exists(id, "__dnd_score")) __dnd_score = 0;
draw_text(32, 32, string("SCORE:") + string(__dnd_score));
}

/// @DnDAction : YoYo Games.Drawing.Set_Color
/// @DnDVersion : 1
/// @DnDHash : 03A590F4
/// @DnDArgument : "color" "$FF050000"
draw_set_colour($FF050000 & $ffffff);
var l03A590F4_0=($FF050000 >> 24);
draw_set_alpha(l03A590F4_0 / $ff);

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 233F17DB
/// @DnDArgument : "obj" "obj_mon"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "10b98fc4-4842-4f59-90f6-a237e003cd58"
var l233F17DB_0 = false;
l233F17DB_0 = instance_exists(obj_mon);
if(!l233F17DB_0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 0A6838E9
	/// @DnDApplyTo : f8c4793a-e3e4-4b68-aca9-fadce20bcaa5
	/// @DnDParent : 233F17DB
	/// @DnDArgument : "expr" "true"
	/// @DnDArgument : "var" "flag1"
	with(obj_hero) {
	flag1 = true;
	
	}

	/// @DnDAction : YoYo Games.Drawing.Draw_Value
	/// @DnDVersion : 1
	/// @DnDHash : 5463192B
	/// @DnDParent : 233F17DB
	/// @DnDArgument : "x" "216"
	/// @DnDArgument : "y" "230"
	/// @DnDArgument : "caption" ""YOU FAILED ""
	draw_text(216, 230, string("YOU FAILED ") + "");

	/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
	/// @DnDVersion : 1
	/// @DnDHash : 68357A7A
	/// @DnDParent : 233F17DB
	/// @DnDArgument : "key" "vk_enter"
	var l68357A7A_0;
	l68357A7A_0 = keyboard_check_pressed(vk_enter);
	if (l68357A7A_0)
	{
		/// @DnDAction : YoYo Games.Rooms.Restart_Room
		/// @DnDVersion : 1
		/// @DnDHash : 0F481A97
		/// @DnDParent : 68357A7A
		room_restart();
	}
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 7127C901
/// @DnDArgument : "obj" "obj_gem"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "c874c876-655d-47d4-b866-4aa87316d9de"
var l7127C901_0 = false;
l7127C901_0 = instance_exists(obj_gem);
if(!l7127C901_0)
{
	/// @DnDAction : YoYo Games.Instances.Change_Instance
	/// @DnDVersion : 1
	/// @DnDHash : 4FE400FF
	/// @DnDApplyTo : 6f6ce3c9-0c42-49fa-966c-1f263387867b
	/// @DnDParent : 7127C901
	/// @DnDArgument : "objind" "obj_explosion"
	/// @DnDSaveInfo : "objind" "060ced33-4bfd-459a-9208-ada715d6bd91"
	with(obj_locks) instance_change(obj_explosion, true);
}

/// @DnDAction : YoYo Games.Instances.If_Instance_Exists
/// @DnDVersion : 1
/// @DnDHash : 737B8520
/// @DnDArgument : "obj" "obj_exit"
/// @DnDArgument : "not" "1"
/// @DnDSaveInfo : "obj" "7c0e4fb1-0aef-4a25-a5ff-8d53ed52940c"
var l737B8520_0 = false;
l737B8520_0 = instance_exists(obj_exit);
if(!l737B8520_0)
{
	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 483E3F78
	/// @DnDApplyTo : f8c4793a-e3e4-4b68-aca9-fadce20bcaa5
	/// @DnDParent : 737B8520
	/// @DnDArgument : "var" "flag1"
	/// @DnDArgument : "value" "false"
	with(obj_hero) var l483E3F78_0 = flag1 == false;
	if(l483E3F78_0)
	{
		/// @DnDAction : YoYo Games.Drawing.Draw_Value
		/// @DnDVersion : 1
		/// @DnDHash : 28958881
		/// @DnDParent : 483E3F78
		/// @DnDArgument : "x" "216"
		/// @DnDArgument : "y" "230"
		/// @DnDArgument : "caption" ""CONGRATULATIONS YOU WIN ""
		draw_text(216, 230, string("CONGRATULATIONS YOU WIN ") + "");
	
		/// @DnDAction : YoYo Games.Mouse & Keyboard.If_Key_Pressed
		/// @DnDVersion : 1
		/// @DnDHash : 6C21B44E
		/// @DnDParent : 483E3F78
		/// @DnDArgument : "key" "vk_enter"
		var l6C21B44E_0;
		l6C21B44E_0 = keyboard_check_pressed(vk_enter);
		if (l6C21B44E_0)
		{
			/// @DnDAction : YoYo Games.Rooms.If_Last_Room
			/// @DnDVersion : 1
			/// @DnDHash : 3C78C9EE
			/// @DnDParent : 6C21B44E
			/// @DnDArgument : "not" "1"
			if(room != room_last)
			{
				/// @DnDAction : YoYo Games.Rooms.Next_Room
				/// @DnDVersion : 1
				/// @DnDHash : 6F1D48F4
				/// @DnDParent : 3C78C9EE
				room_goto_next();
			}
		
			/// @DnDAction : YoYo Games.Rooms.If_Last_Room
			/// @DnDVersion : 1
			/// @DnDHash : 02F88E9F
			/// @DnDParent : 6C21B44E
			if(room == room_last)
			{
				/// @DnDAction : YoYo Games.Game.End_Game
				/// @DnDVersion : 1
				/// @DnDHash : 41F26FC4
				/// @DnDParent : 02F88E9F
				game_end();
			}
		}
	}
}