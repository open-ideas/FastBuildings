within FastBuildings.Input;
model SIM_ArtificialInput "Dummy weather and inputs "
  extends FastBuildings.Input.BaseClasses.Partial_SIM;
  Modelica.Blocks.Sources.Sine TAmbSin(amplitude = 8, freqHz = 1 / 86400, offset = 283) annotation(Placement(visible = true, transformation(origin = {75.8688,-55.8229}, extent = {{-5.8688,-6.1771},{5.8688,6.1771}}, rotation = 0)));
  Modelica.Blocks.Sources.Step qHea(height = 1000, startTime = 86400) annotation(Placement(visible = true, transformation(origin = {54.3799,-81.3987}, extent = {{-6.3799,-6.6013},{6.3799,6.6013}}, rotation = 0)));
  Modelica.Blocks.Math.Max max1 annotation(Placement(visible = true, transformation(origin = {65.5952,-12.2887}, extent = {{-5.59521,-5.71125},{5.59521,5.71125}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine IGloHor(amplitude = 600, freqHz = 1 / 86400) annotation(Placement(visible = true, transformation(origin = {44.5922,-3.7885}, extent = {{-4.5922,-4.2115},{4.5922,4.2115}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k = 0) annotation(Placement(visible = true, transformation(origin = {44.6981,-21.4166}, extent = {{-4.6981,-4.5834},{4.6981,4.5834}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse powElePul(amplitude = 500, period = 86400, startTime = 25000) annotation(Placement(visible = true, transformation(origin = {20.6114,-81.648}, extent = {{-6.61139,-6.35201},{6.61144,6.352}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 273.15 + 20) annotation(Placement(visible = true, transformation(origin = {-39.3019,-77.4166}, extent = {{-4.6981,-4.5834},{4.6981,4.5834}}, rotation = 0)));
equation
  connect(IGloHor.y,max1.u1) annotation(Line(points = {{49.6436,-3.7885},{52,-3.7885},{52,-8},{52,-8.86195},{58.8809,-8.86195}}));
  connect(powElePul.y,powEle) annotation(Line(points = {{27.884,-81.648},{39.5,-81.648},{39.5,-104.427}}, color = {0,0,127}, smooth = Smooth.None));
  connect(qHea.y,qHeaCoo) annotation(Line(points = {{61.3978,-81.3987},{79.5,-81.3987},{79.5,-104.427}}, color = {0,0,127}, smooth = Smooth.None));
  connect(TAmbSin.y,TAmb) annotation(Line(points = {{82.3245,-55.8229},{88,-55.8229},{88,-80.4273},{105.5,-80.4273}}, color = {0,0,127}, smooth = Smooth.None));
  connect(max1.y,irr[1]) annotation(Line(points = {{71.7499,-12.2887},{84,-12.2887},{84,-40.4273},{105.5,-40.4273}}, color = {0,0,127}, smooth = Smooth.None));
  connect(const.y,max1.u2) annotation(Line(points = {{49.866,-21.4166},{54,-21.4166},{54,-15.7154},{58.8809,-15.7154}}, color = {0,0,127}, smooth = Smooth.None));
  connect(const1.y,TSet) annotation(Line(points = {{-34.134,-77.4166},{-0.5,-77.4166},{-0.5,-104.427}}, color = {0,0,127}, smooth = Smooth.None));
  annotation(defaultComponentName = "sim", defaultComponentPrefixes = "inner", missingInnerMessage = "
Your model is using an outer \"sim\" component but
an inner \"sim\" component is not defined.
For simulation drag a sim from FastBuildings.Input 
into your model to specify your Simulation Input Manager.", Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics));
end SIM_ArtificialInput;
