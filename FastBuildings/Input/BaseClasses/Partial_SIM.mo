within FastBuildings.Input.BaseClasses;
partial model Partial_SIM
  parameter Integer nIrr(min = 1) = 1 "Number of irradiation vectors";
  Modelica.Blocks.Interfaces.RealOutput TAmb "Ambient temperature" annotation(Placement(visible = true, transformation(origin = {105.5,-80.4273}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {109.608,-79.7516}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput qHeaCoo "Heating/cooling" annotation(Placement(visible = true, transformation(origin = {79.5,-104.427}, extent = {{-10,-10},{10,10}}, rotation = 270), iconTransformation(origin = {79.6078,-109.752}, extent = {{-10,-10},{10,10}}, rotation = 270)));
  Modelica.Blocks.Interfaces.RealOutput powEle "Electricity consumption" annotation(Placement(visible = true, transformation(origin = {39.5,-104.427}, extent = {{-10,-10},{10,10}}, rotation = 270), iconTransformation(origin = {39.6078,-109.752}, extent = {{-10,-10},{10,10}}, rotation = 270)));
  Modelica.Blocks.Interfaces.RealOutput TSet "Zone temperature set point" annotation(Placement(visible = true, transformation(origin = {-0.5,-104.427}, extent = {{-10,-10},{10,10}}, rotation = 270), iconTransformation(origin = {-0.3922,-109.752}, extent = {{-10,-10},{10,10}}, rotation = 270)));
  Modelica.Blocks.Interfaces.RealOutput[nIrr] irr
    "Array with irradiation inputs"                                               annotation(Placement(visible = true, transformation(origin = {105.5,-40.4273}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {109.608,-39.7516}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  annotation(defaultComponentName = "sim", defaultComponentPrefixes = "inner", missingInnerMessage = "
Your model is using an outer \"sim\" component but
an inner \"sim\" component is not defined.
For simulation drag a sim from FastBuildings.Input 
into your model to specify your Simulation Input Manager.", Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics), Icon(coordinateSystem(extent={{-100,
            -100},{100,100}},                                                                                                    preserveAspectRatio=false,   initialScale = 0.1, grid = {2,2}), graphics={
        Rectangle(
          extent={{-60,50},{60,-50}},
          lineColor={95,95,95},
          fillPattern=FillPattern.Solid,
          fillColor={95,95,95}),
        Rectangle(
          extent={{-50,40},{50,-30}},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255},
          pattern=LinePattern.None),
        Rectangle(
          extent={{-10,-60},{10,-50}},
          pattern=LinePattern.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,0}),
        Polygon(
          points={{-40,-60},{-40,-60}},
          pattern=LinePattern.None,
          smooth=Smooth.None,
          fillColor={0,0,0},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-40,-60},{40,-60},{50,-70},{-52,-70},{-40,-60}},
          smooth=Smooth.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{44,-26},{38,14}},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{34,-26},{28,-14}},
          fillColor={0,127,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{24,-26},{18,30}},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{14,-26},{8,10}},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{4,-26},{-2,-14}},
          fillColor={0,127,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Line(
          points={{-6,-26},{-46,-26}},
          color={0,0,127},
          smooth=Smooth.None),
        Text(
          extent={{-50,40},{-20,0}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          textStyle={TextStyle.Italic},
          fontName="Bookman Old Style",
          textString="i"),
        Text(
          extent={{-100,100},{100,60}},
          lineColor={0,0,193},
          textString="%name")}));
end Partial_SIM;
