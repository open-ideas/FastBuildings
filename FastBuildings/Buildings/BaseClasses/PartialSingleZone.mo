within FastBuildings.Buildings.BaseClasses;
partial model PartialSingleZone

  replaceable FastBuildings.Zones.BaseClasses.Partials.Partial_SZ zon annotation(Placement(visible = true, transformation(origin = {-29.0598,0.34188}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  replaceable FastBuildings.HVAC.Partial_HVAC hva annotation(Placement(visible = true, transformation(origin = {18.1197,0.683761}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  outer FastBuildings.Input.BaseClasses.Partial_SIM simFasBui
    "Weather data, to be provided by an inner submodel of Partial_SIM"                                                     annotation(Placement(visible = true, transformation(origin={-90.1538,
            89.5214},                                                                                                    extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(zon.TZon,hva.TZon) annotation(Line(points={{-19.0598,-7.65812},{
          7.86325,-7.65812},{7.86325,-7.35031},{8.1619,-7.35031}}));
  connect(zon.heaPorRad,hva.heaPorRad) annotation(Line(points={{-19.0598,
          -3.65812},{8.20513,-3.65812},{8.20513,-3.31624},{8.1027,-3.31624}}));
  connect(zon.heaPorCon,hva.heaPorCon) annotation(Line(points={{-19.0598,
          0.34188},{8.20513,0.34188},{8.20513,0.690581},{8.1367,0.690581}}));
  connect(zon.heaPorEmb,hva.heaPorEmb) annotation(Line(points={{-19.0598,
          4.33245},{8.54701,4.33245},{8.54701,4.67694},{8.1367,4.67694}}));
  annotation(Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics={  Rectangle(origin=  {0.854701,-33.6752}, extent=  {{-77.7778,-66.4957},{77.7778,66.4957}}),Polygon(origin=  {-1.03388,65.2156}, points=  {{-95.7183,-32.3951},{95.7347,-32.3951},{-2.04304,32.5622},{-95.7183,-32.3951}}),Text(origin=  {0,-40.17}, lineColor=  {170,0,0}, extent=  {{-58.8,37.44},{58.8,-37.44}}, textString=  "SZ")}));
end PartialSingleZone;
