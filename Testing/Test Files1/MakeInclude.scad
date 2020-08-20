build_fa = 10;
build_fs = 0.5;
build_angle = 0;
buildRotX = 0;
build_90 = 0;
build_180 = 0;
developmentRender = true;

$fa = build_fa;
$fs = build_fs;

echo(str("$fa = ", $fa));
echo(str("$fs = ", $fs));

nothing = 0.01;

// Backwards compatibility...
module tc(t, c) { tcu(t, c); }

module tcu(t, c)
{
  translate(t) cube(c);
}

module tcy(t, d, h)
{
  translate(t) cylinder(d=d, h=h);
}

module tsp(t, d)
{
  translate(t) sphere(d=d);
}

module expand(doMinkowski, minkowskiDia)
{
  if(doMinkowski)
  {
    minkowski()
    {
      children();
      sphere(d=minkowskiDia);
    }
  }
  else
  {
    children();
  }
}
