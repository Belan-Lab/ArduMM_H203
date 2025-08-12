include </home/wisstock/.local/share/OpenSCAD/libraries/OpenSCAD-Arduino-Mounting-Library/arduino.scad>


bnc_d = 8;


    enclosure(UNO,
              wall = 2,
              offset = 5,
              heightExtension = 20,
              cornerRadius = 20,
              mountType = TAPHOLE);  // PIN


rotate([0,180,0])
translate([30,0,-2])
     
enclosureLid(UNO,
             wall = 2, offset = 5,
             cornerRadius = 20,
             ventHoles = true);