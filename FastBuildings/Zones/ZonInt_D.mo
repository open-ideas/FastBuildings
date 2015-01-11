within FastBuildings.Zones;
model ZonInt_D "With heat losses to the ground"
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_SZ_ZonInt;
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_Ground;

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
  connect(resGro.heaPor_a, senTZon.port) annotation (Line(
      points={{-40,-46},{-40,-20},{20,-20},{20,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-200,
            -100},{100,100}}),
                         graphics));
end ZonInt_D;
