within FastBuildings.Examples;
model SingleZone_Inputs_defined
  "Single zone simulation based on inputs for QHeaCoo and PEle"
  extends Modelica.Icons.Example;
  inner FastBuildings.Input.SIM_Inputs simFasBui annotation(Placement(visible = true, transformation(origin = {-89.817,88.5229}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  FastBuildings.Buildings.SZ_Inputs_powEle bui(redeclare
      FastBuildings.Zones.ZonInt_B                                                    zon(
      cZon=1e6,
      cInt=1e7,
      rInt=1e-2))                                                               annotation(Placement(visible = true, transformation(origin = {28.1699,29.7255}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine TAmbSin(
    amplitude=8,
    freqHz=1/86400,
    offset=283)                                                                         annotation(Placement(visible = true, transformation(origin = {75.8688,-55.8229}, extent = {{-5.8688,-6.1771},{5.8688,6.1771}}, rotation = 0)));
  Modelica.Blocks.Sources.Step qHea(height=1000, startTime=86400)     annotation(Placement(visible = true, transformation(origin = {54.3799,-81.3987}, extent = {{-6.3799,-6.6013},{6.3799,6.6013}}, rotation = 0)));
  Modelica.Blocks.Math.Max max1 annotation(Placement(visible = true, transformation(origin = {65.5952,-12.2887}, extent = {{-5.59521,-5.71125},{5.59521,5.71125}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine IGloHor(amplitude=600, freqHz=1/86400)       annotation(Placement(visible = true, transformation(origin = {44.5922,-3.7885}, extent = {{-4.5922,-4.2115},{4.5922,4.2115}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const(k=0)   annotation(Placement(visible = true, transformation(origin = {44.6981,-21.4166}, extent = {{-4.6981,-4.5834},{4.6981,4.5834}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse powElePul(
    amplitude=500,
    period=86400,
    startTime=25000)                                                                          annotation(Placement(visible = true, transformation(origin = {20.6114,-81.648}, extent = {{-6.61139,-6.35201},{6.61144,6.352}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k=273.15 + 20)   annotation(Placement(visible = true, transformation(origin = {-39.3019,-77.4166}, extent = {{-4.6981,-4.5834},{4.6981,4.5834}}, rotation = 0)));
equation
  connect(IGloHor.y, max1.u1)
                             annotation(Line(points={{49.6436,-3.7885},{52,
          -3.7885},{52,-8},{52,-8.86195},{58.8809,-8.86195}}));
  connect(const.y, max1.u2)
                           annotation(Line(points={{49.866,-21.4166},{54,
          -21.4166},{54,-15.7154},{58.8809,-15.7154}},                                                                color = {0,0,127}, smooth = Smooth.None));
  simFasBui.TAmb = TAmbSin.y;
  simFasBui.qHeaCoo = qHea.y;
  simFasBui.powEle = powElePul.y;
  simFasBui.TSet = const1.y;
  simFasBui.irr[1] = max1.y;
  annotation (Icon(coordinateSystem(
        extent={{-100,-100},{100,100}},
        preserveAspectRatio=true,
        initialScale=0.1,
        grid={2,2})), Diagram(coordinateSystem(
        extent={{-100,-100},{100,100}},
        preserveAspectRatio=true,
        initialScale=0.1,
        grid={2,2})));
end SingleZone_Inputs_defined;
