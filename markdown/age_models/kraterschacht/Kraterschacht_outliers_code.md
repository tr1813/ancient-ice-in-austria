### OxCal model definition of Kraterschacht with outliers
```
 Plot()
 {
  Outlier_Model("General",T(5),U(0,4),"t");
  P_Sequence("Kraterschacht",1,0.05,U(-2,2))
  {
   Boundary('start');
   R_Date("K1", 650, 34)
   {
    z=50;
    Outlier(0.05);
   };
   R_Date("K2", 336, 30)
   {
    z=350;
    Outlier(0.05);
   };
   R_F14C("K3", 1.0004, 0.0039)
   {
    z=400;
    Outlier(0.05);
   };
   R_Date("P3", 886, 45)
   {
    z=400;
    Outlier(0.05);
   };
   R_Date("K4", 120, 28)
   {
    z=850;
    Outlier(0.05);
   };
   Boundary('end');
  };
 };
```