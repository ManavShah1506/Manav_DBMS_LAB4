use Ecommerce;
SELECT prod.PRO_ID,prod.PRO_NAME FROM `order` AS ord
INNER JOIN  supplier_pricing AS sp
ON sp.PRICING_ID  = ORD. PRICING_ID
INNER JOIN product AS prod
ON prod.PRO_ID = sp.PRO_ID WHERE ORD.ORD_DATE>'2021-10-05';