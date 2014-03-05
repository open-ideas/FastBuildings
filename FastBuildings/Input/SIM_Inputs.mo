within FastBuildings.Input;
model SIM_Inputs "SIM with inputs from filereaders or other means"
  extends FastBuildings.Input.BaseClasses.Partial_SIM;
  /* 
   This model does not specify the trajectories for the realOutputs
   Instead, additional equations or inputs have to be provided in the
   model that instantiates this simFasBui.
   
   For example, if an irradiation and TAmb are provided, instantiate this model as follows:
   inner FastBuildings.Input.SIM_Inputs sim(nIrr=1, booTAmb=true)
   equation
   simFasBui.TAmb = ... ;
   simFasBui.irr[1] = ... ;
  
  */
  annotation(defaultComponentName = "sim", defaultComponentPrefixes = "inner", missingInnerMessage = "
Your model is using an outer \"sim\" component but
an inner \"sim\" component is not defined.
For simulation drag a sim from FastBuildings.Input 
into your model to specify your Simulation Input Manager.", Icon(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = true, initialScale = 0.1, grid = {2,2})), Diagram(coordinateSystem(extent = {{-100,-100},{100,100}}, preserveAspectRatio = false, initialScale = 0.1, grid = {2,2}), graphics));
end SIM_Inputs;
