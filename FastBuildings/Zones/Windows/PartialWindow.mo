within FastBuildings.Zones.Windows;
partial model PartialWindow "Partial window model"

  Modelica.Blocks.Interfaces.RealInput irr annotation(Placement(visible = true, transformation(origin={-98.824,
            -0.34941},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin={-98.824,
            -0.34941},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b heaPor1
                                                             annotation(Placement(visible = true, transformation(origin={100.913,
            -0.52412},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin={100.913,
            -0.52412},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0)));

  annotation(Diagram(graphics),
                      Icon(coordinateSystem(preserveAspectRatio=false, extent={{-100,
            -100},{100,100}}),
                           graphics={
        Rectangle(
          extent={{-60,80},{60,-80}},
          lineColor={95,95,95},
          lineThickness=1),
        Text(
          extent={{-100,120},{100,92}},
          lineColor={95,95,95},
          lineThickness=0.5,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          textString="%name"),
        Line(
          points={{0,80},{0,-80}},
          color={95,95,95},
          smooth=Smooth.None),
        Line(
          points={{-60,0},{54,0},{60,0}},
          color={95,95,95},
          smooth=Smooth.None)}));
end PartialWindow;
