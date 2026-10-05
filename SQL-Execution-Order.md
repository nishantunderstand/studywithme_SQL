SQL Execution Order

1.  FROM
2.  JOIN
3.  ON
4.  WHERE
5.  GROUP BY
6.  HAVING
7.  SELECT
      ├── AVG()
      ├── SUM()
      ├── COUNT()
      ├── MIN()
      ├── MAX()
      ├── RANK()
      ├── DENSE_RANK()
      ├── ROW_NUMBER()
      └── AS → Column Alias
8.  DISTINCT
9.  ORDER BY
10. LIMIT / OFFSET


---


<>  → avoids self-pair
<   → avoids self-pair + reverse duplicate

< or >  → Keep only ONE direction of the pair
<>      → Keeps BOTH directions