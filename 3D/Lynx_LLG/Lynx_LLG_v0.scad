FDM_offset = 0.1;

llg_d = 8;

base_d = 35;
base_h = 5;

tube_d = 12;
tube_h = 40;

hole_d = 3;
hole_pos = 12;


module lynx_llg (){
    difference(){
        // body
        union(){
            cylinder(h = base_h, d = base_d, center = true, $fn = 256);
            translate([0,0,tube_h/2 - base_h/2])
                cylinder(h = tube_h, d = tube_d + FDM_offset,
                         center = true, $fn = 256);
        }
        
        // hole for llg
        cylinder(h = tube_h*3, d = llg_d, center = true, $fn = 256);
        
        // mounting holes
        translate([hole_pos,0,0])
            cylinder(h = base_h*2, d = hole_d + FDM_offset,
                     center = true, $fn = 256);
        translate([-hole_pos,0,0])
            cylinder(h = base_h*2, d = hole_d + FDM_offset,
                     center = true, $fn = 256);
    }
}

lynx_llg();