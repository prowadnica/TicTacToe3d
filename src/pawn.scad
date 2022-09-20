$fieldWidth=15;
$fieldHeight=3;
$borderWidth=3;
$borderHeight=2;
$edgeWidth=1;

difference() {
cube([$fieldWidth-0.15, $fieldWidth-0.15, $fieldHeight*2+1], center=true);
translate([0, 0, $fieldHeight/2+0.5+1])
cylinder(d=$fieldWidth*0.8, h=$fieldHeight-1);
translate([0, 0, -$fieldHeight/2-0.5-1]) {
cube([$fieldWidth*0.8, $fieldWidth/5, $fieldHeight-1], center=true);
cube([$fieldWidth/5, $fieldWidth*0.8, $fieldHeight-1], center=true);
}
}