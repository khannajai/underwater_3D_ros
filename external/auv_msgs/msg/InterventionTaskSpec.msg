# Specification of the intervention task, given as a task type to perform
# on an object identified with a bounding box on an image.

# Type of intervention task to perform.
int32 task_type
int32 TASK_RECOVERY=1
int32 TASK_HOOK_CABLE=2
int32 TASK_PUSH_BUTTON=3
int32 TASK_OPEN_VALVE=4

# Array of strategy specifications, in descending order of preference.
InterventionStrategySpec[] strategy_spec
