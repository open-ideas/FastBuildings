within FastBuildings.Examples;
model SingleZone_ArtificialInputs
  "Single zone simulation based on artificial inputs for QHeaCoo and PEle"
  extends Modelica.Icons.Example;
  inner FastBuildings.Input.SIM_ArtificialInput simFasBui
                                                    annotation(Placement(visible = true, transformation(origin = {-89.817,88.5229}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  FastBuildings.Buildings.SZ_Inputs_powEle
                           bui(redeclare FastBuildings.Zones.ZonInt_B zon(
      cZon=1e6,
      cInt=1e7,
      rInt=1e-2))                               annotation(Placement(visible = true, transformation(origin = {28.1699,29.7255}, extent = {{-10,-10},{10,10}}, rotation = 0)));

  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StopTime = 604800, StartTime = 0, Tolerance = 1e-06, Interval = 1209.6), __Dymola_experimentSetupOutput);
end SingleZone_ArtificialInputs;