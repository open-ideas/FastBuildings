within FastBuildings.Zones;
model ZonWal_C
  "heaPorRad and heaPorEmb connected to capWal, additional infiltration"
  extends ZonWal_A;

  parameter SI.ThermalResistance rInf = 1
    "Total thermal resistance of infiltration and static heat losses, in K/W";
  BaseClasses.Resistance resInf(r=rInf) "Infiltration (and static heat loss)"
    annotation (Placement(transformation(extent={{-70,-50},{-50,-30}})));
equation
  connect(resInf.heaPor_b, capZon.heaPor) annotation (Line(
      points={{-50,-40},{20,-40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInf.heaPor_a, preTAmb.port) annotation (Line(
      points={{-70,-40},{-112,-40},{-112,0},{-130,0}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,
            -100},{100,100}}), graphics));
end ZonWal_C;
