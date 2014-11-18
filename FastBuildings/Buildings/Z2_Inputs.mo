within FastBuildings.Buildings;
model Z2_Inputs "2-zone building, with HVAC read from inputs"
  extends FastBuildings.Buildings.BaseClasses.Partial2Zone_new(
    redeclare FastBuildings.HVAC.Heating_Input hva1,
    redeclare FastBuildings.HVAC.Heating_Input hva2);
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent={{-100,
            -100},{100,100}},                                                                                                    preserveAspectRatio=false,   initialScale = 0.1, grid = {2,2}), graphics));
end Z2_Inputs;
