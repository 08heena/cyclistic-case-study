# Cyclistic Bike-Share Data Cleaning Script (2024)
# Author: Heena Rathore
# Date: June 2025

# ------------------------------------------------------
# 📦 Install required packages (Run once)
# ------------------------------------------------------
# install.packages("tidyverse")
# install.packages("lubridate")
# install.packages("readr")

# ------------------------------------------------------
# 📚 Load required libraries
# ------------------------------------------------------
library(tidyverse)
library(lubridate)
library(readr)

# ------------------------------------------------------
# 📁 Set working directory
# ------------------------------------------------------
setwd("D:/HEENA DATA/PEOPLE/HEENA_PC/Other/Data Analyst_DataEngineer/Data/Projects/Data_Analyst/Case Study - Cyclistic Bike-Share/R_Scripts/Cyclistic_2024")

# Confirm working directory and files are correct
getwd()
list.files()

# ------------------------------------------------------
# 📊 Read and Combine All 12 Monthly CSV Files
# This loads all files into one big dataframe named bike_data.
# ------------------------------------------------------
file_list <- list.files(pattern = "*.csv")  # Get all CSV files in folder

bike_data <- file_list %>%
  map_df(read_csv)  # Combine into one dataframe

# ------------------------------------------------------
# 🧼 Data Cleaning & Transformation
# ------------------------------------------------------
bike_data_clean <- bike_data %>%
  mutate(
    started_at = ymd_hms(started_at),
    ended_at = ymd_hms(ended_at),
    ride_duration = as.numeric(difftime(ended_at, started_at, units = "mins")),
    day_of_week = wday(started_at, label = TRUE, abbr = FALSE),
    month = month(started_at, label = TRUE, abbr = FALSE)
  ) %>%
  filter(
    !is.na(started_at),
    !is.na(ended_at),
    !is.na(member_casual),
    !is.na(rideable_type),
    ride_duration > 0
  ) %>%
  select(
    ride_id,
    rideable_type,
    started_at,
    ended_at,
    member_casual,
    ride_duration,
    day_of_week,
    month
  )

# ------------------------------------------------------
# 🔍 View cleaned data 
# ------------------------------------------------------
glimpse(bike_data_clean)

# ------------------------------------------------------
# 💾 Save cleaned dataset to CSV
# ------------------------------------------------------
write_csv(bike_data_clean, "final_cyclistic_cleaned_2024.csv")
