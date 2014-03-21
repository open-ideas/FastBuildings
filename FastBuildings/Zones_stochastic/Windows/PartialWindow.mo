within FastBuildings.Zones_stochastic.Windows;
partial model PartialWindow "Partial window model"

  Modelica.Blocks.Interfaces.RealInput irr annotation(Placement(visible = true, transformation(origin={-98.824,
            -0.34941},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin={-98.824,
            -0.34941},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b heaPor1
                                                             annotation(Placement(visible = true, transformation(origin={100.913,
            -0.52412},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin={100.913,
            -0.52412},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0)));

  annotation(Diagram(graphics),
                      Icon(graphics={
        Rectangle(
          extent={{-60,80},{60,-80}},
          lineColor={95,95,95},
          lineThickness=0.5),
        Line(
          points={{-4,80},{-4,-80}},
          color={95,95,95},
          smooth=Smooth.None),
        Line(
          points={{4,80},{4,-80}},
          color={95,95,95},
          smooth=Smooth.None),
        Line(
          points={{-60,4},{60,4}},
          color={95,95,95},
          smooth=Smooth.None),
        Line(
          points={{-60,-4},{60,-4}},
          color={95,95,95},
          smooth=Smooth.None)}));
end PartialWindow;
