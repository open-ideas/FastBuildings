within FastBuildings.Zones.Windows;
model Window_gA "Simple window, thermal gains are Irr * gA"

  extends PartialWindow;

  parameter Real gA=1 "gA value of the window(s)";

equation
  heaPor1.Q_flow = -irr * gA;
  annotation(Diagram(graphics),
                      Icon(graphics));
end Window_gA;
