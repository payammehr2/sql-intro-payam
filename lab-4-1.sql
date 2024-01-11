-- How many lifetime hits does Barry Bonds have?

-- Payam's first try:
-- SELECT stats.hits, SUM(*) 
-- FROM teams INNER JOIN stats ON teams.id = stats.team_id
-- WHERE teams.player = "Barry Bonds"
-- GROUP BY stats.hits;

SELECT SUM(stats.hits) FROM players
INNER JOIN stats on players.id = stats.player_id
WHERE players.first_name = "Barry"
AND players.last_name = "Bonds";


-- Expected result:
-- 2935


