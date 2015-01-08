within FastBuildings.HVAC;
partial model Partial_HVAC

  Modelica.Blocks.Interfaces.RealInput TZon annotation(Placement(visible = true, transformation(origin = {-99.578,-80.3407}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.578,-80.3407}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  HT.Interfaces.HeatPort_a heaPorRad annotation(Placement(visible = true, transformation(origin = {-100.17,-40}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.17,-40}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  HT.Interfaces.HeatPort_a heaPorCon annotation(Placement(visible = true, transformation(origin = {-99.83,0.0682}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.83,0.0682}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  //parameter Boolean booEmb = true "if true, add a heatPort for Embedded heat transfer";
  HT.Interfaces.HeatPort_b heaPorEmb annotation(Placement(visible = true, transformation(origin = {-100.614,40.944}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-99.83,39.9318}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  annotation(Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics), Icon(coordinateSystem(preserveAspectRatio=false,   extent={{-100,
            -100},{100,100}}),                                                                                                    graphics={
        Rectangle(
          extent={{-90,70},{90,-72}},
          lineColor={95,95,95},
          fillColor={95,95,95},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-78,50},{24,-50}},
          lineColor={95,95,95},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{44,10},{64,-10}},
          lineColor={95,95,95},
          fillColor={255,255,255},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-60,-12},{-40,-32}},
          lineColor={0,255,128},
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-36,38},{-16,18}},
          lineColor={0,255,128},
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid),
        Ellipse(
          extent={{-12,-12},{8,-32}},
          lineColor={0,255,128},
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-26,0},{-36,26},{-16,26},{-26,0}},
          lineColor={0,255,128},
          smooth=Smooth.None,
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-26,0},{-56,-14},{-42,-28},{-26,0}},
          lineColor={0,255,128},
          smooth=Smooth.None,
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid),
        Polygon(
          points={{-26,0},{4,-14},{-10,-28},{-26,0}},
          lineColor={0,255,128},
          smooth=Smooth.None,
          fillColor={0,255,128},
          fillPattern=FillPattern.Solid)}));
end Partial_HVAC;
