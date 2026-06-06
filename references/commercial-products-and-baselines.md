# Commercial Products and Baselines for GaugeHand

Date: 2026-06-06

Purpose: document nearby commercial products, cheap mechanism demos, and buying recommendations for the GaugeHand idea.

## Bottom Line

You can buy the ingredients, but not the exact proposed architecture.

A commercial off-the-shelf "3D contour-gauge robotic hand" with all of the desired properties is not common:

- dense 3D pin-array contact field;
- robotic closure;
- per-pin or per-patch sensing;
- lockable morphology;
- shear-capable manipulation;
- usable robot integration API.

What exists today falls into adjacent categories:

1. Cheap contour gauges and pin-art toys that demonstrate passive sliding-pin geometry.
2. Adaptive commercial grippers that conform to objects without copying the human hand.
3. Soft underactuated hands such as qb SoftHand that use mechanical synergy instead of full finger independence.
4. Dexterous robotic hands that are useful baselines but follow the anthropomorphic-hand paradigm.
5. Vacuum and soft grippers that are practical industrial baselines for pickup tasks.

For GaugeHand, the most useful first purchase is not a dexterous hand. It is a set of cheap contour-gauge and pin-art mechanisms to study, followed by a custom two-sided lockable pin-array gripper prototype.

## Snapshot Caveat

Prices and availability in this note are a snapshot from the prompt or product pages and should not be treated as purchase quotes. Verify current price, region, stock, tax, shipping, and robot compatibility before buying.

## Category 1: Cheap Contour-Gauge and Pin-Art Tools

These are not robotic grippers. They are useful because they show the core mechanical principle: many passive elements slide independently to copy shape.

Recommended search terms:

- contour gauge;
- profile gauge;
- locking contour gauge;
- pin art sculpture;
- pin screen;
- pin wall.

Examples from the prompt:

| Product | Use in GaugeHand research | Prompt price snapshot | Link |
| --- | --- | ---: | --- |
| General Tools 10 in. Locking Contour Gauge | Cheap locking mechanism study; extended pin travel. | USD 24.05 | <https://www.homedepot.com/p/General-Tools-10-in-Locking-Contour-Gauge-with-Extended-Pins-834X/318849047> |
| Shinwa Contour Profile Gauge with Stainless Steel Pins | Metal pin friction, stiffness, and wear comparison. | USD 34.99 | <https://taytools.com/products/shinwa-rules-contour-profile-gauge-with-stainless-steel-pins?variant=39418783531095> |
| QEP 6 in. Locking Professional Profile and Contour Gauge | Budget lock and plastic-pin comparison. | USD 10.97 | <https://www.homedepot.com/p/QEP-6-in-W-Locking-Professional-Profile-and-Contour-Gauge-10038/311091558> |
| Saker 5 in. and 10 in. Contour Gauge Profile Tool | DIY shape-copy benchmark, pin density, and lock feel. | USD 29.28 | <https://www.homedepot.com/p/Saker-5-in-and-10-in-Contour-Gauge-Profile-Tool-and-Duplicator-SAK5106-C012-X0147/319815499> |

What to study after buying:

- pin friction;
- pin return behavior;
- locking plate design;
- lock uniformity;
- pin spacing and shape resolution;
- side-load jamming;
- tip geometry;
- repeatability after repeated impressions;
- how well the shape survives vibration and handling.

Recommended first kit:

1. One metal-pin contour gauge.
2. One plastic locking contour gauge.
3. One pin-art toy or pin screen.

This gives a low-cost mechanical intuition package before designing custom hardware.

## Category 2: Commercial Adaptive Grippers

These products do not implement a contour-gauge pin field. They are useful because they share the same philosophy:

> Do not reproduce every human-hand degree of freedom; let the mechanism adapt to the object.

### Festo DHEF Adaptive Shape Gripper

