within FastBuildings.Zones;
model ZonEmbInt_B "heaPorRad and windows connected to capInt"
  extends BaseClasses.Partials.Partial_SZ_ZonEmbInt;

equation
  for i in 1:nIrr loop
  connect(win[i].heaPor1, capInt.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{-40,39.9476},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;
  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(heaPorRad, capInt.heaPor) annotation (Line(
      points={{100,-40},{60,-40},{60,20},{-40,20},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));

  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-200,-100},
            {100,100}}), graphics));
end ZonEmbInt_B;
