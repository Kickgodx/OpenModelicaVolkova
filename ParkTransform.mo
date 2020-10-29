model ParkTransform
  Modelica.Blocks.Interfaces.RealInput phi annotation(
    Placement(visible = true, transformation(origin = {-100, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 70}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Ualpha annotation(
    Placement(visible = true, transformation(origin = {-100, 10}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, 10}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealInput Ubetta annotation(
    Placement(visible = true, transformation(origin = {-100, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0), iconTransformation(origin = {-100, -50}, extent = {{-20, -20}, {20, 20}}, rotation = 0)));
  Modelica.Blocks.Math.Cos cos1 annotation(
    Placement(visible = true, transformation(origin = {-50, 50}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Sin sin1 annotation(
    Placement(visible = true, transformation(origin = {-50, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product1 annotation(
    Placement(visible = true, transformation(origin = {-10, 60}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product2 annotation(
    Placement(visible = true, transformation(origin = {-10, -70}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product3 annotation(
    Placement(visible = true, transformation(origin = {30, 30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Product product4 annotation(
    Placement(visible = true, transformation(origin = {30, -30}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add1 annotation(
    Placement(visible = true, transformation(origin = {70, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Math.Add add2(k2 = -1)  annotation(
    Placement(visible = true, transformation(origin = {70, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Ud annotation(
    Placement(visible = true, transformation(origin = {110, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, 54}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
  Modelica.Blocks.Interfaces.RealOutput Uq annotation(
    Placement(visible = true, transformation(origin = {110, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0), iconTransformation(origin = {110, -36}, extent = {{-10, -10}, {10, 10}}, rotation = 0)));
equation
  connect(phi, sin1.u) annotation(
    Line(points = {{-100, 70}, {-70, 70}, {-70, -30}, {-62, -30}, {-62, -30}}, color = {0, 0, 127}));
  connect(cos1.y, product1.u1) annotation(
    Line(points = {{-38, 50}, {-36, 50}, {-36, 66}, {-22, 66}, {-22, 66}}, color = {0, 0, 127}));
  connect(sin1.y, product2.u2) annotation(
    Line(points = {{-38, -30}, {-38, -30}, {-38, -76}, {-22, -76}, {-22, -76}}, color = {0, 0, 127}));
  connect(Ualpha, product1.u2) annotation(
    Line(points = {{-100, 10}, {-28, 10}, {-28, 54}, {-22, 54}, {-22, 54}}, color = {0, 0, 127}));
  connect(Ualpha, product2.u1) annotation(
    Line(points = {{-100, 10}, {-28, 10}, {-28, -64}, {-22, -64}, {-22, -64}}, color = {0, 0, 127}));
  connect(sin1.y, product3.u1) annotation(
    Line(points = {{-38, -30}, {0, -30}, {0, 36}, {18, 36}, {18, 36}}, color = {0, 0, 127}));
  connect(cos1.y, product4.u2) annotation(
    Line(points = {{-38, 50}, {-36, 50}, {-36, -36}, {18, -36}, {18, -36}}, color = {0, 0, 127}));
  connect(Ubetta, product3.u2) annotation(
    Line(points = {{-100, -50}, {8, -50}, {8, 24}, {18, 24}, {18, 24}}, color = {0, 0, 127}));
  connect(Ubetta, product4.u1) annotation(
    Line(points = {{-100, -50}, {8, -50}, {8, -24}, {18, -24}, {18, -24}}, color = {0, 0, 127}));
  connect(product1.y, add1.u1) annotation(
    Line(points = {{2, 60}, {58, 60}}, color = {0, 0, 127}));
  connect(product2.y, add2.u2) annotation(
    Line(points = {{2, -70}, {54, -70}, {54, -42}, {58, -42}, {58, -42}}, color = {0, 0, 127}));
  connect(product4.y, add2.u1) annotation(
    Line(points = {{42, -30}, {56, -30}, {56, -30}, {58, -30}}, color = {0, 0, 127}));
  connect(product3.y, add1.u2) annotation(
    Line(points = {{42, 30}, {48, 30}, {48, 48}, {58, 48}}, color = {0, 0, 127}));
  connect(add1.y, Ud) annotation(
    Line(points = {{82, 54}, {110, 54}}, color = {0, 0, 127}));
  connect(add2.y, Uq) annotation(
    Line(points = {{82, -36}, {104, -36}, {104, -36}, {110, -36}}, color = {0, 0, 127}));
  connect(phi, cos1.u) annotation(
    Line(points = {{-100, 70}, {-70, 70}, {-70, 50}, {-62, 50}, {-62, 50}}, color = {0, 0, 127}));

annotation(
    uses(Modelica(version = "3.2.3")));
end ParkTransform;
