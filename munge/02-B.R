#Cycle-2 Preprocessing data
combined_step_activity <- rbind(cyber.security.7_step.activity,
                       cyber.security.6_step.activity,
                       cyber.security.5_step.activity,
                       cyber.security.4_step.activity,
                       cyber.security.3_step.activity)

step_activity <- combined_step_activity|>
    distinct(learner_id,.keep_all=TRUE)|>
    select(learner_id,step_number,step, first_visited_at, last_completed_at)|>
    mutate(completion_status=if_else(last_completed_at=="",'not completed','completed'))|>
    group_by(step)
step_activity