Festo's DHEF adaptive shape gripper is one of the closest commercial products in spirit. Festo describes it as a gripper for parts with undefined positions and shapes, form-fitting gripping of different geometries, suction-cup-like behavior, and gentle gripping of delicate products. Festo also lists human-robot collaboration and box-unpacking/separating tasks as application options.

Relevance to GaugeHand:

- Strong example of a single adaptive surface replacing complex fingers.
- Good commercial proof that adaptive morphology is a real industrial product theme.
- Not a pin-array hand and not a tactile contour field.

Sources:

- <https://www.festo.com/us/en/a/8092533>
- <https://www.festo.com/media/catalog/202805_documentation.pdf>
- <https://press.festo.com/fr/node/2923>

### Schmalz mGrip

Schmalz mGrip is a soft finger gripper aimed at food, logistics, and irregular sensitive goods. Schmalz describes it as suitable for delicate and hard-to-grip workpieces, direct food handling, and products with different shapes. The system is modular, with configurable fingers and food-compatible options.

Relevance to GaugeHand:

- Good benchmark for fragile and irregular goods.
- Strong commercial example of soft adaptive gripping.
- Uses soft fingers, not dense pin arrays.

Sources:

- <https://www.schmalz.com/en-us/solutions/media-center/mgrip---hygienic-gripping--safe-holding>
- <https://media.schmalz.com/MAM_Library2/Dokumente/Publikation/Flyer/653383818c12_Flyer_VACO_Finger%20Gripper%20mGrip_Schmalz_2024_enEN.pdf>
- <https://www.fanuc.co.jp/en/product/robot/function/mgrip.html>

### Robotiq Adaptive Grippers

Robotiq's adaptive gripper family is closer to a robotic hand than a simple rigid parallel gripper. The 3-Finger Adaptive Gripper is especially relevant because it uses independent articulated fingers and multiple contact points while keeping industrial integration simpler than a full anthropomorphic dexterous hand.

Relevance to GaugeHand:

- Useful industrial/research baseline for adaptive fingered grasping.
- Still follows the sparse-finger paradigm.
- Good comparison if GaugeHand claims better shape adaptation or less setup on irregular parts.

Source:

- <https://robotiq.com/products/adaptive-grippers>

## Category 3: Soft Underactuated Hand Baseline

### qb SoftHand

qb SoftHand is very important as a conceptual comparison. It is anthropomorphic, but it avoids full independent finger control by using underactuation and mechanical synergy.

The qb SoftHand Industry page describes a tendon-driven system with a single motor that opens and closes five fingers together while replicating the first synergy of the human hand. It is positioned as an industrial collaborative robotic hand. Other sources describe the research version as a 19-DoF hand controlled through one degree of actuation.

Relevance to GaugeHand:

> qb SoftHand = few actuators plus hand-like morphology.
>
> GaugeHand = few actuators plus non-hand dense contact morphology.

That contrast is central to the research thesis.

Prompt product examples:

| Product | Use | Prompt price snapshot | Link |
| --- | --- | ---: | --- |
| qb SoftHand Research | Research baseline for soft underactuated adaptive grasping. | Listed as USD 1.00 in prompt, likely placeholder/request-pricing behavior. | <https://store.clearpathrobotics.com/products/softhand-research> |
| qb SoftHand Industry | Industrial soft hand baseline. | Listed as USD 1.00 in prompt, likely placeholder/request-pricing behavior. | <https://store.clearpathrobotics.com/products/softhand-industry> |

Sources:

- <https://qbrobotics.com/product/qb-softhand-industry/>
- <https://qbrobotics.com/between-soft-technology-and-collaborative-robots/>
- <https://www.iit.it/web/robotics-for-a-better-life/softhand_pro>

## Category 4: Dexterous-Hand Baselines

These are useful mostly as "what GaugeHand is not trying to copy." They are relevant baselines if the thesis is that dense passive/adaptive contact can solve many tasks with less anatomical complexity.

### Allegro Hand

