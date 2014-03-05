within FastBuildings.Buildings;
model SZ_Inputs
  extends FastBuildings.Buildings.BaseClasses.PartialSingleZone(redeclare
      FastBuildings.HVAC.Heating_Input                                                                     hva);
equation
  connect(simFasBui.qHeaCoo,hva.qHeaCoo) annotation(Line(points={{-82.193,
          78.5462},{-82.193,50},{-10,50},{-10,8.72124},{8.0938,8.72124}},                                                                color = {0,0,127}, smooth = Smooth.None));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics));
end SZ_Inputs;
