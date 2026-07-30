Delete Duplicate Rows

Keep Lowest id, delete rest

JOIN APPROACH
DELETE u1
FROM users u1
JOIN users u2
ON u1.email = u2.email
AND u1.id>u2.id