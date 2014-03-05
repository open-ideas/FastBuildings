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
into your model to specify your Simulation Input Manager.", Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics), Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics={  Ellipse(origin = {-16.2795,-2.51383}, extent = {{-15.3545,13.7557},{40.6536,-39.7386}}, endAngle = 360),Line(origin = {35.7667,32.6395}, points={{
              -14.5098,-17.7778},{10.2333,11.3605}}),                                                                                                    Line(origin = {-32.2373,35.083}, points={{
              10.9804,-21.5686},{-11.7627,10.917}}),                                                                                                    Line(origin = {-70.357,-0.181041}, points={{
              22.3529,-5.4902},{-13.643,-3.81896}}),                                                                                                    Line(origin = {-56.8326,-62.6043}, points={{
              26.9885,18.6224},{-1.1674,-9.3957}}),                                                                                                    Line(origin = {42.2926,-65.0779}, points={{
              -21.4379,25.098},{3.7074,-8.9221}}),                                                                                                    Line(origin = {60.0704,-13.7557}, points = {{-20.915,2.61438},{20.915,3.66013}}),Text(origin={
              -0.6119,74.1468},                                                                                                    fillColor = {0,0,255}, extent={{
              -98.6119,24.1468},{98.6119,-24.1468}},                                                                                                    textString = "%name")}));
end Partial_SIM;
