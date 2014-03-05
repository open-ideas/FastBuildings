within FastBuildings.Zones;
model ZonWalEmb_A "heaPorRad connected to capWal"
  extends BaseClasses.Partials.Partial_SZ_ZonWalEmb;
equation
  for i in 1:nIrr loop
    connect(win[i].heaPor1, capZon.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{-30,40},{20,40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;

  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{74,0},{74,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resEmbInt.heaPor_a, capZon.heaPor) annotation (Line(
      points={{30,40},{20,40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorRad, capWal.heaPor) annotation (Line(
      points={{100,-40},{-60,-40},{-60,10}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,
            -100},{100,100}}),
                         graphics));
end ZonWalEmb_A;
