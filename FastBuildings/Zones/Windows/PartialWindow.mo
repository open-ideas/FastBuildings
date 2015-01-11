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
                      Icon(coordinateSystem(preserveAspectRatio=false, extent={
            {-100,-100},{100,100}}),
                           graphics={
        Rectangle(
          extent={{-60,80},{60,-80}},
          lineColor={95,95,95},
          lineThickness=0.5),
        Line(
          points={{0,56},{20,56},{20,76},{50,76}},
          color={95,95,95},
          smooth=Smooth.None),
        Line(
          points={{0,-24},{20,-24},{20,-74},{20,-74},{50,-74}},
          color={95,95,95},
          smooth=Smooth.None),
        Line(
          points={{0,56},{0,62},{0,96},{50,96}},
          color={95,95,95},
          smooth=Smooth.None),
        Line(
          points={{0,-24},{0,-94},{50,-94}},
          color={95,95,95},
          smooth=Smooth.None),
        Text(
          extent={{-100,102},{100,82}},
          lineColor={95,95,95},
          lineThickness=0.5,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          textString="%name")}));
end PartialWindow;
