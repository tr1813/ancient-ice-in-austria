### OxCal model definition of Tremml Schacht 413
```
 Plot()
 {
  P_Sequence("Tremml", 1, 0.05, U(-2,2))
  {
   Boundary(start);
   R_Date("TREM-2", 199, 24)
   {
    z=2880;
   };
   R_Date("TREM-1", 149, 21)
   {
    z=2810;
   };
   Date("SURF", N(AD(2000,2)))
   {
    z=-2000;
   };
   Boundary(end);
  };
 };
```