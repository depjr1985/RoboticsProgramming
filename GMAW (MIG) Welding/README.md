# GMAW (MIG) Welding

<img src=".\images\20250415_203118.jpg" alt="MHaS" style="margin-center: 2%;" />

<img src=".\images\weldermade.png" alt="MHaS" style="margin-center: 2%;" />

## Application Creation

For our MIG Welding application, we used the Tablet Teach Pendant, which features a click-and-drag interface on a tablet.

<img src="./images/20250415_212557.jpg" alt="Error 2" width="48%" style="margin-right: 2%;" /><img src="./images/20250415_212607.jpg" alt="Error 2" width="48%" />

FANUC's icon-based programming interface is designed to be intuitive and user-friendly, particularly for beginners or training purposes. It offers a touch-optimized layout for tablet-style teach pendants, enabling users to program robots with simple drag-and-drop commands. This visual approach eliminates the need for coding, making it easy to create and understand motion sequences and logic without prior programming experience.

Additionally, we exported the LS file from the Tablet Teach Pendant for further viewing and editing, which is included in this project for reference.

## Welding and Welding Schedules

### Weld One

The first weld used PROCEDURE 1, SCHEDULE 2. The animations in the images illustrate the direction of the welds.

<img src=".\images\20250415_212718.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Two

The second weld used PROCEDURE 1, SCHEDULE 2. During this weld, the welding torch was kept as horizontal as possible until the fixture locks required tilting the torch.

<img src=".\images\20250415_212702.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Three

The third weld used PROCEDURE 1, SCHEDULE 1. Although small linear motions were suggested, using a circular motion instruction for the entire weld resulted in a high-quality weld. Care was taken to ensure the torch nozzle did not collide with Weld One.

<img src=".\images\20250415_212711.svg" alt="MHaS" style="margin-center: 2%;" />
<img src=".\images\20250415_212714.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Four

The fourth weld used PROCEDURE 1, SCHEDULE 1. This weld was carefully overlapped with Weld One to ensure a smooth connection without collisions.

<img src=".\images\20250415_212722.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Five

The fifth weld used PROCEDURE 1, SCHEDULE 2. The welding torch was kept as horizontal as possible, ensuring the weld was dragged rather than pushed.

<img src=".\images\20250415_212732.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Six

The sixth weld used PROCEDURE 1, SCHEDULE 2.

<img src=".\images\20250415_212707.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Seven

The seventh weld used PROCEDURE 1, SCHEDULE 1. The welding torch was kept as flat as possible throughout the weld.

<img src=".\images\20250415_210819.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Eight

The eighth weld used PROCEDURE 1, SCHEDULE 1. A three-point move was recommended to achieve a smooth weld, ensuring the torch remained flat for as long as possible. Care was taken to avoid pushing the weld downward.

<img src=".\images\20250415_212732_2.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Nine

The ninth weld used PROCEDURE 1, SCHEDULE 1. This weld was intended to be continuous around the corner, but the structure lock obstructed the path. Replacing the structure lock with a smaller one would allow the torch to fit through the gap without collisions.

<img src=".\images\20250415_212659.svg" alt="MHaS" style="margin-center: 2%;" />
<img src=".\images\20250415_212702_2.svg" alt="MHaS" style="margin-center: 2%;" />

### Weld Ten

The tenth weld used PROCEDURE 1, SCHEDULE 1. This weld was meant to be a continuous weld from the straight section into the circular section, covering only half the pipe's circumference. However, we extended slightly beyond the halfway point. At point B, some sparking occurred, likely due to debris from a previous weld.

<img src=".\images\20250415_212726.svg" alt="MHaS" style="margin-center: 2%;" />

## Summary

This project demonstrates the application of GMAW (MIG) welding techniques using a FANUC robot and a Tablet Teach Pendant. Key highlights include:

- **Application Creation**: Leveraging an intuitive, icon-based programming interface for robot motion and logic, eliminating the need for prior coding experience.
- **Welding Schedules**: Detailed documentation of ten welds, including procedures, schedules, and techniques used to achieve high-quality results.
- **Challenges and Solutions**: Addressing issues such as torch positioning, fixture locks, and debris to ensure optimal weld quality.

The included LS file provides additional insights into the programming and execution of the welding tasks.