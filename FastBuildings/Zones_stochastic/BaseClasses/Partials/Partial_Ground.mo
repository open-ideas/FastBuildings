within FastBuildings.Zones_stochastic.BaseClasses.Partials;
partial model Partial_Ground
  "Partial model for heat losses to the ground, with fixed TGro"

  parameter SI.ThermalResistance rGro = 1
    "Total thermal resistance to the ground, in K/W";
  HT.Sources.FixedTemperature preTGro(T=285.15) "Fixed ground temperature"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=90,
        origin={-40,-90})));
  Resistance resGro(r=rGro) "Resistance for heat losses to the ground"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=270,
        origin={-40,-56})));
equation
  connect(preTGro.port, resGro.heaPor_b) annotation (Line(
      points={{-40,-80},{-40,-66}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(graphics));
end Partial_Ground;
