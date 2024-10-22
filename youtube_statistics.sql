SELECT keyword, SUM(views) 
FROM videos_stats
GROUP BY keyword;

SELECT keyword, SUM(likes) 
FROM videos_stats
GROUP BY keyword;

SELECT comment, MAX(likes) AS max_likes 
FROM comments
GROUP BY comment
ORDER BY max_likes;

SELECT keyword, views / likes AS ratio 
FROM videos_stats
LIMIT 10;

SELECT keyword, SUM(views) / SUM(likes) AS ratio 
FROM videos_stats
GROUP BY keyword;

SELECT videos_stats.keyword, AVG(comments.sentiment) 
FROM comments
LEFT JOIN videos_stats ON comments.video_id = videos_stats.video_id
GROUP BY videos_stats.keyword;

SELECT keyword, COUNT(*) 
FROM videos_stats
WHERE title LIKE '%Apple%' OR title LIKE '%Samsung%'
GROUP BY keyword;
