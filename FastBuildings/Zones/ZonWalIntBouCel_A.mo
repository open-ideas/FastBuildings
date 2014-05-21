within FastBuildings.Zones;
model ZonWalIntBouCel_A
  "with BoundCap, heaPorRad en heaPorEmb connected to capInt, additional infiltration"
  extends ZonWalInt_A;
  extends BaseClasses.Partials.Partial_BoundCap;

  parameter SI.ThermalResistance rInf = 1
    "Total thermal resistance of infiltration and static heat losses, in K/W";
  parameter SI.ThermalResistance rBouCel = 1 "resistance to cellar";
  parameter SI.HeatCapacity cBouCel = 1
    "Thermal capacity of the embedded system";

  BaseClasses.Resistance resInf(r=rInf) "Infiltration (and static heat loss)"
    annotation (Placement(transformation(extent={{-70,-30},{-50,-10}})));
  HT.Sources.PrescribedTemperature preTBouCel
    "Prescribed boundary temperature to cellar" annotation (Placement(
        transformation(
        extent={{-6,-6},{6,6}},
        rotation=0,
        origin={-178,-72})));
  BaseClasses.Resistance resBouCelExt(r=rBouCel/2)
    "Resistance for heat losses to cellar" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-156,-72})));
  BaseClasses.Resistance resBouCelInt(r=rBouCel/2)
    "Resistance for heat losses to cellar" annotation (Placement(transformation(
        extent={{-10,-10},{10,10}},
        rotation=0,
        origin={-98,-72})));
  BaseClasses.Capacitor capBouCel(c=cBouCel)
    annotation (Placement(transformation(extent={{-138,-72},{-118,-52}})));
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
      points={{-190.039,79.0248},{-190.039,0},{-190,0},{-190,-40},{-185.2,-40},
          {-185.2,-40}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(resBouInt.heaPor_b, senTZon.port) annotation (Line(
      points={{-88,-40},{20,-40},{20,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(preTBouCel.port, resBouCelExt.heaPor_a) annotation (Line(
      points={{-172,-72},{-166,-72}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resBouCelExt.heaPor_b, capBouCel.heaPor) annotation (Line(
      points={{-146,-72},{-128,-72}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resBouCelInt.heaPor_a, capBouCel.heaPor) annotation (Line(
      points={{-108,-72},{-128,-72}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resBouCelInt.heaPor_b, senTZon.port) annotation (Line(
      points={{-88,-72},{20,-72},{20,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-200,-100},
            {100,100}}), graphics));
end ZonWalIntBouCel_A;
