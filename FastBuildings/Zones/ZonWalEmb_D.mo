within FastBuildings.Zones;
model ZonWalEmb_D
  "incl. ground, heaPorRad connected to capWal, no infiltration"
  extends ZonWalEmb_A;
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_Ground;

  parameter SI.ThermalResistance rInf = 1
    "Total thermal resistance of infiltration and static heat losses, in K/W";
equation
  connect(resGro.heaPor_a, capEmb.heaPor) annotation (Line(
      points={{-14,-42},{-14,-26},{60,-26},{60,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,
            -100},{100,100}}),
                         graphics));
end ZonWalEmb_D;
