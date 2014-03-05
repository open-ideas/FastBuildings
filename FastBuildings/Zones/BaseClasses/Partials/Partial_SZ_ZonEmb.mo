within FastBuildings.Zones.BaseClasses.Partials;
partial model Partial_SZ_ZonEmb "States for zone and embedded heating"
  extends Partial_SZ_Zon;

  parameter SI.HeatCapacity cEmb = 1 "Thermal capacity of the embedded system";
  parameter SI.ThermalResistance rEmb = 1
    "Total thermal resistance of the embedded system, in K/W";
  parameter Real posCapEmb(min=0, max=1) = 0.5
    "Position of the capacity in the embedded system.  0=interor, 1=exterior";

  Capacitor capEmb(c=cEmb) "Thermal capacity of the embedded system"
    annotation (Placement(transformation(extent={{50,60},{70,80}})));
  Resistance resEmbExt(r=rEmbExt)
    "Thermal resistance of embedded heating, exterior"
    annotation (Placement(transformation(extent={{70,30},{90,50}})));
  Resistance resEmbInt(r=rEmbInt)
    "Thermal resistance of embedded heating, interior"
    annotation (Placement(transformation(extent={{30,30},{50,50}})));
protected
  parameter SI.ThermalResistance rEmbInt = posCapEmb * rEmb
    "Thermal resistance of the interior resistance in K/W";
  parameter SI.ThermalResistance rEmbExt = (1-posCapEmb) * rEmb
    "Thermal resistance of the exterior resistance in K/W";

equation
  connect(resEmbExt.heaPor_b, heaPorEmb) annotation (Line(
      points={{90,40},{94,40},{94,39.9057},{100,39.9057}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resEmbExt.heaPor_a, capEmb.heaPor) annotation (Line(
      points={{70,40},{60,40},{60,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resEmbInt.heaPor_b, capEmb.heaPor) annotation (Line(
      points={{50,40},{60,40},{60,60}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=true, extent={{-200,-100},
            {100,100}}), graphics));
end Partial_SZ_ZonEmb;
