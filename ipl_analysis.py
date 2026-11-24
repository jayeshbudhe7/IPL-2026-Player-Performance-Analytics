#IMPORT LIBRARIES
import pandas as pd
# 2. LOAD IPL DATASET

df = pd.read_csv("../Dataset/IPL_2026_Stats.csv")

# 3. DISPLAY FIRST 5 ROWS

print(df.head())

# 4. DATASET SHAPE

print(df.shape)

print(df.columns)

print(df.info())

# 7. DUPLICATE VALUE CHECK


print("Duplicate Rows:", df.duplicated().sum())

# 8. MISSING VALUE CHECK

print("Missing Values:")
# 9. TOP 10 RUN SCORERS

print(df.isnull().sum())

top_scorers = df.sort_values(
    by="Runs",
    ascending=False
).head(10)

print("\nTOP 10 RUN SCORERS")
print(top_scorers[["Player", "Team", "Runs", "Matches"]])

# 10. TOP 10 WICKET TAKERS

top_wicket_takers = df.sort_values(
    by="Wickets",
    ascending=False
).head(10)

print("\nTOP 10 WICKET TAKERS")
print(top_wicket_takers[["Player", "Team", "Wickets", "Matches"]])

# 11. TOP 10 SIX HITTERS
top_six_hitters = df.sort_values(
    by="Sixes",
    ascending=False
).head(10)

print("\nTOP 10 SIX HITTERS")
print(top_six_hitters[["Player", "Team", "Sixes", "Matches"]])

# 12. TOP 10 FOUR HITTERS
top_four_hitters = df.sort_values(
    by="Fours",
    ascending=False
).head(10)

print("\nTOP 10 FOUR HITTERS")
print(top_four_hitters[["Player", "Team", "Fours", "Matches"]])

# 13. TEAM WISE PERFORMANCE

team_performance = df.groupby("Team").agg({
    "Player": "count",
    "Runs": "sum",
    "Wickets": "sum",
    "Sixes": "sum",
    "Catches": "sum"
}).reset_index()

print("\nTEAM WISE PERFORMANCE")
print(team_performance)