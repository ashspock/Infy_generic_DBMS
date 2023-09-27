SELECT itemcode,price AS Old_Price, round(((price*74.5)/100),2) AS New_Price FROM item WHERE itemtype='FMCG'; 
