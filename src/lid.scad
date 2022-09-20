// Copyright (C) Dawid Pieper
// This file is a part of TicTacToe3d game project created by Prowadnica Foundation
// This project is licensed under Creative Commons Attribution-NonCommercial-ShareAlike 4.0 International license

$fieldWidth=15.2;
$fieldHeight=3;
$borderWidth=2.8;
$borderHeight=2;
$edgeWidth=2;
$spaceWidth=10;

module lid(center=true) {
x=(center)?(-($borderWidth*4+$fieldWidth*3+$edgeWidth*2)/2):(0);
y=(center)?(-($borderWidth*4+$fieldWidth*3+$edgeWidth*2)/2):(0);
z=(center)?(-($fieldHeight+$borderHeight)/2):(0);
translate([x, y, z]) {
difference() {
union() {
translate([0, -($borderWidth*4+$fieldWidth*3+$edgeWidth*2), 0]) {
difference() {
width=$borderWidth*4+$fieldWidth*3+$edgeWidth*2;
height=$fieldHeight+$borderHeight*6;
cube([width, width, height]);

translate([width/2, $edgeWidth/2, height])
rotate([90, 0, 0])
cylinder(r=6, h=$edgeWidth, center=true);

translate([width/2, width-$edgeWidth/2, height])
rotate([90, 0, 0])
cylinder(r=6, h=$edgeWidth, center=true);

translate([$edgeWidth/2, width/2, height])
rotate([0, 90, 0])
cylinder(r=6, h=$edgeWidth, center=true);

translate([width-$edgeWidth/2, width/2, height])
rotate([0, 90, 0])
cylinder(r=6, h=$edgeWidth, center=true);

translate([$edgeWidth, $edgeWidth, $fieldHeight])
cube([$borderWidth*4+$fieldWidth*3, $borderWidth*4+$fieldWidth*3, $borderHeight*6]);
}
}
for( i = [0:3-1]) {
for( j = [0:3-1]) {
x=$edgeWidth+i*($fieldWidth+$borderWidth);
y=-($edgeWidth+j*($fieldWidth+$borderWidth))-$fieldWidth-$borderWidth*2;
translate([x,y,$fieldHeight]) {
difference() {
cube([$fieldWidth+$borderWidth*2, $fieldWidth+$borderWidth*2, $borderHeight]);
translate([$borderWidth, $borderWidth, 0])
cube([$fieldWidth, $fieldWidth, $borderHeight]);
}
}
}
}
}

for( i = [0:3-1]) {
for( j = [0:3-1]) {
x=$edgeWidth+i*($fieldWidth+$borderWidth);
y=-($edgeWidth+j*($fieldWidth+$borderWidth))-$fieldWidth-$borderWidth*2;
translate([x,y,0]) {
//translate([$borderWidth+$fieldWidth/2-$spaceWidth/2, $borderWidth+$fieldWidth/2-$spaceWidth/2, 0])
//cube([$spaceWidth, $spaceWidth, $fieldHeight]);
}
}
}

translate([($borderWidth*4+$fieldWidth*3+$edgeWidth*2)/2, ($borderWidth*4+$fieldWidth*3+$edgeWidth*2)/2, 1.13/2])
scale([0.6, 0.6, 0.2])
import("C:\\Users\\dawid\\Downloads\\ImageToStl.com_prowadnica_logo.stl");

}
}
}

lid();