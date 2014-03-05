within FastBuildings.Zones;
model ZonWalInt_F "Infiltration, ground heat losses connected to capInt"
  extends ZonWalInt_B;
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_Ground;
equation
  connect(resGro.heaPor_a, heaPorRad) annotation (Line(
      points={{-40,-46},{-40,-40},{100,-40}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,
            -100},{100,100}}),
                         graphics));
end ZonWalInt_F;
