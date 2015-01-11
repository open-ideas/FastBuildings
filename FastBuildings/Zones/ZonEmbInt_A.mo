within FastBuildings.Zones;
model ZonEmbInt_A "heaPorRad connected to capInt, windows to capZon"
  extends BaseClasses.Partials.Partial_SZ_ZonEmbInt;

equation
  for i in 1:nIrr loop
    connect(win[i].heaPor1, capZon.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{-68,39.9476},{-68,40},{-60,40},{-60,52},{20,
            52},{20,60}},
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
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-100},
            {100,100}}), graphics));
end ZonEmbInt_A;
