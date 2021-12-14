### OxCal model definition of Hundalm
```
 Plot()
 {
  Outlier_Model("General",T(5),U(0,4),"t");
  P_Sequence("Hundalm", 1,0.5,U(-2,2))
  {
   Boundary("start");
   R_Date("H20",1419,30)
   {
    z=0;
    Outlier(0.05);
   };
   R_Date("H21",1452,30)
   {
    z=50;
    Outlier(0.05);
   };
   R_Date("HUN-30",1258,28)
   {
    z=135;
   };
   Boundary("I")
   {
    z=165;
   };
   R_Date("HUN-31",549,26)
   {
    z=205;
    Outlier(0.05);
   };
   R_Date("H26",688,22)
   {
    z=305;
    Outlier(0.05);
   };
   R_Combine("HUN-32/H18")
   {
    R_Date("HUN-32",411,29);
    R_Date("H18",402,29);
    z=365;
    Outlier(0.05);
   };
   R_Date("HUN-33",203,25)
   {
    z=610;
    Outlier(0.05);
   };
   Boundary('end');
  };
  R_Date("H28",172,29)
  {
   z=305;
  };
 };
```