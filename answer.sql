-- TYPE YOUR SQL QUERY BELOW
-- PART 1: Create a SQL query that maps out the daily average users before and after the feature change
----- In this answer below, it is assumed that the time of feature change is 2018-10-10:

----- SQL query that maps out the daily average users before the feature change:
CREATE VIEW countByDay AS
SELECT date(login_timestamp, 'unixepoch') as LoginDay,COUNT(user_id) as UserCount
FROM 'login_history'
WHERE LoginDay BETWEEN '2017-10-01' AND '2018-10-10'
GROUP BY LoginDay;
SELECT AVG(UserCount) FROM countByDay;

----- SQL query that maps out the daily average users after the feature change:
CREATE VIEW countByDay2 AS
SELECT date(login_timestamp, 'unixepoch') as LoginDay,COUNT(user_id) as UserCount
FROM 'login_history'
WHERE LoginDay BETWEEN '2018-10-10' AND '2020-01-01'
GROUP BY LoginDay;
SELECT AVG(UserCount) FROM countByDay2;

-- PART 2: Create a SQL query that indicates the number of status changes by card
SELECT cardID, count(cardID) as numOfStatus
FROM 'card_change_history'
GROUP BY cardID




