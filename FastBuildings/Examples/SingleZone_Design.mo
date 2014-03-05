within FastBuildings.Examples;
model SingleZone_Design
  extends Modelica.Icons.Example;
  inner FastBuildings.Input.SIM_Design simFasBui
                                           annotation(Placement(visible = true, transformation(origin = {-89.817,88.5229}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Buildings.SZ_Design bui(redeclare FastBuildings.Zones.Zon_A zon(
                                                                 cZon = 10000000.0, rWal = 0.005), hva(tauHea = 1, cZon = bui.zon.cZon)) annotation(Placement(visible = true, transformation(origin = {28.1699,29.7255}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end SingleZone_Design;
