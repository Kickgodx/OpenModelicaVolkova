model PMSM_transform
  PMSM pmsm annotation(
    Placement(visible = true, transformation(origin = {10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput w annotation(
    Placement(visible = true, transformation(origin = {110, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 28}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Constant const1(k = 0)  annotation(
    Placement(visible = true, transformation(origin = {-72, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  ParkTransform parkTransform1 annotation(
    Placement(visible = true, transformation(origin = {-52, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine1(amplitude = 24, freqHz = 10, phase = 0)  annotation(
    Placement(visible = true, transformation(origin = {-110, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Sources.Sine sine2(amplitude = 24, freqHz = 10, phase = 1.5708)  annotation(
    Placement(visible = true, transformation(origin = {-110, -10}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(const1.y, pmsm.Mn) annotation(
    Line(points = {{-60, -10}, {-12, -10}, {-12, 26}, {0, 26}, {0, 26}}, color = {0, 0, 127}));
  connect(pmsm.phi, parkTransform1.phi) annotation(
    Line(points = {{22, 24}, {28, 24}, {28, 46}, {-68, 46}, {-68, 38}, {-62, 38}, {-62, 38}}, color = {0, 0, 127}));
  connect(parkTransform1.Ud, pmsm.Ud) annotation(
    Line(points = {{-40, 36}, {-8, 36}, {-8, 40}, {0, 40}, {0, 40}}, color = {0, 0, 127}));
  connect(parkTransform1.Uq, pmsm.Uq) annotation(
    Line(points = {{-40, 26}, {-16, 26}, {-16, 34}, {0, 34}, {0, 34}}, color = {0, 0, 127}));
  connect(sine1.y, parkTransform1.Ubetta) annotation(
    Line(points = {{-98, 30}, {-94, 30}, {-94, 24}, {-62, 24}, {-62, 26}}, color = {0, 0, 127}));
  connect(sine2.y, parkTransform1.Ualpha) annotation(
    Line(points = {{-98, -10}, {-86, -10}, {-86, 32}, {-62, 32}, {-62, 32}}, color = {0, 0, 127}));
  connect(pmsm.w, w) annotation(
    Line(points = {{22, 28}, {102, 28}, {102, 28}, {110, 28}}, color = {0, 0, 127}));
  annotation(
    uses(Modelica(version = "3.2.3")));
end PMSM_transform;
