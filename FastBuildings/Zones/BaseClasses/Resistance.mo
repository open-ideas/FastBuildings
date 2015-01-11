within FastBuildings.Zones.BaseClasses;
model Resistance "Themal resistance"

extends FastBuildings.Zones.BaseClasses.Partials.TwoPort;
equation
  heaPor_a.Q_flow * r = heaPor_a.T - heaPor_b.T;
  heaPor_a.Q_flow + heaPor_b.Q_flow = 0;
  annotation(Diagram(coordinateSystem(preserveAspectRatio = true, extent = {{-100,-100},{100,100}}), graphics), Icon(
        coordinateSystem(preserveAspectRatio=false, extent={{-100,-100},{100,
            100}}),                                                                                                  graphics={  Text(rotation=  0, lineColor=
              {95,95,95},                                                                                                    fillColor=
              {0,0,0},                                                                                                    pattern=
              LinePattern.Solid,
            fillPattern=FillPattern.None,
            lineThickness=0.25,                                                                                                    extent={{
              -99.961,90.903},{100,60}},
          textString="%name"), Line(
          points={{-90,0},{-60,0},{-50,-20},{-30,20},{-10,-20},{10,20},{30,-20},
              {50,20},{60,0},{90,0}},
          color={95,95,95},
          thickness=0.5,
          smooth=Smooth.None)}));
end Resistance;
