SELECT rts.*
FROM rtvshow rts,
  rprodby rpb,
  rproducer rp
WHERE rts.show_num=rpb.show_num
AND rp.prod_name  =rpb.prod_name
AND rp.prod_age   >&Enter_the_producer_age;
