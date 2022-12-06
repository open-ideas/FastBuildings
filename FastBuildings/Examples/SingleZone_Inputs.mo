within FastBuildings.Examples;
model SingleZone_Inputs
  "Single zone simulation based on inputs for QHeaCoo and PEle"
  extends Modelica.Icons.Example;
  inner FastBuildings.Input.SIM_Inputs simFasBui
                                           annotation(Placement(visible = true, transformation(origin = {-89.817,88.5229}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  FastBuildings.Buildings.SZ_Inputs bui(redeclare FastBuildings.Zones.Zon_A zon(
                                                                 cZon = 1000000.0, rWal = 0.005)) annotation(Placement(visible = true, transformation(origin = {28.1699,29.7255}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})),
    experiment(StartTime = 0, StopTime = 604800, Tolerance = 1e-6, Interval = 1209.6));
end SingleZone_Inputs;