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
                                                                                                    Text(origin={
              0.3881,85.1468},                                                                                                    fillColor=
              {0,0,255},                                                                                                    extent={{
              -99.6119,13.1468},{99.6119,-13.1468}},
          textString="%name",
          lineColor={0,0,255}),
        Ellipse(
          extent={{-32,24},{30,-34}},
          lineColor={0,0,255},
          fillPattern=FillPattern.Solid,
          fillColor={0,0,255}),
        Line(
          points={{14,26},{34,54}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None),
        Line(
          points={{36,-8},{38,-8},{74,-12}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None),
        Line(
          points={{16,-34},{30,-66}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None),
        Line(
          points={{-18,-34},{-34,-64}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None),
        Line(
          points={{-36,-6},{-76,-4}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None),
        Line(
          points={{-22,24},{-40,52}},
          color={0,0,255},
          thickness=0.5,
          smooth=Smooth.None)}));
end Partial_SIM;
