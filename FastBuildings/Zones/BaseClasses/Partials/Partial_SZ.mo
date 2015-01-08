within FastBuildings.Zones.BaseClasses.Partials;
partial model Partial_SZ "Single zone partial model, no air node"

  HT.Interfaces.HeatPort_a heaPorCon "Convective heat transfer" annotation(Placement(visible = true, transformation(extent = {{90,-10},{110,10}})));
  HT.Interfaces.HeatPort_a heaPorRad "Radiative heat transfer" annotation(Placement(transformation(extent = {{90,-50},{110,-30}})));
  //parameter Boolean booEmb = true "if true, add a heatPort for Embedded heat transfer";
  HT.Interfaces.HeatPort_b heaPorEmb
    "Heat transfer to embedded systems, like tabs"                                  annotation(Placement(visible = true, transformation(origin = {100,39.9057}, extent = {{-10,-10},{10,10}}, rotation = 0), iconTransformation(origin = {100,39.9057}, extent = {{-10,-10},{10,10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput TZon
    "Zone temperature. Most often this will be air temperature"
    annotation (Placement(transformation(extent={{96,-90},{116,-70}}),
        iconTransformation(extent={{90,-90},{110,-70}})));
  outer Input.BaseClasses.Partial_SIM simFasBui
    "Input data, to be provided by an inner submodel of PartialSIM"
    annotation (Placement(transformation(extent={{-200,80},{-180,100}})));
  annotation(Diagram(coordinateSystem(extent={{-100,-100},{100,100}},   preserveAspectRatio=true,    initialScale = 0.1, grid = {2,2}), graphics), Icon(coordinateSystem(extent={{-100,
            -100},{100,100}},                                                                                                    preserveAspectRatio=true,    initialScale = 0.1, grid = {2,2}), graphics={
        Rectangle(
          extent={{-90,90},{90,-90}},
          pattern=LinePattern.None,
          fillColor={175,175,175},
          fillPattern=FillPattern.Backward,
          lineColor={0,0,0}),
        Rectangle(
          extent={{68,70},{-68,-70}},
          pattern=LinePattern.None,
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid,
          lineColor={0,0,0},
          lineThickness=0.5),
        Line(
          points={{-68,70},{68,70}},
          color={0,255,128},
          thickness=0.5,
          smooth=Smooth.None),
        Rectangle(
          extent={{-40,-70},{40,-90}},
          lineThickness=0.5,
          pattern=LinePattern.None,
          lineColor={0,0,0},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-40,-90},{68,22},{68,-42},{40,-70},{40,-90},{-40,-90},{-40,
              -90}},
          lineThickness=0.5,
          smooth=Smooth.None,
          fillColor={255,255,170},
          fillPattern=FillPattern.Solid,
          pattern=LinePattern.None),
        Line(
          points={{-68,70},{-68,-70},{-40,-70},{-40,-80},{40,-80},{40,-70},{68,
              -70},{68,70}},
          color={0,255,128},
          smooth=Smooth.None,
          thickness=0.5),
        Text(
          extent={{-39,40},{39,-40}},
          lineColor={0,0,0},
          fontName="Calibri",
          origin={-2,3},
          rotation=0,
          textString="%name")}));
end Partial_SZ;
