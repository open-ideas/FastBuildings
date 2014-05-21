within FastBuildings.Zones.BaseClasses;
model Wall_1C "Single state wall"

  parameter SI.HeatCapacity cWal = 1 "Thermal capacity of the wall";
  parameter SI.ThermalResistance rWal = 1
    "Total thermal resistance of the wall, in K/W";

  Capacitor capWal(c=cWal)
    annotation (Placement(transformation(extent={{-10,0},{10,20}})));
  Resistance resInt(r=rWal/2)
    annotation (Placement(transformation(extent={{-48,-10},{-28,10}})));
  Resistance resExt(r=rWal/2)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));
  HT.Interfaces.HeatPort_a heaPor_a
    annotation (Placement(transformation(extent={{-110,-10},{-90,10}})));
  HT.Interfaces.HeatPort_b heaPor_b
    annotation (Placement(transformation(extent={{90,-10},{110,10}})));
equation
  connect(capWal.heaPor, resInt.heaPor_b) annotation (Line(
      points={{5.55112e-16,-5.55112e-16},{-14,-5.55112e-16},{-14,0},{-28,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(capWal.heaPor, resExt.heaPor_a) annotation (Line(
      points={{5.55112e-16,-5.55112e-16},{16,-5.55112e-16},{16,5.55112e-16},{30,
          5.55112e-16}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInt.heaPor_a, heaPor_a) annotation (Line(
      points={{-48,0},{-100,0}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resExt.heaPor_b, heaPor_b) annotation (Line(
      points={{50,0},{100,0}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}), graphics));
end Wall_1C;
