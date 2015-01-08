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
into your model to specify your Simulation Input Manager.", Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics={
        Line(points={{-80,-30},{88,-30}}, color={0,0,0}),
        Line(points={{-76,-68},{-46,-30}}, color={0,0,0}),
        Line(points={{-42,-68},{-12,-30}}, color={0,0,0}),
        Line(points={{-8,-68},{22,-30}},  color={0,0,0}),
        Line(points={{28,-68},{58,-30}}, color={0,0,0}),
        Rectangle(
          extent={{-60,76},{60,-24}},
          lineColor={95,95,95},
          fillPattern=FillPattern.Solid,
          fillColor={95,95,95}),
        Rectangle(
          extent={{-50,66},{50,-4}},
          fillPattern=FillPattern.Solid,
          fillColor={255,255,255},
          pattern=LinePattern.None),
        Rectangle(
          extent={{-10,-34},{10,-24}},
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
          points={{-40,-34},{40,-34},{50,-44},{-52,-44},{-40,-34}},
          smooth=Smooth.None,
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{44,0},{38,40}},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{34,0},{28,12}},
          fillColor={0,127,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{24,0},{18,56}},
          fillColor={0,0,127},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{14,0},{8,36}},
          fillColor={175,175,175},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Rectangle(
          extent={{4,0},{-2,12}},
          fillColor={0,127,255},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Line(
          points={{-6,0},{-46,0}},
          color={0,0,127},
          smooth=Smooth.None),
        Text(
          extent={{-50,66},{-20,26}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid,
          textStyle={TextStyle.Italic},
          fontName="Bookman Old Style",
          textString="i")}));
end Partial_SIM;
