within FastBuildings.Zones_stochastic;
model ZonWalIntEmb_A "Embedded connected to capZon, heaPorRad to capInt"
  extends BaseClasses.Partials.Partial_SZ_ZonWalIntEmb;
equation
  connect(resEmbInt.heaPor_a, capZon.heaPor) annotation (Line(
      points={{30,40},{20,40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorRad, capInt.heaPor) annotation (Line(
      points={{100,-40},{0,-40},{0,48},{-40,48},{-40,60}},
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
end ZonWalIntEmb_A;
