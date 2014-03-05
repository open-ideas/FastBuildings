within FastBuildings.HVAC;
model Heating_Input "Heating only, heating power read from input"
  extends Partial_HVAC;
  parameter Real fraRad = 0.3 "Fraction of heating to radiation";
  Modelica.Blocks.Interfaces.RealInput qHeaCoo "total heating/cooling input" annotation(Placement(visible = true, transformation(origin = {-100.259,80.3748}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.259,80.3748}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  heaPorCon.Q_flow = -(1 - fraRad) * qHeaCoo;
  heaPorRad.Q_flow = -fraRad * qHeaCoo;
  heaPorEmb.Q_flow = 0;
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics));
end Heating_Input;