Allegro Hand sells human-inspired robotic hands. Its product page lists V5 Sense, V5 Plus, V5, and V4 variants. The page describes V5 Plus as a 16-DOF structure with 360-degree omnidirectional pressure-sensitive tactile sensing, and V5 as a 9-DOF structure with similar tactile sensor language.

Source:

- <https://www.allegrohand.com/>

### Shadow Dexterous Hand

Shadow Robot's Dexterous Hand is a high-end research hand. Shadow's product page describes 20 motors, tendon drive, 24 degrees of freedom, and more than 100 sensors running up to 1 kHz.

Source:

- <https://shadowrobot.com/dexterous-hand-series/>

### Lower-Cost Dexterous-Hand Examples from Prompt

| Product | Use in GaugeHand comparison | Prompt price snapshot | Link |
| --- | --- | ---: | --- |
| DexRobot DexHand021 S Three-Finger Robot Hand | Lower-cost three-finger baseline. | USD 1,795.04 | <https://sonnyrobotics.com/products/dexrobot-dexhand021-s> |
| AgiBot OmniHand 2025 | Compact dexterous-hand baseline. | USD 4,724.00 | <https://www.robotshop.com/products/agibot-omnihand-2025-left> |
| DG-5F-M Robotic Hand | High-DOF hand baseline. | USD 15,400.00 | <https://www.knoxlabs.com/products/dg-5f-m-robotic-hand> |

These should be treated as baselines, not first purchases. They answer a different question: "How cheaply can we buy finger kinematics?" GaugeHand asks: "How much can dense contact geometry replace finger kinematics?"

## Category 5: Standard Industrial Gripper Baselines

Standard grippers are important because GaugeHand must beat them on a concrete task to justify complexity.

Prompt examples:

| Product | Baseline role | Prompt price snapshot | Link |
| --- | --- | ---: | --- |
| OnRobot VG10 Vacuum Gripper | Vacuum/adaptive suction baseline. | USD 6,140.00 | <https://thinkbotsolutions.com/products/onrobot-vg10> |
| MG400 Accessory Soft Gripper | Simple soft gripper baseline. | USD 1,560.00 | <https://www.robotshop.com/products/mg400-accessory-soft-gripper> |
| OnRobot RG2 Flexible Gripper | Common cobot gripper baseline. | USD 5,580.00 | <https://thinkbotsolutions.com/products/onrobot-rg2> |

Use these to benchmark:

- pickup success;
- cycle time;
- object damage rate;
- pose tolerance;
- ease of integration;
- maintenance burden.

## Buying Recommendation

### Do Not Buy First

Do not buy an expensive dexterous hand as the first step. It will not directly test the contour-field hypothesis. It may also pull the project back into finger-kinematics work, which is exactly the design trap GaugeHand is trying to avoid.

### Buy First

Buy low-cost mechanism demos:

1. Metal-pin contour gauge.
2. Plastic locking contour gauge.
3. Pin-art toy or small pin screen.
4. Assorted compression springs, smooth rods, low-friction bushings, and silicone/TPU tips.

Use them to answer:

- How much pin friction is acceptable?
- How does locking actually fail?
- How dense do pins need to be?
- What pin length causes side-load jamming?
- How repeatable is a passive impression?
- What tip geometry increases friction without damaging objects?

### Build First

The first meaningful GaugeHand prototype should be:

> Two contour-gauge pads facing each other, each with passive pins, spring return, soft tips, and a locking layer.

Minimum useful prototype:

- 2 opposing pads;
- 8 x 8 to 12 x 12 pins per pad;
- spring return;
- soft replaceable tips;
- manual or motorized lock;
- simple parallel-jaw closure;
- optional pin-depth sensing after the mechanical design is stable.

This is closer to the original idea than buying Allegro, Shadow, Robotiq, or qb SoftHand.

## Baseline Strategy

Recommended comparison ladder:

