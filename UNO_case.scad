include </home/wisstock/.local/share/OpenSCAD/libraries/OpenSCAD-Arduino-Mounting-Library/arduino.scad>

enclosure(UNO,
          wall = 2,
          offset = 8,
          heightExtension = 35,
          cornerRadius = 20,
          mountType = TAPHOLE);

rotate([0,180,0])
translate([30,0,-2])
     
enclosureLid(UNO,
             wall = 2, offset = 8,
             cornerRadius = 20,
             ventHoles = true);