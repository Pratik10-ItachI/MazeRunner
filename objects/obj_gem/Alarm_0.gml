/// @DnDAction : YoYo Games.Movement.Jump_To_Point
/// @DnDVersion : 1
/// @DnDHash : 348485FE
/// @DnDArgument : "x" "move_random(32,32)"
/// @DnDArgument : "x_relative" "1"
/// @DnDArgument : "y" "move_random(32,32)"
/// @DnDArgument : "y_relative" "1"
x += move_random(32,32);
y += move_random(32,32);

/// @DnDAction : YoYo Games.Instances.Set_Alarm
/// @DnDVersion : 1
/// @DnDHash : 1C1C676B
/// @DnDArgument : "steps" "300"
alarm_set(0, 300);