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
                      Icon(graphics={
        Polygon(
          points={{-50,76},{0,56},{4,56},{4,-24},{-50,-4},{-50,76}},
          smooth=Smooth.None,
          pattern=LinePattern.None,
          fillColor={255,255,170},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,0}),
        Polygon(
          points={{4,36},{50,16},{50,-36},{20,-24},{4,-24},{4,36}},
          smooth=Smooth.None,
          pattern=LinePattern.None,
          fillColor={179,179,179},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,0}),
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
        Line(
          points={{4,56},{4,-24}},
          color={0,0,0},
          thickness=0.5,
          smooth=Smooth.None)}));
end PartialWindow;
