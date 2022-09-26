-- To find the two way payment done by user

WITH two_way AS
(SELECT payer_id, recipient_id FROM payments
INTERSECT
SELECT recipient_id, payer_id FROM payments)
SELECT COUNT(*)/2
from two_way;
