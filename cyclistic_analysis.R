# Cyclistic Bike-Share Analysis – Key Insights (2024)
# Author: Heena Rathore
# Date: June 2025

# ------------------------------------------------------
# 📚 Load Libraries
# ------------------------------------------------------
library(tidyverse)
library(readr)

# ------------------------------------------------------
# 📂 Load Cleaned Dataset
# ------------------------------------------------------
bike_data_clean <- read_csv("final_cyclistic_cleaned_2024.csv")

# ------------------------------------------------------
# 🔍 1. Ride Count by User Type
# ------------------------------------------------------
ride_count <- bike_data_clean %>%
  count(member_casual)

write_csv(ride_count, "ride_count_by_user_type.csv")

# ------------------------------------------------------
# 🔍 2. Average Ride Duration by User Type
# ------------------------------------------------------
avg_duration <- bike_data_clean %>%
  group_by(member_casual) %>%
  summarise(avg_duration = mean(ride_duration))

write_csv(avg_duration, "avg_ride_duration_by_user_type.csv")

# ------------------------------------------------------
# 🔍 3. Ride Patterns by Day of Week
# ------------------------------------------------------
daywise_rides <- bike_data_clean %>%
  group_by(day_of_week, member_casual) %>%
  summarise(rides = n())

write_csv(daywise_rides, "rides_by_day_and_user_type.csv")

# ------------------------------------------------------
# 🔍 4. Ride Trends by Month
# ------------------------------------------------------
monthly_rides <- bike_data_clean %>%
  group_by(month, member_casual) %>%
  summarise(rides = n())

write_csv(monthly_rides, "rides_by_month_and_user_type.csv")

# ------------------------------------------------------
# 🔍 5. Bike Type Preferences by User Type
# ------------------------------------------------------
bike_type_pref <- bike_data_clean %>%
  group_by(rideable_type, member_casual) %>%
  summarise(rides = n())

write_csv(bike_type_pref, "bike_type_preference_by_user_type.csv")

# ------------------------------------------------------
# ✅ Done — All summary CSVs exported!
# ------------------------------------------------------
