within FastBuildings.Zones;
model ZonWalInt_H
  "with preTBou, heaPorRad en heaPorEmb connected to capInt, additional infiltration"
  extends ZonWalInt_A;
  extends BaseClasses.Partials.Partial_Bound;

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
  connect(simFasBui.TSet, preTBou.T) annotation (Line(
      points={{-190.039,79.0248},{-190.039,0},{-190,0},{-190,-80},{-149.2,-80},
          {-149.2,-80}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(resBou.heaPor_b, senTZon.port) annotation (Line(
      points={{-100,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-200,
            -100},{100,100}}),
                         graphics));
end ZonWalInt_H;
