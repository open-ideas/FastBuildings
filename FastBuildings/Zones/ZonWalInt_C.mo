within FastBuildings.Zones;
model ZonWalInt_C "Ground heat losses, connected to capZon"
  extends ZonWalInt_A;
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_Ground;
equation
  connect(resGro.heaPor_a, capZon.heaPor) annotation (Line(
      points={{-14,-42},{-14,-28},{20,-28},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-100},
            {100,100}}), graphics));
end ZonWalInt_C;
