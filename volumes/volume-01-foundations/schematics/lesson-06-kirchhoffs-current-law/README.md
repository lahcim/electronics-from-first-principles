# Lesson 6 KiCad 10 project

Open `lesson-06.kicad_pro`, then open `lesson-06.sch`. KiCad 10 will convert the legacy schematic; save it as `lesson-06.kicad_sch`.

Run a DC operating-point analysis. No schematic SPICE directive is required.

Expected results:

- `V(NODE_A)` = 5 V;
- current through R1 = 5 mA toward `NODE_A`;
- current through R2 = 2.5 mA toward ground;
- current through R3 = 2.5 mA toward ground.

Record the signs shown by KiCad and translate them into the arrows used in the lesson.