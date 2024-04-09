# File to interpolate the missing values in the initial features dataset
# The missing values are interpolated by taking the value before or after the missing value
# if the missing value is preceded or followed by a value
# Then, we drop the rows with missing values and save the dataset to a new csv file

df = readr::read_csv("https://raw.githubusercontent.com/fmegahed/shoulder_fatigue_modeling/main/data/initial_features.csv")

# replace the NA in rpe with the previous value or the value after it if it is NA
# note we do not replace all NAs (only replacing ones that are followed by a value or preceded by a value)
df$rpe[is.na(df$rpe) & !is.na(dplyr::lead(df$rpe))] = dplyr::lead(df$rpe)[is.na(df$rpe) & !is.na(dplyr::lead(df$rpe))]
df$rpe[is.na(df$rpe) & !is.na(dplyr::lag(df$rpe))] = dplyr::lag(df$rpe)[is.na(df$rpe) & !is.na(dplyr::lag(df$rpe))]
df = na.omit(df)

write.csv(df, "initial_features_limited_interpolation.csv", row.names = FALSE)
