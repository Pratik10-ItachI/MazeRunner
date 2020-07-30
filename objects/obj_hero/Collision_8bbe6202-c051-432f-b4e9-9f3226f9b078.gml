/// @DnDAction : YoYo Games.Instances.Destroy_Instance
/// @DnDVersion : 1
/// @DnDHash : 361B1B4B
/// @DnDApplyTo : 03322af1-70d8-449d-ad64-02cc861d2461
with(obj_potion) instance_destroy();

/// @DnDAction : YoYo Games.Instance Variables.Set_Lives
/// @DnDVersion : 1
/// @DnDHash : 15235A40
/// @DnDApplyTo : f8c4793a-e3e4-4b68-aca9-fadce20bcaa5
/// @DnDArgument : "lives" "1"
/// @DnDArgument : "lives_relative" "1"
with(obj_hero) {
if(!variable_instance_exists(id, "__dnd_lives")) __dnd_lives = 0;
__dnd_lives += real(1);
}