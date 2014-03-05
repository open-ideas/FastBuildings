within FastBuildings.Buildings;
model SZ_Controlled "Single zone building with on/off heating control"
  extends BaseClasses.PartialSingleZone(redeclare
      FastBuildings.HVAC.Heating_OnOff                                             hva);
  Users.powEleFra use
    annotation (Placement(transformation(extent={{-40,26},{-20,46}})));
equation
  connect(simFasBui.TSet, hva.TSet) annotation (Line(
      points={{-90.193,78.5462},{-90.193,-42},{18.1619,-42},{18.1619,-8.95031}},
      color={0,0,127},
      smooth=Smooth.None));

  connect(simFasBui.powEle, use.powEle) annotation (Line(
      points={{-86.193,78.5462},{-86.193,36.0261},{-40.6128,36.0261}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(use.heaPorRad, zon.heaPorRad) annotation (Line(
      points={{-20.013,32.0365},{-10,32.0365},{-10,-3.65812},{-19.0598,-3.65812}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(use.heaPorCon, zon.heaPorCon) annotation (Line(
      points={{-19.987,39.9896},{-6,39.9896},{-6,0.34188},{-19.0598,0.34188}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(graphics));
end SZ_Controlled;
