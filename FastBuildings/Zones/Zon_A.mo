within FastBuildings.Zones;
model Zon_A "Single state, only zone temperature, array of windows"
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_SZ_Zon;
equation
  for i in 1:nIrr loop
    connect(win[i].heaPor1, capZon.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{20,39.9476},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;
  connect(simFasBui.TAmb, preTAmb.T) annotation (Line(
      points={{-179.039,82.0248},{-166,82.0248},{-166,0},{-152,0}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(simFasBui.irr, win.irr) annotation (Line(
      points={{-179.039,86.0248},{-140,86.0248},{-140,40},{-120,40},{-120,
          39.9651},{-99.8824,39.9651}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(preTAmb.port, resWal.heaPor_a) annotation (Line(
      points={{-130,0},{-100,0}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(resWal.heaPor_b, capZon.heaPor) annotation (Line(
      points={{-80,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorEmb, capZon.heaPor) annotation (Line(
      points={{100,39.9057},{20,39.9057},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorRad, capZon.heaPor) annotation (Line(
      points={{100,-40},{20,-40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(capZon.heaPor, senTZon.port) annotation (Line(
      points={{20,60},{20,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(senTZon.T, TZon) annotation (Line(
      points={{70,-80},{106,-80}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation(Diagram(coordinateSystem(preserveAspectRatio=true,    extent={{-200,
            -100},{100,100}}),                                                                        graphics), Documentation(info = "<html>
<p>this is a simple <u>test</u></p>
<p><ul>
<li>k</li>
<li>d</li>
<li>h</li>
</ul></p>
</html>", revisions = "<html>
<p>First version, 12/10/2011 - RDC</p>
</html>"),
    Icon(coordinateSystem(extent={{-200,-100},{100,100}})));
end Zon_A;
