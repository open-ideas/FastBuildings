within FastBuildings.Zones;
model ZonWalIntEmb_B "additional infiltration"
  extends ZonWalIntEmb_A;

  parameter SI.ThermalResistance rInf = 1
    "Total thermal resistance of infiltration and static heat losses, in K/W";
  BaseClasses.Resistance resInf(r=rInf) "Infiltration (and static heat loss)"
    annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
equation
  connect(resInf.heaPor_b, capZon.heaPor) annotation (Line(
      points={{-50,-20},{20,-20},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInf.heaPor_a, preTAmb.port) annotation (Line(
      points={{-70,-20},{-112,-20},{-112,0},{-130,0}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,
            -100},{100,100}}),
                         graphics));
end ZonWalIntEmb_B;
