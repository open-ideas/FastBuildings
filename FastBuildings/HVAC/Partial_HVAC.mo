within FastBuildings.HVAC;
partial model Partial_HVAC

  Modelica.Blocks.Interfaces.RealInput TZon annotation(Placement(visible = true, transformation(origin = {-99.578,-80.3407}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.578,-80.3407}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  HT.Interfaces.HeatPort_a heaPorRad annotation(Placement(visible = true, transformation(origin = {-100.17,-40}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.17,-40}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  HT.Interfaces.HeatPort_a heaPorCon annotation(Placement(visible = true, transformation(origin = {-99.83,0.0682}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.83,0.0682}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  //parameter Boolean booEmb = true "if true, add a heatPort for Embedded heat transfer";
  HT.Interfaces.HeatPort_b heaPorEmb annotation(Placement(visible = true, transformation(origin = {-100.614,40.944}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.83,39.9318}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics), Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics={  Rectangle(rotation=  0, lineColor=  {0,0,255}, fillColor=  {0,0,255}, pattern=  LinePattern.Solid,
            fillPattern=                                                                                                    FillPattern.None,
            lineThickness=                                                                                                    0.25, extent=  {{-99.4889,99.4889},{100.17,-100.511}}),Text(rotation=  0, lineColor=  {0,0,255}, fillColor=  {0,0,255}, pattern=  LinePattern.Solid,
            fillPattern=                                                                                                    FillPattern.None,
            lineThickness=                                                                                                    0.25, extent=  {{-74.276,28.6201},{73.5945,-24.8722}}, textString=  "hvac")}));
end Partial_HVAC;
