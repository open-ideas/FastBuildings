within FastBuildings.Zones.BaseClasses;
model Capacitor "Lumped thermal capacity"

  parameter SI.HeatCapacity c "Heat capacity of element (= cp*m)" annotation(Placement(visible = true, transformation(origin = {115.896,-84.5547}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  parameter SI.Temperature TSta = 293.15
    "Initial temperature for the capacity, fixed=true";
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heaPor(T(start = TSta, fixed = true)) annotation(Placement(visible = true, transformation(origin={-0.42165,
            -100.28},                                                                                                    extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin={0,-100},             extent={{-10,-10},
            {10,10}},                                                                                                    rotation = 0)));
equation
  c * der(heaPor.T) = heaPor.Q_flow;
  annotation(Diagram, Icon(graphics={  Text(rotation = 0, lineColor = {0,0,255}, fillColor = {0,0,0}, pattern = LinePattern.Solid,
            fillPattern =                                                                                                   FillPattern.None,
            lineThickness =                                                                                                   0.25, extent = {{-130.804,110.853},{129.196,59.8534}}, textString = "%name"),
        Line(
          points={{0,-98},{0,0}},
          color={95,95,95},
          smooth=Smooth.None,
          thickness=0.5),
        Line(
          points={{-60,0},{60,0}},
          color={95,95,95},
          smooth=Smooth.None,
          thickness=1),
        Line(
          points={{-60,40},{60,40}},
          color={95,95,95},
          smooth=Smooth.None,
          thickness=1)}));
end Capacitor;
