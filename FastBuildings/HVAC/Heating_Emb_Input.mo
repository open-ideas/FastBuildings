within FastBuildings.HVAC;
model Heating_Emb_Input
  "Heating through embedded port, heating power read from input"
  extends Partial_HVAC;

  Modelica.Blocks.Interfaces.RealInput qHeaCoo "total heating/cooling input" annotation(Placement(visible = true, transformation(origin = {-100.259,80.3748}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-100.259,80.3748}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  heaPorCon.Q_flow = 0;
  heaPorRad.Q_flow = 0;
  heaPorEmb.Q_flow = -qHeaCoo;
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics));
end Heating_Emb_Input;
