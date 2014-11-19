within FastBuildings.Buildings.BaseClasses;
partial model Partial2Zone "Two-zone partial"

  replaceable FastBuildings.Zones.BaseClasses.Partials.Partial_SZ zon1
    annotation (Placement(visible=true, transformation(
        origin={-29.0598,0.34188},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  replaceable FastBuildings.HVAC.Partial_HVAC hva1 annotation (Placement(
        visible=true, transformation(
        origin={18.1197,0.683761},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  outer Input.SIM_Inputs_2Zones                     simFasBui
    "Weather data, to be provided by an inner submodel of Partial_SIM"                                                     annotation(Placement(visible = true, transformation(origin={-90.1538,
            89.5214},                                                                                                    extent = {{-10,-10},{10,10}}, rotation = 0)));
  replaceable FastBuildings.Zones.BaseClasses.Partials.Partial_SZ zon2
    annotation (Placement(visible=true, transformation(
        origin={-27.0598,-59.6581},
        extent={{-10,-10},{10,10}},
        rotation=0)));
  replaceable Zones.BaseClasses.Wall_1C bou constrainedby
    FastBuildings.Zones.BaseClasses.Partials.TwoPort
    "boundary wall between zon1 and zon2" annotation (ChoicesAllMatching=true,
      Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-6,-30})));
  replaceable FastBuildings.HVAC.Partial_HVAC hva2 annotation (Placement(
        visible=true, transformation(
        origin={20.1197,-59.3162},
        extent={{-10,-10},{10,10}},
        rotation=0)));
equation
  connect(zon1.TZon, hva1.TZon) annotation (Line(points={{-19.0598,-7.65812},{
          7.86325,-7.65812},{7.86325,-7.35031},{8.1619,-7.35031}}));
  connect(zon1.heaPorRad, hva1.heaPorRad) annotation (Line(points={{-19.0598,
          -3.65812},{8.20513,-3.65812},{8.20513,-3.31624},{8.1027,-3.31624}}));
  connect(zon1.heaPorCon, hva1.heaPorCon) annotation (Line(points={{-19.0598,
          0.34188},{8.20513,0.34188},{8.20513,0.690581},{8.1367,0.690581}}));
  connect(zon1.heaPorEmb, hva1.heaPorEmb) annotation (Line(points={{-19.0598,
          4.33245},{8.54701,4.33245},{8.54701,4.67694},{8.1367,4.67694}}));
  connect(bou.heaPor_b, hva1.heaPorCon) annotation (Line(
      points={{-6,-20},{-6,0},{8.20513,0},{8.20513,0.690581},{8.1367,0.690581}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(zon2.TZon, hva2.TZon) annotation (Line(
      points={{-17.0598,-67.6581},{-4,-67.6581},{-4,-67.3503},{10.1619,-67.3503}},
      color={0,0,127},
      smooth=Smooth.None));

  connect(zon2.heaPorEmb, hva2.heaPorEmb) annotation (Line(
      points={{-17.0598,-55.6675},{-3.5299,-55.6675},{-3.5299,-55.323},{10.1367,
          -55.323}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(zon2.heaPorCon, hva2.heaPorCon) annotation (Line(
      points={{-17.0598,-59.6581},{-3.5299,-59.6581},{-3.5299,-59.3094},{
          10.1367,-59.3094}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(zon2.heaPorRad, hva2.heaPorRad) annotation (Line(
      points={{-17.0598,-63.6581},{-3.5299,-63.6581},{-3.5299,-63.3162},{
          10.1027,-63.3162}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(bou.heaPor_a, hva2.heaPorCon) annotation (Line(
      points={{-6,-40},{-6,-60},{-3.5299,-60},{-3.5299,-59.3094},{10.1367,
          -59.3094}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation(Diagram(coordinateSystem(extent={{-100,-100},{100,100}},   preserveAspectRatio=false,  initialScale = 0.1, grid = {2,2}),
        graphics),                                                                                                    Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2}), graphics={  Rectangle(origin = {0.854701,-33.6752}, extent = {{-77.7778,-66.4957},{77.7778,66.4957}}),Polygon(origin = {-1.03388,65.2156}, points = {{-95.7183,-32.3951},{95.7347,-32.3951},{-2.04304,32.5622},{-95.7183,-32.3951}}),Text(origin = {0,-40.17}, lineColor=
              {170,0,0},                                                                                                    extent = {{-58.8,37.44},{58.8,-37.44}},
          textString="Z2")}));
end Partial2Zone;
