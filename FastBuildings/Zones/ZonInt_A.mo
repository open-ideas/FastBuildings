within FastBuildings.Zones;
model ZonInt_A "States for zone and internal mass"
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_SZ_ZonInt;

equation
  connect(capInt.heaPor, resInt.heaPor_a) annotation (Line(
      points={{-40,60},{-20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInt.heaPor_b, capZon.heaPor) annotation (Line(
      points={{0,60},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorEmb, capInt.heaPor) annotation (Line(
      points={{100,39.9057},{76,39.9057},{76,40},{46,40},{46,50},{-40,50},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorRad, capInt.heaPor) annotation (Line(
      points={{100,-40},{46,-40},{46,50},{-40,50},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));
  for i in 1:nIrr loop
    connect(win[i].heaPor1, capZon.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{20,39.9476},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-100},
            {100,100}}), graphics));
end ZonInt_A;
