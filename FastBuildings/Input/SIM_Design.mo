within FastBuildings.Input;
model SIM_Design "Design weather conditions"
  extends FastBuildings.Input.BaseClasses.Partial_SIM;
  parameter SI.Temperature TAmbDes = 263.15 "Design ambient temperature";
  parameter SI.Temperature TSetDes = 273.15 + 21 "Design indoor temperature";
equation
  TAmb = TAmbDes;
  TSet = TSetDes;
  irr[1] = 0;
  powEle = 0;
  qHeaCoo = 0;
  annotation(defaultComponentName = "sim", defaultComponentPrefixes = "inner", missingInnerMessage = "
Your model is using an outer \"sim\" component but
an inner \"sim\" component is not defined.
For simulation drag a sim from FastBuildings.Input 
into your model to specify your Simulation Input Manager.", Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})));
end SIM_Design;
