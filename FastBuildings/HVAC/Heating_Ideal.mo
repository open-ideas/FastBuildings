within FastBuildings.HVAC;
model Heating_Ideal
  "Heating only, heating power calculated from ideal heating with time constant"
  extends Partial_HVAC;
  parameter Real fraRad = 0.3 "Fraction of heating to radiation";
  parameter SI.HeatCapacity cZon "Capacity of the zone";
  parameter SI.Time tauHea = 60 "Time constant of the ideal heating";
  SI.Power qHeaCoo "Total heating power";
  Modelica.Blocks.Interfaces.RealInput TSet annotation(Placement(visible = true, transformation(origin = {0.422,-104.341}, extent = {{-12,-12},{12,12}}, rotation = 90), iconTransformation(origin = {0.422,-96.3407}, extent = {{-12,-12},{12,12}}, rotation = 90)));
equation
  qHeaCoo = cZon * (TSet - TZon) / tauHea;
  heaPorCon.Q_flow = -(1 - fraRad) * qHeaCoo;
  heaPorRad.Q_flow = -fraRad * qHeaCoo;
  heaPorEmb.Q_flow = 0;
  annotation(Icon(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics), Diagram(coordinateSystem(preserveAspectRatio = false, extent = {{-100,-100},{100,100}}), graphics));
end Heating_Ideal;
