within FastBuildings.Buildings;
model SZ_TAmb_QHea "replaceable RC model for the zone"

  Modelica.Blocks.Interfaces.RealInput TAmb annotation(Placement(visible = true, transformation(origin = {-103.237,22.1465}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-103.237,22.1465}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  replaceable FastBuildings.RCModels.Partial_RC RC "RC model"  annotation(Placement(visible = true, transformation(origin = {54.4858,17.5143}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  HT.Sources.PrescribedTemperature TAmb2HeaPor annotation(Placement(visible = true, transformation(origin = {-49.7445,22.1465}, extent = {{-7.45106,-7.45106},{7.45106,7.45106}}, rotation = 0)));
  FastBuildings.HVAC.H_Input hvac annotation(Placement(visible = true, transformation(origin = {-1.36286,0}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput QHea annotation(Placement(visible = true, transformation(origin = {-103.578,-40.5452}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-103.578,-40.5452}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  connect(QHea,hvac.QHea) annotation(Line(points={{-103.578,-40.5452},{
        -31.0051,-40.5452},{-31.0051,-7.49574},{-13.8739,-7.49574},{
        -13.8739,-7.15502}}));
  connect(RC.TZon,hvac.TZon) annotation(Line(points={{66.9152,17.8823},{
        84.1567,17.8823},{84.1567,-57.2402},{-35.4344,-57.2402},{-35.4344,
        4.70274e-005},{-13.7922,4.70274e-005},{-13.7922,-0.0408857}}));
  connect(hvac.heatPortCon,RC.heatPortCon) annotation(Line(points={{10.6575,
        9.60818},{19.7615,9.60818},{19.7615,16.0136},{42.5894,16.0136},{
        42.5894,17.5143},{42.4858,17.5143}}));
  connect(hvac.heatPortRad,RC.heatPortRad) annotation(Line(points={{10.6167,
        4.2657e-007},{22.1465,4.2657e-007},{22.1465,13.2879},{42.2487,
        13.2879},{42.2487,12.7143},{42.4858,12.7143}}));
  connect(hvac.heatPortEmb,RC.heatPortEmb) annotation(Line(points={{10.6575,
        -9.60817},{30.6644,-9.60817},{30.6644,8.51789},{42.4858,8.51789},{
        42.4858,7.90298}}));
  connect(TAmb,TAmb2HeaPor.T) annotation(Line(points={{-103.237,22.1465},{
          -65.5393,22.1465},{-65.5393,22.1465},{-58.6858,22.1465}}));
  connect(TAmb2HeaPor.port,RC.heatPortAmb) annotation(Line(points={{
        -42.2934,22.1465},{38.4729,22.1465},{38.4729,22.3143},{42.4858,
        22.3143}}));
  annotation(Icon(graphics={  Rectangle(rotation=  0, lineColor=  {0,0,255}, fillColor=  {170,0,0}, pattern=  LinePattern.Solid,
            fillPattern=                                                                                                    FillPattern.Solid,
            lineThickness=                                                                                                    0.25, extent=  {{-79.046,-100.17},{80.4089,20.1022}}),Polygon(points=  {{-99.4889,8},{0.340716,87.7274},{99.1482,8},{-99.4889,8}}, rotation=  0, lineColor=  {0,0,255}, fillColor=  {170,0,0}, pattern=  LinePattern.Solid,
            fillPattern=                                                                                                    FillPattern.Solid,
            lineThickness=                                                                                                    0.25)}), Diagram);
end SZ_TAmb_QHea;
