within FastBuildings.Zones.Windows;
model Window_gA_2
  "Simple window, thermal gains are Irr * gA,  2 heatPorts to split the thermal flux"

  extends PartialWindow;

  parameter Real gA=1 "gA value of the window(s)";
  parameter Real fraHeaPor1(min=0, max=1) = 0.5
    "Fraction of heat flux to heaPor1";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_b heaPor2
                                                             annotation(Placement(visible = true, transformation(origin={98.913,
            -40.5241},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin={100.913,
            -40.5241},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  heaPor1.Q_flow = -irr * gA * fraHeaPor1;
  heaPor2.Q_flow = -irr * gA * (1-fraHeaPor1);

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
end Window_gA_2;
