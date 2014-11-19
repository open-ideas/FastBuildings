within FastBuildings.Buildings;
model Z2_Inputs "2-zone building, with HVAC read from inputs"
  extends FastBuildings.Buildings.BaseClasses.Partial2Zone(
    redeclare FastBuildings.HVAC.Heating_Input hva1,
    redeclare FastBuildings.HVAC.Heating_Input hva2,
    bou(r=1e-3, c=1e6));
      annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent={{-100,
            -100},{100,100}},                                                                                                    preserveAspectRatio=false,   initialScale = 0.1, grid = {2,2}), graphics));
equation
  connect(simFasBui.qHeaCoo1, hva1.qHeaCoo);
  connect(simFasBui.qHeaCoo2, hva2.qHeaCoo);

end Z2_Inputs;
