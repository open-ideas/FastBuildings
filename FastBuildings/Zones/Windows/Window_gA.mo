within FastBuildings.Zones.Windows;
model Window_gA "Simple window, thermal gains are Irr * gA"

  extends PartialWindow;

  parameter Real gA=1 "gA value of the window(s)";

equation
  heaPor1.Q_flow = -irr * gA;
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
end Window_gA;
