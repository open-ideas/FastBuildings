within FastBuildings.Zones_stochastic;
model ZonWalEmb_B "heaPorRad connected to capWal, additional infiltration"
  extends ZonWalEmb_A;

  parameter SI.ThermalResistance rInf = 1
    "Total thermal resistance of infiltration and static heat losses, in K/W";
  BaseClasses.Resistance resInf(r=rInf) "Infiltration (and static heat loss)"
    annotation (Placement(transformation(extent={{-100,-70},{-80,-50}})));
equation
  connect(resInf.heaPor_b, capZon.heaPor) annotation (Line(
      points={{-80,-60},{20,-60},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInf.heaPor_a, preTAmb.port) annotation (Line(
      points={{-100,-60},{-112,-60},{-112,0},{-130,0}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-100},
            {100,100}}), graphics));
end ZonWalEmb_B;
