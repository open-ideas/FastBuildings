within FastBuildings.Zones;
model ZonInt_F
  "States for zone and internal mass, resistance to boundary and ground"
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_SZ_ZonInt;
  extends FastBuildings.Zones.BaseClasses.Partials.Partial_Bound;
    extends FastBuildings.Zones.BaseClasses.Partials.Partial_Ground;

equation
  connect(capInt.heaPor, resInt.heaPor_a) annotation (Line(
      points={{-40,60},{-20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(resInt.heaPor_b, capZon.heaPor) annotation (Line(
      points={{0,60},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorEmb, capInt.heaPor) annotation (Line(
      points={{100,39.9057},{76,39.9057},{76,40},{46,40},{46,50},{-40,50},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));

  connect(heaPorCon, capZon.heaPor) annotation (Line(
      points={{100,0},{20,0},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(heaPorRad, capInt.heaPor) annotation (Line(
      points={{100,-40},{46,-40},{46,50},{-40,50},{-40,60}},
      color={191,0,0},
      smooth=Smooth.None));
  for i in 1:nIrr loop
    connect(win[i].heaPor1, capZon.heaPor) annotation (Line(
      points={{-79.9087,39.9476},{20,39.9476},{20,60}},
      color={191,0,0},
      smooth=Smooth.None));
  end for;
  connect(resBou.heaPor_b, senTZon.port) annotation (Line(
      points={{-100,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  connect(simFasBui.TSet, preTBou.T) annotation (Line(
      points={{-190.039,79.0248},{-190.039,-80},{-149.2,-80}},
      color={0,0,127},
      smooth=Smooth.None));
  connect(resGro.heaPor_a, senTZon.port) annotation (Line(
      points={{-14,-42},{-14,-42},{20,-42},{20,-80},{50,-80}},
      color={191,0,0},
      smooth=Smooth.None));
  annotation (Diagram(coordinateSystem(preserveAspectRatio=false,extent={{-200,
            -100},{100,100}}),
                         graphics));
end ZonInt_F;
