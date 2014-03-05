within FastBuildings.HVAC;
model Heating_OnOff "Heating only, with hysteresis and variable setpoint"
  extends Partial_HVAC;
  parameter Real fraRad = 0.3 "Fraction of heating to radiation";
  SI.Power QHeaCoo "Total heating power";
  parameter SI.Power QNom "Nominal (= maximum) power";
  parameter SI.TemperatureDifference dTHys = 1
    "Hysteresis on temperature set point";
  Modelica.Blocks.Interfaces.RealInput TSet annotation(Placement(visible = true, transformation(origin = {0.422,-104.341}, extent = {{-12,-12},{12,12}}, rotation = 90), iconTransformation(origin = {0.422,-96.3407}, extent = {{-12,-12},{12,12}}, rotation = 90)));
equation
  if noEvent(TZon < TSet) then
    QHeaCoo = QNom;
  elseif noEvent(TZon < TSet + dTHys and QHeaCoo > 0) then
    QHeaCoo = QNom;
  else
    QHeaCoo = 0;
  end if;
  // Zone too cold, system MUST be on
  // Heating is on and should stay on
  // all other cases: shut down
  heaPorCon.Q_flow = -(1 - fraRad) * QHeaCoo;
  heaPorRad.Q_flow = -fraRad * QHeaCoo;
  heaPorEmb.Q_flow = 0;
  annotation(Icon, Diagram);
end Heating_OnOff;
