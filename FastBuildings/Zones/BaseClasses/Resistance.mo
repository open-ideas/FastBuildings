within FastBuildings.Zones.BaseClasses;
model Resistance "Themal resistance"

  HT.Interfaces.HeatPort_a heaPor_a annotation(Placement(transformation(extent={{-110,
            -10},{-90,10}},                                                                             rotation = 0),
        iconTransformation(extent={{-110,-10},{-90,10}})));
  HT.Interfaces.HeatPort_b heaPor_b annotation(Placement(transformation(extent={{90,-10},
            {110,10}},                                                                                rotation = 0),
        iconTransformation(extent={{90,-10},{110,10}})));
  parameter SI.ThermalResistance r "Constant thermal resistance" annotation(Placement(visible = true, transformation(origin = {119.504,-85.2311}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  heaPor_a.Q_flow * r = heaPor_a.T - heaPor_b.T;
  heaPor_a.Q_flow + heaPor_b.Q_flow = 0;
  annotation(Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}), graphics), Icon(graphics={  Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid,
            fillPattern =                                                                                                   FillPattern.None,
            lineThickness =                                                                                                   0.25, extent = {{-133.961,98.903},{126.039,47.903}}, textString = "%name"),
        Rectangle(
          extent={{-34,14},{46,-16}},
          lineColor={191,0,0},
          fillColor={191,0,0},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-40,20},{40,-10}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Line(points={{40,0},{100,0}}, color={0,0,0}),
        Line(points={{-100,0},{-40,0}}, color={0,0,0})}));
end Resistance;
