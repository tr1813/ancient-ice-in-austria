### OxCal model definition of Großer Naturschacht sequence with outliers
```
 Plot()
 {
  Outlier_Model("General",T(5),U(0,4),"t");
  P_Sequence("Naturschacht-low",1,0.5,U(-2,2))
  {
   Boundary("s1")
   {
    z=0;
   };
   R_Date("GNS-C4", 239, 21)
   {
    z=145;
    Outlier(0.05);
   };
   R_Date("GNS-C6", 155, 24)
   {
    z=160;
    Outlier(0.05);
   };
   Boundary("e1")
   {
    z=170;
   };
  };
  P_Sequence("Naturschacht-high",1,0.1,U(-2,2))
  {
   Boundary("s2")
   {
    z=1700;
   };
   R_Combine("GNS-C7/C8")
   {
    R_Date("GNS-C7", 155, 24);
    R_Date("GNS-C8", 191, 20);
    z=1710;
    Outlier(0.05);
   };
   R_Date("K6", 107,24)
   {
    z=2000;
    Outlier(0.05);
   };
   R_Date("GNS-C9", 20, 19)
   {
    z=2400;
    Outlier(0.05);
   };
   R_Date("GNS-C10", 166, 20)
   {
    z=2600;
    Outlier(0.05);
   };
   R_Date("GNS-C11", 65, 23)
   {
    z=2650;
    Outlier(0.05);
   };
   R_Date("GNS-C12", 83, 22)
   {
    z=2680;
    Outlier(0.05);
   };
   Boundary("e2")
   {
    z=2700;
   };
  };
 };
```