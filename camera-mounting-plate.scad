// all units are in 'mm'
use <MCAD/boxes.scad>
use <mounting-block.scad>

$fa=1;
$fs=0.4;

plate_base=15;
pole_length=200;

// Horizontal plate
difference () {

  translate ([0, -48, 5.5])

    difference () {

    roundedBox (size=[(plate_base * 3), (plate_base * 4), plate_base],  radius=3, sidesonly=true);

    translate ([0, -15, -17.5])
      roundedBox (size=[13, 13, 40],  radius=3, sidesonly=true);

    translate ([0, -15, 0])
      cylinder (r=3.25, h=45, center=true);
  }

    rotate ([30, 0, 0])
    translate ([0, -3, 23])
    cube (25, center=true);

}

difference () {
  translate ([-(plate_base * 1), -35, -10])
    rotate ([-23, 0, 0])
    roundedBox (size=[(plate_base * 0.8), (plate_base * 5.5), plate_base],  radius=3, sidesonly=false);

  translate ([-10, 5, -20])
    cube (10, center=true);

}

difference () {
  translate ([(plate_base * 1), -35, -10])
    rotate ([-23, 0, 0])
    roundedBox (size=[(plate_base * 0.8), (plate_base * 5.5), plate_base],  radius=3, sidesonly=false);

  translate ([10, 5, -20])
    cube (10, center=true);

}



mounting_block (desk_angle=30);
