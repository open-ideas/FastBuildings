within FastBuildings.Zones_stochastic;
model ZonWalInt_A "heaPorRad and heaPorEmb connected to capInt"
  extends BaseClasses.Partials.Partial_SZ_ZonWalInt;

equation
  for i in 1:nIrr loop
    connect(win[i].heaPor1, capZon.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{-30,40},{20,40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;
  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(heaPorEmb, capInt.heaPor) annotation (Line(
      points={{100,39.9057},{80,40},{80,40},{60,40},{60,50},{-40,50},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(heaPorRad, capInt.heaPor) annotation (Line(
      points={{100,-40},{60,-40},{60,50},{-40,50},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-100},
            {100,100}}), graphics));
end ZonWalInt_A;
