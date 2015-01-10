within FastBuildings.Examples;
model SingleZone_Controlled
  "Single zone simulation with controlled heating system"
  extends Modelica.Icons.Example;
  inner Input.SIM_ArtificialInput simFasBui
                                      annotation(Placement(visible = true, transformation(origin = {-89.817,88.5229}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  FastBuildings.Buildings.SZ_Controlled bui(hva(QNom = 10000, dTHys = 1), redeclare
      FastBuildings.Zones.ZonWalEmb_B zon(cZon = 10000000.0, cWal = 100000000.0, cEmb = 100000.0, rInf = 0.01, rWal = 0.005, rEmb = 0.01)) annotation(Placement(visible = true, transformation(origin = {28.1699,29.7255}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), experiment(StopTime = 162800), __Dymola_experimentSetupOutput);
end SingleZone_Controlled;
