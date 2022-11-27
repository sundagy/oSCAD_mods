include <NopSCADlib/utils/core/core.scad>
use <sweep.scad>
use <NopSCADlib/utils/bezier.scad>

p = transform_points([[0,0,0], [20,0,5], [10,30,4], [0,10,20], [0,0,20]], scale(5));
n = 130;
path = bezier_path(p, n);
thinkness = bezier_path([0,1,1,2,2,2,0,0,0,6,9,0], n);

color("blue") rotate(45) sweep(path, circle_points(5, $fn = 64), sz_path=thinkness);

