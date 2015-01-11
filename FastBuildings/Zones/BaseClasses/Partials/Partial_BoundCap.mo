within FastBuildings.Zones.BaseClasses.Partials;
partial model Partial_BoundCap
  "Partial model for heat losses to a boundary with prescribed temperature and with a state"

  parameter SI.ThermalResistance rBou = 1
    "Total thermal resistance to the boundary, in K/W";
  parameter SI.HeatCapacity cBou = 1 "Thermal capacity of the boundary";
  HT.Sources.PrescribedTemperature
                              preTBou "Prescribed boundary temperature"
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-178,-40})));
  Capacitor capBou(c=cBou) "State for the boundary with prescribed temperature"
    annotation (Placement(transformation(extent={{-138,-40},{-118,-20}})));
  Resistance resBouInt(r=rBou/2)
    "Resistance for heat losses to a prescribed boundary" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-98,-40})));
  Resistance resBouExt(r=rBou/2)
    "Resistance for heat losses to a prescribed boundary" annotation (Placement(
        transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-156,-40})));
equation
  connect(capBou.heaPor, resBouInt.heaPor_a) annotation (Line(
      points={{-128,-40},{-108,-40}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resBouExt.heaPor_b, capBou.heaPor) annotation (Line(
      points={{-146,-40},{-128,-40}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(preTBou.port, resBouExt.heaPor_a) annotation (Line(
      points={{-172,-40},{-166,-40}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(extent={{-200,-100},{100,100}},
          preserveAspectRatio=false),
                      graphics), Icon(coordinateSystem(extent={{-200,-100},{100,
            100}})));
end Partial_BoundCap;
