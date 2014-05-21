within FastBuildings.Zones;
model ZonWalInt_fraResInt_A
  "heaPorRad and heaPorEmb connected between resInt_a and resInt_b"
  extends BaseClasses.Partials.Partial_SZ_ZonWalInt_fraResInt;

equation
  for i in 1:nIrr loop
    connect(win[i].heaPor1, resInt_a.heaPor_a) annotation (Line(
      points={{-79.9087,39.9476},{-22,39.9476},{-22,60},{-16,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;

  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(heaPorEmb, resInt_b.heaPor_b) annotation (Line(
      points={{100,39.9057},{-22,39.9057},{-22,60},{-28,60}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(heaPorRad, resInt_b.heaPor_b) annotation (Line(
      points={{100,-40},{32,-40},{32,40},{-22,39.9057},{-22,60},{-28,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-200,-100},
            {100,100}}), graphics));
end ZonWalInt_fraResInt_A;
