within FastBuildings.Zones.BaseClasses;
model Wall_1C "Single state wall"

  extends FastBuildings.Zones.BaseClasses.Partials.TwoPort;
  parameter SI.HeatCapacity c = 1 "Thermal capacity of the wall";

  Capacitor capWal(c=c)
    annotation (Placement(transformation(extent={{-10,0},{10,20}})));
  Resistance resInt(r=r/2)
    annotation (Placement(transformation(extent={{-48,-10},{-28,10}})));
  Resistance resExt(r=r/2)
    annotation (Placement(transformation(extent={{30,-10},{50,10}})));

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
