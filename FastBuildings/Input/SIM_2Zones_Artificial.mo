within FastBuildings.Input;
model SIM_2Zones_Artificial
  extends SIM_Inputs_2Zones;
  Modelica.Blocks.Sources.Sine TAmbSin(amplitude = 8, f = 1 / 86400, offset = 283) annotation(Placement(visible = true, transformation(origin={39.8688,
            4.1771},                                                                                                    extent = {{-5.8688,-6.1771},{5.8688,6.1771}}, rotation = 0)));
  Modelica.Blocks.Sources.Step qHea(               startTime = 86400, height=
        20000)                                                        annotation(Placement(visible = true, transformation(origin={-75.6201,
            -51.3987},                                                                                                    extent = {{-6.3799,-6.6013},{6.3799,6.6013}}, rotation = 0)));
  Modelica.Blocks.Math.Max[nIrr] max1 annotation(Placement(visible = true, transformation(origin={29.5952,
            47.7113},                                                                                                  extent = {{-5.59521,-5.71125},{5.59521,5.71125}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine[nIrr] IGloHor(each amplitude = 600, each f = 1 / 86400) annotation(Placement(visible = true, transformation(origin={8.5922,
            56.2115},                                                                                                    extent = {{-4.5922,-4.2115},{4.5922,4.2115}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant[nIrr] const(each k = 0) annotation(Placement(visible = true, transformation(origin={8.6981,
            38.5834},                                                                                                    extent = {{-4.6981,-4.5834},{4.6981,4.5834}}, rotation = 0)));
  Modelica.Blocks.Sources.Pulse powElePul(amplitude = 500, period = 86400, startTime = 25000) annotation(Placement(visible = true, transformation(origin={-15.3886,
            -21.648},                                                                                                    extent = {{-6.61139,-6.35201},{6.61144,6.352}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 273.15 + 20) annotation(Placement(visible = true, transformation(origin={-75.3019,
            -17.4166},                                                                                                    extent = {{-4.6981,-4.5834},{4.6981,4.5834}}, rotation = 0)));
equation
  connect(IGloHor.y,max1.u1) annotation(Line(points={{13.6436,56.2115},{16,
          56.2115},{16,52},{16,51.138},{22.8809,51.138}}));
  connect(powElePul.y,powEle) annotation(Line(points={{-8.11602,-21.648},{39.5,
          -21.648},{39.5,-104.427}},                                                                      color = {0,0,127}, smooth = Smooth.None));
  connect(qHea.y,qHeaCoo) annotation(Line(points={{-68.6022,-51.3987},{79.5,
          -51.3987},{79.5,-104.427}},                                                                    color = {0,0,127}, smooth = Smooth.None));
  connect(TAmbSin.y,TAmb) annotation(Line(points={{46.3245,4.1771},{52,4.1771},
          {52,-80.4273},{105.5,-80.4273}},                                                                            color = {0,0,127}, smooth = Smooth.None));
  connect(max1.y,irr) annotation(Line(points={{35.7499,47.7113},{48,47.7113},{
          48,-40.4273},{105.5,-40.4273}},                                                                            color = {0,0,127}, smooth = Smooth.None));
  connect(const.y,max1.u2) annotation(Line(points={{13.866,38.5834},{18,38.5834},
          {18,44.2846},{22.8809,44.2846}},                                                                              color = {0,0,127}, smooth = Smooth.None));
  connect(const1.y,TSet) annotation(Line(points={{-70.134,-17.4166},{-0.5,
          -17.4166},{-0.5,-104.427}},                                                                   color = {0,0,127}, smooth = Smooth.None));
  connect(qHea.y, qHeaCoo1) annotation (Line(
      points={{-68.6022,-51.3987},{-32.5,-51.3987},{-32.5,-104.427}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(qHea.y, qHeaCoo2) annotation (Line(
      points={{-68.6022,-51.3987},{-60.5,-51.3987},{-60.5,-104.427}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100, -100}, {100, 100}}), graphics),
    experiment(StartTime = 0, StopTime = 1, Tolerance = 1e-6, Interval = 0.002));
end SIM_2Zones_Artificial;