/// @DnDAction : YoYo Games.Common.Variable
/// @DnDVersion : 1
/// @DnDHash : 4D968456
/// @DnDArgument : "expr" "-2"
/// @DnDArgument : "expr_relative" "1"
/// @DnDArgument : "var" "hp"
hp += -2;

/// @DnDAction : YoYo Games.Common.If_Variable
/// @DnDVersion : 1
/// @DnDHash : 60ED4323
/// @DnDArgument : "var" "hp"
/// @DnDArgument : "op" "3"
if(hp <= 0)
{
	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 4D5F6E8F
	/// @DnDParent : 60ED4323
	/// @DnDArgument : "expr" "100"
	/// @DnDArgument : "var" "hp"
	hp = 100;

	/// @DnDAction : YoYo Games.Common.Variable
	/// @DnDVersion : 1
	/// @DnDHash : 28F176A3
	/// @DnDApplyTo : f8c4793a-e3e4-4b68-aca9-fadce20bcaa5
	/// @DnDParent : 60ED4323
	/// @DnDArgument : "expr" "-1"
	/// @DnDArgument : "expr_relative" "1"
	/// @DnDArgument : "var" "__dnd_lives"
	with(obj_hero) {
	__dnd_lives += -1;
	
	}

	/// @DnDAction : YoYo Games.Common.If_Variable
	/// @DnDVersion : 1
	/// @DnDHash : 7C4699EB
	/// @DnDParent : 60ED4323
	/// @DnDArgument : "var" "__dnd_lives"
	/// @DnDArgument : "op" "3"
	if(__dnd_lives <= 0)
	{
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 1B587758
		/// @DnDApplyTo : c874c876-655d-47d4-b866-4aa87316d9de
		/// @DnDParent : 7C4699EB
		with(obj_gem) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 349B6912
		/// @DnDApplyTo : 7c0e4fb1-0aef-4a25-a5ff-8d53ed52940c
		/// @DnDParent : 7C4699EB
		with(obj_exit) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 5357F6E7
		/// @DnDApplyTo : 87b6704f-331c-42b3-a8f7-c0418a2e834e
		/// @DnDParent : 7C4699EB
		with(obj_blue_mon) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 647DF19E
		/// @DnDApplyTo : 5b9651ad-89e8-42bc-9054-21939f81e6d5
		/// @DnDParent : 7C4699EB
		with(obj_black_mon) instance_destroy();
	
		/// @DnDAction : YoYo Games.Instances.Destroy_Instance
		/// @DnDVersion : 1
		/// @DnDHash : 39022DA9
		/// @DnDApplyTo : 10b98fc4-4842-4f59-90f6-a237e003cd58
		/// @DnDParent : 7C4699EB
		with(obj_mon) instance_destroy();
	}

	/// @DnDAction : YoYo Games.Movement.Jump_To_Start
	/// @DnDVersion : 1
	/// @DnDHash : 5741B186
	/// @DnDParent : 60ED4323
	x = xstart;
	y = ystart;
}