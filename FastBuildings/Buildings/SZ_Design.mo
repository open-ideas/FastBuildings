within FastBuildings.Buildings;
model SZ_Design "Single zone building simulation with design conditions"
  extends FastBuildings.Buildings.BaseClasses.PartialSingleZone(redeclare
      FastBuildings.HVAC.Heating_Ideal  hva);
equation
  connect(simFasBui.TSet,hva.TSet) annotation(Line(points={{-90.193,78.5462},{
          -90.193,-26},{18.1619,-26},{18.1619,-8.95031}},                                                                   color = {0,0,127}, smooth = Smooth.None));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics));
end SZ_Design;
