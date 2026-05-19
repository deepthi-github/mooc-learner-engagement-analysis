# Preprocessing script.

#combining all leaving responses data frames into new data frame

combined_leaving_survey <- rbind(cyber.security.7_leaving.survey.responses,
                     cyber.security.6_leaving.survey.responses,
                     cyber.security.5_leaving.survey.responses,
                     cyber.security.4_leaving.survey.responses,
                     cyber.security.3_leaving.survey.responses,
                     cyber.security.2_leaving.survey.responses,
                     cyber.security.1_leaving.survey.responses)

# transforming survey data

survey_data<-combined_leaving_survey|>
    distinct(.keep_all = TRUE)|>
    select(learner_id,last_completed_step)|>
    na.omit()