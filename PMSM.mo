model PMSM
parameter Real R = 1.48;
parameter Real L = 8.5 * 10 ^ (-3);
parameter Real J = 8.3 * 10 ^ (-4);
parameter Real Zp = 5;
parameter Real Km = 1.19;
parameter Real F = Km/(1.5*Zp);
  Modelica.Blocks.Interfaces.RealInput Ud annotation(
    Placement(visible = true, transformation(origin = {-100, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 90}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Uq annotation(
    Placement(visible = true, transformation(origin = {-100, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 30}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Mn annotation(
    Placement(visible = true, transformation(origin = {-100, -48}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, -48}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput id annotation(
    Placement(visible = true, transformation(origin = {110, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain1(k = 1 / L)  annotation(
    Placement(visible = true, transformation(origin = {-46, 90}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add31(k2 = -1)  annotation(
    Placement(visible = true, transformation(origin = {10, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator1 annotation(
    Placement(visible = true, transformation(origin = {52, 86}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain2(k = R / L)  annotation(
    Placement(visible = true, transformation(origin = {-38, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product1 annotation(
    Placement(visible = true, transformation(origin = {-82, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain3(k = 1 / L)  annotation(
    Placement(visible = true, transformation(origin = {-50, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add3 add32(k2 = -1, k3 = -1)  annotation(
    Placement(visible = true, transformation(origin = {-10, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1(k2 = -1)  annotation(
    Placement(visible = true, transformation(origin = {30, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator2 annotation(
    Placement(visible = true, transformation(origin = {72, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput iq annotation(
    Placement(visible = true, transformation(origin = {110, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 24}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain4(k = R / L)  annotation(
    Placement(visible = true, transformation(origin = {-50, -6}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain5(k = F / L)  annotation(
    Placement(visible = true, transformation(origin = {-8, -8}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product2 annotation(
    Placement(visible = true, transformation(origin = {-50, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain6(k = 1.5 * Zp * F)  annotation(
    Placement(visible = true, transformation(origin = {50, -30}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2(k2 = -1)  annotation(
    Placement(visible = true, transformation(origin = {18, -36}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Gain gain7(k = 1 / J)  annotation(
    Placement(visible = true, transformation(origin = {-12, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator3 annotation(
    Placement(visible = true, transformation(origin = {-52, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Continuous.Integrator integrator4 annotation(
    Placement(visible = true, transformation(origin = {-110, -70}, extent = {{10, -10}, {-10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput w annotation(
    Placement(visible = true, transformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput phi annotation(
    Placement(visible = true, transformation(origin = {110, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(gain1.y, add31.u1) annotation(
    Line(points = {{-35, 90}, {-22, 90}, {-22, 94}, {-2, 94}}, color = {0, 0, 127}));
  connect(integrator1.y, id) annotation(
    Line(points = {{64, 86}, {102, 86}, {102, 86}, {110, 86}}, color = {0, 0, 127}));
  connect(add31.y, integrator1.u) annotation(
    Line(points = {{22, 86}, {40, 86}, {40, 86}, {40, 86}}, color = {0, 0, 127}));
  connect(gain2.y, add31.u2) annotation(
    Line(points = {{-27, 60}, {-20, 60}, {-20, 86}, {-2, 86}}, color = {0, 0, 127}));
  connect(product1.y, add31.u3) annotation(
    Line(points = {{-71, 60}, {-60, 60}, {-60, 78}, {-2, 78}}, color = {0, 0, 127}));
  connect(gain3.y, add32.u1) annotation(
    Line(points = {{-38, 30}, {-36, 30}, {-36, 38}, {-22, 38}, {-22, 38}}, color = {0, 0, 127}));
  connect(add32.y, add1.u1) annotation(
    Line(points = {{2, 30}, {16, 30}, {16, 30}, {18, 30}}, color = {0, 0, 127}));
  connect(add1.y, integrator2.u) annotation(
    Line(points = {{42, 24}, {60, 24}, {60, 24}, {60, 24}}, color = {0, 0, 127}));
  connect(integrator2.y, iq) annotation(
    Line(points = {{84, 24}, {100, 24}, {100, 24}, {110, 24}}, color = {0, 0, 127}));
  connect(gain4.y, add32.u2) annotation(
    Line(points = {{-39, -6}, {-34, -6}, {-34, 30}, {-22, 30}}, color = {0, 0, 127}));
  connect(gain4.u, integrator2.y) annotation(
    Line(points = {{-62, -6}, {-66, -6}, {-66, 8}, {82, 8}, {82, 24}, {84, 24}}, color = {0, 0, 127}));
  connect(gain5.y, add1.u2) annotation(
    Line(points = {{4, -8}, {6, -8}, {6, 18}, {18, 18}, {18, 18}}, color = {0, 0, 127}));
  connect(product2.y, add32.u3) annotation(
    Line(points = {{-38, -36}, {-32, -36}, {-32, 22}, {-22, 22}, {-22, 22}}, color = {0, 0, 127}));
  connect(gain6.y, add2.u1) annotation(
    Line(points = {{38, -30}, {30, -30}, {30, -30}, {30, -30}}, color = {0, 0, 127}));
  connect(add2.y, gain7.u) annotation(
    Line(points = {{6, -36}, {4, -36}, {4, -70}, {0, -70}}, color = {0, 0, 127}));
  connect(gain7.y, integrator3.u) annotation(
    Line(points = {{-24, -70}, {-38, -70}, {-38, -70}, {-40, -70}}, color = {0, 0, 127}));
  connect(integrator3.y, integrator4.u) annotation(
    Line(points = {{-64, -70}, {-96, -70}, {-96, -70}, {-98, -70}}, color = {0, 0, 127}));
  connect(integrator4.y, phi) annotation(
    Line(points = {{-122, -70}, {-126, -70}, {-126, -92}, {90, -92}, {90, -70}, {110, -70}, {110, -70}}, color = {0, 0, 127}));
  connect(integrator3.y, w) annotation(
    Line(points = {{-64, -70}, {-78, -70}, {-78, -88}, {82, -88}, {82, -36}, {94, -36}, {94, -30}, {110, -30}, {110, -30}}, color = {0, 0, 127}));
  connect(integrator3.y, product1.u1) annotation(
    Line(points = {{-62, -70}, {-78, -70}, {-78, 0}, {-120, 0}, {-120, 66}, {-94, 66}, {-94, 66}}, color = {0, 0, 127}));
  connect(integrator3.y, product2.u2) annotation(
    Line(points = {{-62, -70}, {-70, -70}, {-70, -42}, {-62, -42}, {-62, -42}}, color = {0, 0, 127}));
  connect(integrator3.y, gain5.u) annotation(
    Line(points = {{-62, -70}, {-72, -70}, {-72, -20}, {-26, -20}, {-26, -8}, {-20, -8}, {-20, -8}}, color = {0, 0, 127}));
  connect(integrator1.y, product2.u1) annotation(
    Line(points = {{64, 86}, {90, 86}, {90, 44}, {-70, 44}, {-70, -30}, {-62, -30}, {-62, -30}}, color = {0, 0, 127}));
  connect(integrator1.y, gain2.u) annotation(
    Line(points = {{64, 86}, {88, 86}, {88, 46}, {-56, 46}, {-56, 60}, {-50, 60}, {-50, 60}}, color = {0, 0, 127}));
  connect(Ud, gain1.u) annotation(
    Line(points = {{-100, 90}, {-58, 90}, {-58, 90}, {-58, 90}}, color = {0, 0, 127}));
  connect(Uq, gain3.u) annotation(
    Line(points = {{-100, 30}, {-64, 30}, {-64, 30}, {-62, 30}}, color = {0, 0, 127}));
  connect(Mn, add2.u2) annotation(
    Line(points = {{-100, -48}, {36, -48}, {36, -42}, {30, -42}}, color = {0, 0, 127}));
  connect(integrator2.y, gain6.u) annotation(
    Line(points = {{84, 24}, {86, 24}, {86, -30}, {62, -30}, {62, -30}}, color = {0, 0, 127}));
  connect(integrator2.y, product1.u2) annotation(
    Line(points = {{84, 24}, {86, 24}, {86, 54}, {-94, 54}, {-94, 54}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "3.2.3")));
end PMSM;
