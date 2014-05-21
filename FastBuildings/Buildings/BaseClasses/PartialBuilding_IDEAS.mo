within FastBuildings.Buildings.BaseClasses;
partial model PartialBuilding_IDEAS "Multizone building, compatible with IDEAS"

  extends IDEAS.Interfaces.BaseClasses.Structure(nZones=1, final nEmb=nZones);
  parameter Integer nIrr(min = 1) "Number of irradiation vectors";
  inner FastBuildings.Input.SIM_Inputs  simFasBui(nIrr=nIrr)
    "Weather data, to be provided by an inner submodel of Partial_SIM"                                                     annotation(Placement(visible = true, transformation(origin={-138.154,
            89.5214},                                                                                                    extent = {{-10,-10},{10,10}}, rotation = 0)));
  replaceable Zones.BaseClasses.Partials.Partial_SZ[nZones]  zon(nIrr=nIrr)
    "Array of zones"                                             annotation(choicesAllMatching = true, Placement(visible = true, transformation(origin={1.4701,
            -2.8291},                                                                                                    extent={{
            -64.5299,-42.8291},{64.5299,42.8291}},                                                                                                    rotation = 0)));
  IDEAS.Climate.Meteo.Solar.RadSol[nIrr] radSol(
     each A=1,
    inc=inc,
    azi=azi) "Solar radiation processor for each nIrr"
    annotation (Placement(transformation(extent={{-148,34},{-128,54}})));

  parameter SI.Angle inc[nIrr]
    "inclination, one value for each solar radiation to be computed";
  parameter SI.Angle azi[nIrr]
    "azimuth, one value for each solar radiation to be included";
equation
  simFasBui.TAmb = sim.Te;
  simFasBui.TSet = 0;
  simFasBui.qHeaCoo = 0;
  simFasBui.powEle = 0;
  for i in 1:nIrr loop
    simFasBui.irr[i] = radSol[i].solDir + radSol[i].solDif;
  end for;

  connect(zon.heaPorEmb, heatPortEmb) annotation (Line(
      points={{66,14.2622},{105,14.2622},{105,60},{150,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(zon.heaPorCon, heatPortCon) annotation (Line(
      points={{66,-2.8291},{90,-2.8291},{90,-4},{120,-4},{120,20},{150,20}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(zon.heaPorRad, heatPortRad) annotation (Line(
      points={{66,-19.9607},{106,-19.9607},{106,-20},{150,-20}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(zon.TZon, TSensor) annotation (Line(
      points={{66,-37.0924},{106,-37.0924},{106,-60},{156,-60}},
      color={0,0,127},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false, extent={{-150,
            -100},{150,100}}), graphics));
end PartialBuilding_IDEAS;
