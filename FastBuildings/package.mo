within ;
package FastBuildings "Low order building simulation models"
  import SI = Modelica.SIunits;
  import HT = Modelica.Thermal.HeatTransfer;
  import Commons;
  import IDEAS;


  annotation(uses(Modelica(version = "3.2"), Buildings(version = "0.12.0"), FastBuildings_SinglePackage(version = "0.0"), TME(version = "0.11"),
    IDEAS(version="2")),                                                                                                    Documentation(info = "<html>
<p>This package contains light (few-states) building models. </p>
<p>The conventions for orientations are (in radials):</p>
<p><ul>
<li>0 = South</li>
<li>pi/2 = West</li>
<li>pi = North</li>
<li>-pi/2 or 3/2*pi = East</li>
</ul></p>
<p>The convention for inclinations are (in radials):</p>
<p><ul>
<li>0 = horizontal, exposed to sky (TO BE CHECKED)</li>
<li>pi/2 = vertical </li>
<li>pi = horizontal, exposed to centre of the earth (TO BE CHECKED)</li>
</ul></p>
</html>"), version = "0.0", Icon, Diagram);
end FastBuildings;
