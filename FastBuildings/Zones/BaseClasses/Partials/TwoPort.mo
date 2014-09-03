within FastBuildings.Zones.BaseClasses.Partials;
partial model TwoPort "Partial for resistances and walls"

  HT.Interfaces.HeatPort_a heaPor_a annotation(Placement(transformation(extent={{-110,
            -10},{-90,10}},                                                                             rotation = 0),
        iconTransformation(extent={{-110,-10},{-90,10}})));
  HT.Interfaces.HeatPort_b heaPor_b annotation(Placement(transformation(extent={{90,-10},
            {110,10}},                                                                                rotation = 0),
        iconTransformation(extent={{90,-10},{110,10}})));
  parameter SI.ThermalResistance r "Constant thermal resistance" annotation(Evaluate=false);
equation

end TwoPort;
