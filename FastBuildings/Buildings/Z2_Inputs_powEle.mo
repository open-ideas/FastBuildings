within FastBuildings.Buildings;
model Z2_Inputs_powEle
  "2-zone building, with HVAC and internal gains all read from inputs"
  extends FastBuildings.Buildings.BaseClasses.Partial2Zone(redeclare
      FastBuildings.HVAC.Heating_Input                                                                     hva);
  replaceable FastBuildings.Users.powEleFra use annotation(Placement(visible = true, transformation(origin={-29.6923,
            31.3162},                                                                                                    extent = {{-10,-10},{10,10}}, rotation = 0)));
equation
  connect(use.heaPorRad,zon1.heaPorRad) annotation(Line(points={{-19.7053,
          27.3527},{-5.47009,27.3527},{-5.47009,-4.10256},{-19.0598,-4.10256},{
          -19.0598,-3.65812}}));
  connect(use.heaPorCon,zon1.heaPorCon) annotation(Line(points={{-19.6793,
          35.3058},{-7.86325,35.3058},{-7.86325,0.683761},{-18.4615,0.683761},{
          -18.4615,0.34188},{-19.0598,0.34188}}));
  connect(simFasBui.qHeaCoo,hva.qHeaCoo) annotation(Line(points={{-82.193,
          78.5462},{-82.193,50},{2,50},{2,8.72124},{8.0938,8.72124}},                                                                    color = {0,0,127}, smooth = Smooth.None));
  connect(simFasBui.powEle, use.powEle) annotation (Line(
      points={{-86.193,78.5462},{-86.193,31.3423},{-40.3051,31.3423}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation(Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent={{-100,
            -100},{100,100}},                                                                                                    preserveAspectRatio=false,   initialScale = 0.1, grid = {2,2}), graphics));
end Z2_Inputs_powEle;
