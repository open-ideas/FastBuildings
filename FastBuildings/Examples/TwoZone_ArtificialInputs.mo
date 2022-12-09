within FastBuildings.Examples;
model TwoZone_ArtificialInputs
  "Two zone simulation based on artificial inputs for QHeaCoo and PEle"
  extends Modelica.Icons.Example;
  inner Input.SIM_2Zones_Artificial             simFasBui(nIrr=2)
                                                    annotation(Placement(visible = true, transformation(origin = {-89.817,88.5229}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  FastBuildings.Buildings.Z2_Inputs bui(redeclare
      FastBuildings.Zones.ZonWalInt_B                                             zon1(
      nIrr=2,
      cZon=1e6,
      cWal=1e8,
      rWal=1e-3,
      cInt=1e7,
      rInt=1e-4,
      rInf=1e-3), redeclare FastBuildings.Zones.Zon_A zon2(
      nIrr=2,
      cZon=1e8,
      rWal=1e-3))                                                         annotation(Placement(visible = true, transformation(origin={-11.8301,
            21.7255},                                                                                                    extent = {{-10,-10},{10,10}}, rotation = 0)));

  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StopTime = 604800, StartTime = 0, Tolerance = 1e-06, Interval = 1209.6), __Dymola_experimentSetupOutput);
end TwoZone_ArtificialInputs;