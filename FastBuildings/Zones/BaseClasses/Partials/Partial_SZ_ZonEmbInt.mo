within FastBuildings.Zones.BaseClasses.Partials;
partial model Partial_SZ_ZonEmbInt "States for zone, wall and internal mass"
  extends Partial_SZ_ZonEmb;

  parameter SI.HeatCapacity cInt = 1 "Thermal capacity of the zone";
  parameter SI.ThermalResistance rInt = 1
    "Total thermal resistance of the walls, in K/W";
  Capacitor capInt(            c=cInt) "Capacity of internal mass"
    annotation (Placement(transformation(extent={{-50,60},{-30,80}})));
  Resistance             resInt(r=rInt) "Resistance from zone to internal mass"
    annotation (Placement(transformation(extent={{-20,30},{0,50}})));
equation
  connect(capInt.heaPor,resInt. heaPor_a) annotation (Line(
      points={{-40,60},{-40,40},{-20,40}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInt.heaPor_b, capZon.heaPor) annotation (Line(
      points={{0,40},{20,40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resEmbInt.heaPor_a, capZon.heaPor) annotation (Line(
      points={{30,40},{20,40},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-200,
            -100},{100,100}}), graphics));
end Partial_SZ_ZonEmbInt;
