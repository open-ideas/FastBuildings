within FastBuildings.Users;
model powEleFra
  "Converts a fraction of powEle into internal gains (distinction between convective and radiative)"

  parameter Real fraTot = 1
    "Fraction of powEle that is converted into internal gains";
  parameter Real fraCon = 0.7
    "Fraction of PUsers that is converted in convective heat";
  final parameter Real fraRad = 1-fraCon
    "Fraction of PUsers that is converted in radiative heat";
  Modelica.Blocks.Interfaces.RealInput powEle annotation(Placement(visible = true, transformation(origin = {-106.128,0.260756}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {-106.128,0.260756}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heaPorCon annotation(Placement(visible = true, transformation(origin = {100.13,39.8957}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {100.13,39.8957}, extent = {{-12,-12},{12,12}}, rotation = 0)));
  Modelica.Thermal.HeatTransfer.Interfaces.HeatPort_a heaPorRad annotation(Placement(visible = true, transformation(origin = {99.8696,-39.6349}, extent = {{-12,-12},{12,12}}, rotation = 0), iconTransformation(origin = {99.8696,-39.6349}, extent = {{-12,-12},{12,12}}, rotation = 0)));
equation
  heaPorCon.Q_flow = -powEle * fraTot * fraCon;
  heaPorRad.Q_flow = -powEle * fraTot * fraRad;
  annotation(Icon, Diagram);
end powEleFra;
