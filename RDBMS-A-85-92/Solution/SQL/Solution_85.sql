SELECT C.CUSTNAME, P.BILLAMOUNT FROM purchasebill P INNER JOIN customer C ON P.CUSTID=C.CUSTID WHERE P.BILLAMOUNT>5000;