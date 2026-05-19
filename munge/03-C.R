#Cycle-2 Preprocessing data

video_stats <- rbind(cyber.security.7_video.stats,
                     cyber.security.6_video.stats,
                     cyber.security.5_video.stats,
                     cyber.security.4_video.stats,
                     cyber.security.3_video.stats)

video_stats <- video_stats|>
    mutate(number_of_people= as.integer(total_views * viewed_onehundred_percent / 100))|>
    select(step_position,title,total_views,viewed_onehundred_percent,number_of_people)|>
    group_by(step_position)|>
    summarise(total_no_of_people=sum(number_of_people))