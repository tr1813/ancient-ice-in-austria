### OxCal model definition of Eiszungendom with outliers
```
 Plot()
 {
  Outlier_Model("General",T(5),U(0,4),"t");
  P_Sequence("Eiszungendom",1,0.2,U(-2,2))
  {
   Boundary("bottom")
   {
    z =0;
   };
   R_Date("EG-1",4703,29)
   {
    z = 0;
    Outlier(0.05);
   };
   R_Date("EE-C1",4105,40)
   {
    z = 10;
    Outlier(0.05);
   };
   R_Date("EE-C2",1750,28)
   {
    z = 50;
    Outlier(0.05);
   };
   R_Date("EE-C3",1072,25)
   {
    z = 80;
    Outlier(0.05);
   };
   R_Date("EE-C4",51,27)
   {
    z = 430;
    Outlier(0.05);
   };
   Boundary("top")
   {
    z =450;
   };
  };
 };
```