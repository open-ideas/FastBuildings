within FastBuildings.Zones.BaseClasses.Partials;
partial model Partial_SZ_ZonWalInt_fraResInt
  "States for zone, wall and internal mass, splitted resInt"
  extends Partial_SZ_ZonWal;

  parameter SI.HeatCapacity cInt = 1 "Thermal capacity of the zone";
  parameter SI.ThermalResistance rInt = 1
    "Total thermal resistance of the walls, in K/W";

  parameter Real fraResInt = 0.5
    "Fraction of resInt that is attributed to resInt1";

  Capacitor capInt(            c=cInt) "Capacity of internal mass"
    annotation (Placement(transformation(extent={{-74,60},{-54,80}})));
  Resistance resInt_b(r=(1 - fraResInt)*rInt)
    "Inside resistance from zone to internal mass"
    annotation (Placement(transformation(extent={{-48,50},{-28,70}})));
  Resistance resInt_a(r=fraResInt*rInt)
    "Outside resistance from zone to internal mass"
    annotation (Placement(transformation(extent={{-16,50},{4,70}})));
equation
  connect(capInt.heaPor, resInt_b.heaPor_a) annotation (Line(
      points={{-64,60},{-48,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInt_a.heaPor_b, capZon.heaPor) annotation (Line(
      points={{4,60},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInt_a.heaPor_a, resInt_b.heaPor_b) annotation (Line(
      points={{-16,60},{-28,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-200,
            -100},{100,100}}), graphics));
end Partial_SZ_ZonWalInt_fraResInt;
