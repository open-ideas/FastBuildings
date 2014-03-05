within FastBuildings.Zones.BaseClasses.Partials;
partial model Partial_SZ_Zon
  "Single state, only zone temperature, array of windows"
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_SZ;
  parameter Integer nIrr = 1 "Number of irradiation inputs/windows";
  parameter SI.HeatCapacity cZon = 1 "Thermal capacity of the zone";
  parameter SI.ThermalResistance rWal = 1
    "Total thermal resistance of the walls, in K/W";
  BaseClasses.Capacitor capZon(c=cZon) "Thermal capacity of the zone"
    annotation (Placement(transformation(extent={{10,60},{30,80}})));
  replaceable Windows.Window_gA[nIrr] win constrainedby Windows.PartialWindow
    "Array of window models"
    annotation (Placement(transformation(extent={{-100,30},{-80,50}})));
  BaseClasses.Resistance resWal(r=rWal)
    "Total thermal resistance of the walls, in K/W"
    annotation (Placement(transformation(extent={{-100,-10},{-80,10}})));
protected
  HT.Sources.PrescribedTemperature preTAmb
    annotation (Placement(transformation(extent={{-150,-10},{-130,10}})));
  HT.Sensors.TemperatureSensor senTZon
    annotation (Placement(transformation(extent={{50,-90},{70,-70}})));
equation
  for i in 1:nIrr loop
  end for;
  connect(simFasBui.TAmb, preTAmb.T) annotation (Line(
      points={{-179.039,82.0248},{-166,82.0248},{-166,0},{-152,0}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(simFasBui.irr, win.irr) annotation (Line(
      points={{-179.039,86.0248},{-140,86.0248},{-140,40},{-120,40},{-120,
          39.9651},{-99.8824,39.9651}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(preTAmb.port, resWal.heaPor_a) annotation (Line(
      points={{-130,0},{-100,0}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(resWal.heaPor_b, capZon.heaPor) annotation (Line(
      points={{-80,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(capZon.heaPor, senTZon.port) annotation (Line(
      points={{20,60},{20,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(senTZon.T, TZon) annotation (Line(
      points={{70,-80},{106,-80}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation(Diagram(coordinateSystem(preserveAspectRatio=true,    extent={{-200,
            -100},{100,100}}),                                                                        graphics), Documentation(info = "<html>
<p>this is a simple <u>test</u></p>
<p><ul>
<li>k</li>
<li>d</li>
<li>h</li>
</ul></p>
</html>", revisions = "<html>
<p>First version, 12/10/2011 - RDC</p>
</html>"),
    Icon(coordinateSystem(extent={{-200,-100},{100,100}})));
end Partial_SZ_Zon;
