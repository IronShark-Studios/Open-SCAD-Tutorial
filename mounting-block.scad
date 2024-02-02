// all units are in 'mm'
use <MCAD/boxes.scad>

$fa=1;
$fs=0.4;


module mounting_block (desk_angle=0, pole_thickness=12.5) {

  rotate ([desk_angle, 0, 0])
    difference () {

    difference () {

      difference () {

        union () {

          // Main Body
          roundedBox (size=[(pole_thickness * 3), (pole_thickness * 3), (pole_thickness * 4)],  radius=3, sidesonly=true);

          // Tension Plate
          translate ([0, pole_thickness * 1.75, 0])
            roundedBox (size=[(pole_thickness * 1.75), (pole_thickness * 2), (pole_thickness * 4)], radius=3, sidesonly=true);
        }

        // Mounting Pole
        cylinder (r=pole_thickness, h=(pole_thickness * 20), center=true);
      }

      // Gap for compression
      translate ([0, pole_thickness * 2, 0])
        cube ([(pole_thickness * 0.25), (pole_thickness * 2), (pole_thickness * 5)], center=true);

    }

    // Top screw hole
    rotate ([0, 90, 0])
      translate ([pole_thickness, (pole_thickness * 2), 0])
      cylinder (r=3.25, h=(pole_thickness * 2.5), center=true);

    // Bottom screw hole
    rotate ([0, 90, 0])
      translate ([-pole_thickness, (pole_thickness * 2), 0])
      cylinder (r=3.25, h=(pole_thickness * 2.5), center=true);

  }
}

mounting_block ();
