[Back to Home Page](https://tr1813.github.io/ancient-ice-in-austria/descriptions/index.html)

Hundalm Tropfstein- und Eishöhle, hereafter Hundalm, is a cave located in the Brandenberg Alps of Tyrol, opening at an elevation of 1520 m a.s.l.,  within a spruce and larch forest [@spotl2014hundalm].
It is 55 m deep overall, with a deep ice-free gallery separated from the main body of the ice cave by an air lock.
The cave contains two openings, the *Oberer-* and *Unterer Einsteig*, respectively, which join in the ice bearing chamber called *Eisdom* at a depth of 28 m. 
Along the southern prt of the cave, several metres of congelation ice can be readily seen.


Layered firn-derived ice is well exposed along the northern parts of the touristic cave trail, in particular near the deepest ice-bearing section of the cave (*Tiefster Punkt*).
These parts were sampled in detail by @spotl2014hundalm, retrieving 19 individual dates.  
The ice section situated in the northern sector of the cave [Figure 5, @spotl2014hundalm] has been resampled since, with 5 additional radiocarbon dates helping construct a new age-depth model.
This 12 m wide section contrasts with the more southerly parts of the ice body by its consistent layering and normal i.e., upwards younging, stratigraphic progression. 

![](https://tr1813.github.io/ancient-ice-in-austria/figures/hundalm-stratigraphy.png)


_Stratigraphic column at Hundalm_


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


[Back to Home Page](https://tr1813.github.io/ancient-ice-in-austria/descriptions/index.html)
