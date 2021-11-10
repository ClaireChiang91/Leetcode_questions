# Write your MySQL query statement below

WITH get_amount_cte AS (
    SELECT account_id, day,
        (
            CASE
                WHEN type = 'Deposit' THEN amount
                ELSE -amount
            END
        ) AS amount
    FROM Transactions
)
SELECT
    account_id,
    day,
    SUM(amount) OVER (PARTITION BY account_id ORDER BY day) AS balance
FROM get_amount_cte
ORDER BY account_id, day
