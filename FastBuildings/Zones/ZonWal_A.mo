within FastBuildings.Zones;
model ZonWal_A "heaPorEmb and heaPorRad connected to capWal"
  extends BaseClasses.Partials.Partial_SZ_ZonWal;
equation
  for i in 1:nIrr loop
    connect(win[i].heaPor1, capZon.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{-30,39.9476},{20,39.9476},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;
  connect(heaPorEmb, capWal.heaPor) annotation (Line(
      points={{100,39.9057},{60,39.9057},{60,-20},{-60,-20},{-60,10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorRad, capWal.heaPor) annotation (Line(
      points={{100,-40},{60,-40},{60,-20},{-60,-20},{-60,10}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{74,0},{74,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-100},
            {100,100}}), graphics));
end ZonWal_A;
