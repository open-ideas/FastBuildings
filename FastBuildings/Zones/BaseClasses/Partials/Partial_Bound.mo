within FastBuildings.Zones.BaseClasses.Partials;
partial model Partial_Bound
  "Partial model for heat losses to a boundary with prescribed temperature"

  parameter SI.ThermalResistance rBou = 1
    "Total thermal resistance to the boundary, in K/W";
  HT.Sources.PrescribedTemperature
                              preTBou "Prescribed boundary temperature"
    annotation (Placement(transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-142,-80})));
  Resistance resBou(r=rBou)
    "Resistance for heat losses to a prescribed boundary"
    annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-110,-80})));
equation
  connect(preTBou.port, resBou.heaPor_a) annotation (Line(
      points={{-136,-80},{-120,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-160,
            -100},{100,100}}),
                      graphics), Icon(coordinateSystem(extent={{-160,-100},{100,
            100}})));
end Partial_Bound;
