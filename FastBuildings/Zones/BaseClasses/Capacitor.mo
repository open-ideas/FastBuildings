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
        Rectangle(
          extent={{-22,-36},{34,-52}},
          fillColor={191,0,0},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{-22,-10},{34,-26}},
          fillColor={191,0,0},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Line(points={{0,-34},{0,-100}},color={0,0,0}),
        Rectangle(
          extent={{-28,-30},{28,-46}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Rectangle(
          extent={{-28,-4},{28,-20}},
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid)}));
end Capacitor;
