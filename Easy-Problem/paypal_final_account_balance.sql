-- To find amount remaining in the account after withdrawal

WITH final_amt 
AS
(SELECT account_id, transaction_type, sum(amount) AS amt
FROM transactions
WHERE transaction_type = 'Deposit'
GROUP BY account_id, transaction_type),
with_amt AS (SELECT account_id, transaction_type, sum(amount) as with_am
FROM transactions 
WHERE transaction_type = 'Withdrawal'
GROUP BY account_id, transaction_type)
SELECT final_amt.account_id, (final_amt.amt - with_amt.with_am) final_balance
FROM final_amt
INNER JOIN with_amt ON final_amt.account_id = with_amt.account_id;
