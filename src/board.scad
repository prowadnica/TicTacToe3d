$fieldWidth=15;
$fieldHeight=3;
$borderWidth=3;
$borderHeight=2;
$edgeWidth=2;
$spaceWidth=10;

module board(center=true) {
x=(center)?(-($borderWidth*4+$fieldWidth*3+$edgeWidth*2)/2):(0);
y=(center)?(-($borderWidth*4+$fieldWidth*3+$edgeWidth*2)/2):(0);
z=(center)?(-($fieldHeight+$borderHeight)/2):(0);
translate([x, y, z]) {
difference() {
union() {
translate([0, -($borderWidth*4+$fieldWidth*3+$edgeWidth*2), 0]) cube([$borderWidth*4+$fieldWidth*3+$edgeWidth*2, $borderWidth*4+$fieldWidth*3+$edgeWidth*2, $fieldHeight]);
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
translate([$borderWidth+$fieldWidth/2-$spaceWidth/2, $borderWidth+$fieldWidth/2-$spaceWidth/2, 0])
cube([$spaceWidth, $spaceWidth, $fieldHeight]);
}
}
}
}
}
}

board();