1. Flat jaws.
2. Soft jaws.
3. Vacuum gripper.
4. Commercial adaptive gripper such as Festo DHEF, Schmalz mGrip, or Robotiq adaptive grippers.
5. qb SoftHand as a soft underactuated hand baseline.
6. Allegro/Shadow or lower-cost dexterous hands only if the task truly requires in-hand manipulation comparison.

GaugeHand should first prove value on tasks where ordinary grippers struggle:

- irregular objects;
- unknown orientation;
- fragile items;
- tool handles with off-center mass;
- mixed parts with no custom fixture;
- objects where suction cannot seal.

## Product Gap

The apparent commercial gap is:

> A lockable, self-sensing, dense-contact gripper that acts like a temporary custom fixture and also returns a tactile depth map.

Existing products cover pieces of this:

- contour gauges: dense passive shape copy, no robotics;
- adaptive grippers: robotic gripping, no dense pin depth map;
- qb SoftHand: underactuated human-like morphology, not dense field contact;
- dexterous hands: many DOF, expensive and sparse-contact;
- vacuum/soft grippers: practical pickup, limited shape sensing;
- academic pin-array grippers: close mechanism, not widely available as a mature off-the-shelf product.

This supports the GaugeHand direction, but only if the first MVP is narrow and practical.

## Sources

Academic and technical:

- Mo and Zhang, "A novel universal gripper based on meshed pin array": <https://journals.sagepub.com/doi/10.1177/1729881419834781>

Adaptive grippers:

- Festo DHEF product page: <https://www.festo.com/us/en/a/8092533>
- Festo DHEF documentation: <https://www.festo.com/media/catalog/202805_documentation.pdf>
- Festo DHEF press article: <https://press.festo.com/fr/node/2923>
- Schmalz mGrip page: <https://www.schmalz.com/en-us/solutions/media-center/mgrip---hygienic-gripping--safe-holding>
- Schmalz mGrip flyer: <https://media.schmalz.com/MAM_Library2/Dokumente/Publikation/Flyer/653383818c12_Flyer_VACO_Finger%20Gripper%20mGrip_Schmalz_2024_enEN.pdf>
- Robotiq adaptive grippers: <https://robotiq.com/products/adaptive-grippers>

Soft and dexterous hands:

- qb SoftHand Industry: <https://qbrobotics.com/product/qb-softhand-industry/>
- qb SoftHand background: <https://qbrobotics.com/between-soft-technology-and-collaborative-robots/>
- IIT SoftHand Pro: <https://www.iit.it/web/robotics-for-a-better-life/softhand_pro>
- Allegro Hand: <https://www.allegrohand.com/>
- Shadow Dexterous Hand Series: <https://shadowrobot.com/dexterous-hand-series/>

Prompt product examples:

- General Tools locking contour gauge: <https://www.homedepot.com/p/General-Tools-10-in-Locking-Contour-Gauge-with-Extended-Pins-834X/318849047>
- Shinwa contour profile gauge: <https://taytools.com/products/shinwa-rules-contour-profile-gauge-with-stainless-steel-pins?variant=39418783531095>
- QEP locking contour gauge: <https://www.homedepot.com/p/QEP-6-in-W-Locking-Professional-Profile-and-Contour-Gauge-10038/311091558>
- Saker contour gauge: <https://www.homedepot.com/p/Saker-5-in-and-10-in-Contour-Gauge-Profile-Tool-and-Duplicator-SAK5106-C012-X0147/319815499>
- DexRobot DexHand021 S: <https://sonnyrobotics.com/products/dexrobot-dexhand021-s>
- AgiBot OmniHand 2025: <https://www.robotshop.com/products/agibot-omnihand-2025-left>
- DG-5F-M robotic hand: <https://www.knoxlabs.com/products/dg-5f-m-robotic-hand>
- OnRobot VG10: <https://thinkbotsolutions.com/products/onrobot-vg10>
- MG400 soft gripper: <https://www.robotshop.com/products/mg400-accessory-soft-gripper>
- OnRobot RG2: <https://thinkbotsolutions.com/products/onrobot-rg2>
