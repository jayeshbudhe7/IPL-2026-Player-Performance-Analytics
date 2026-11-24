USE IPL_Analytics;

SELECT COUNT(*) AS Total_Players
FROM ipl_2026_stats;

SELECT *
FROM ipl_2026_stats
LIMIT 10;


-- TOP 10 RUN SCORERS
SELECT Player, Team, Runs
FROM ipl_2026_stats
ORDER BY Runs DESC
LIMIT 10;

-- TOP 10 WICKET TAKERS
SELECT Player, Team, Wickets
FROM ipl_2026_stats
ORDER BY Wickets DESC
LIMIT 10;

-- TOP 10 SIX HITTERS
SELECT Player, Team, Sixes
FROM ipl_2026_stats
ORDER BY Sixes DESC
LIMIT 10;

-- TOP 10 FOUR HITTERS
SELECT Player, Team, Fours
FROM ipl_2026_stats
ORDER BY Fours DESC
LIMIT 10;

-- 1. TOP 10 RUN SCORERS
SELECT Player, Team, Runs
FROM ipl_2026_stats
ORDER BY Runs DESC
LIMIT 10;


-- 2. TOP 10 WICKET TAKERS
SELECT Player, Team, Wickets
FROM ipl_2026_stats
ORDER BY Wickets DESC
LIMIT 10;


-- 3. TOP 10 SIX HITTERS
SELECT Player, Team, Sixes
FROM ipl_2026_stats
ORDER BY Sixes DESC
LIMIT 10;


-- 4. TOP 10 FOUR HITTERS
SELECT Player, Team, Fours
FROM ipl_2026_stats
ORDER BY Fours DESC
LIMIT 10;

-- 5. TEAM WISE PERFORMANCE
SELECT 
    Team,
    COUNT(*) AS Total_Players,
    SUM(Runs) AS Total_Runs,
    SUM(Wickets) AS Total_Wickets,
    SUM(Sixes) AS Total_Sixes
FROM ipl_2026_stats
GROUP BY Team;


-- 6. TEAM WISE MAXIMUM RUNS
SELECT 
    Team,
    MAX(Runs) AS Highest_Runs
FROM ipl_2026_stats
GROUP BY Team;


-- 7. TEAM WISE AVERAGE RUNS
SELECT 
    Team,
    AVG(Runs) AS Average_Runs
FROM ipl_2026_stats
GROUP BY Team;


-- 8. ROLE WISE ANALYSIS
SELECT 
    Role,
    COUNT(*) AS Total_Players,
    SUM(Runs) AS Total_Runs,
    SUM(Wickets) AS Total_Wickets
FROM ipl_2026_stats
GROUP BY Role;


-- 9. TEAM WISE WICKETS
SELECT 
    Team,
    SUM(Wickets) AS Total_Wickets
FROM ipl_2026_stats
GROUP BY Team;

-- 10. PLAYER PERFORMANCE SCORE
SELECT 
    Player,
    Team,
    (Runs + Wickets * 20) AS Performance_Score
FROM ipl_2026_stats
ORDER BY Performance_Score DESC
LIMIT 10;


-- 11. TOTAL BOUNDARIES
SELECT 
    Player,
    Team,
    (Fours + Sixes) AS Total_Boundaries
FROM ipl_2026_stats
ORDER BY Total_Boundaries DESC
LIMIT 10;


-- 12. PLAYERS WITH MORE THAN 50 RUNS
SELECT 
    Player,
    Team,
    Runs
FROM ipl_2026_stats
WHERE Runs > 50
ORDER BY Runs DESC;