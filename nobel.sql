SELECT yr, subject, winner
  FROM nobel
 WHERE yr = 1950;

SELECT winner
  FROM nobel
 WHERE yr = 1962
   AND subject = 'Literature';

SELECT yr, subject
  FROM nobel
WHERE winner = 'Albert Einstein';

SELECT winner
FROM nobel
WHERE subject = 'Peace' AND yr >= 2000;

SELECT yr, subject, winner
  FROM nobel
WHERE subject = 'Literature' AND yr BETWEEN 1980 AND 1989;

SELECT * FROM nobel
 WHERE winner IN ( 'Barack Obama','Theodore Roosevelt',
                  'Woodrow Wilson',
                  'Jimmy Carter');

SELECT winner FROM nobel
  WHERE winner LIKE 'JOHN %';

SELECT * FROM nobel
  WHERE yr = 1980 AND subject = 'Physics'
     OR yr = 1984 AND subject = 'Chemistry';

SELECT * FROM nobel
  WHERE yr = 1980
    AND subject NOT IN ('Chemistry','Medicine');

SELECT * FROM nobel
  WHERE yr < 1910 AND subject = 'Medicine'
     OR yr >= 2004 AND subject = 'Literature';

SELECT * FROM nobel
  WHERE winner = 'Peter Grünberg';

SELECT * FROM nobel
  WHERE winner = 'Eugene O''Neill';

SELECT winner, yr, subject FROM nobel
  WHERE winner LIKE 'Sir %'
  ORDER BY yr DESC, winner;

SELECT winner, subject
  FROM nobel
 WHERE yr=1984
 ORDER BY subject in ('Chemistry','Physics'), subject, winner;
