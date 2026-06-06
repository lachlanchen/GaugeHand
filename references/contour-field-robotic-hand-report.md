# Tactile Contour-Field Robotic Hand

Research report and design brief.

Date: 2026-06-06

Working project name: GaugeHand

## 1. Executive Thesis

The idea is strong, but the right framing is not "make a 3D contour gauge that mimics a hand." The stronger framing is:

> Replace anthropomorphic fingers with a tactile, lockable, distributed contact field.

A contour-gauge hand can be better than many dexterous robotic hands for unknown-object pickup, shape capture, fragile-object handling, and dense-contact grasping. It will not automatically replace dexterous five-finger hands for tool use or in-hand manipulation unless the contact field can generate controlled tangential or shear forces, not just normal displacement.

The recommended direction is a hybrid architecture:

1. A dense pin-array palm or pad that conforms to object geometry.
2. A locking or variable-stiffness layer that turns a passive shape into a load-bearing contact field.
3. Tactile sensing, at least pin displacement, preferably displacement plus normal force and shear or slip.
4. A low-DOF macro gripper, wrist, or simple opposing fingers that push objects into the contour field.
5. A shear-capable layer or pin-tip mechanism for actual in-hand manipulation.

This is closer to "distributed contact manipulation" than to a conventional robotic hand.

## 2. Naming and Concept Vocabulary

The object analogy is correct. The visual installation is usually called:

- Pin Art
- Pin Screen
- Pin Wall
- Pin Impression Wall
- Human-body pin screen
- In Chinese: 针雕墙, 针幕, 针屏, 立体针画, 针板印模墙

The small construction tool is usually called:

- Contour Gauge
- Profile Gauge
- In Chinese: 轮廓规, 仿形尺, 取型器, 取模尺

The engineering analogy is:

- Mechanical profilometer
- Contact profilometer
- Mechanical 3D contour sampler
- Dense normal-displacement tactile array

For the robot concept, the best technical names are:

- Tactile contour-field hand
- Lockable pin-field gripper
- Distributed contact hand
- Dense-contact morphing palm
- Pin-array tactile manipulator

## 3. Why Conventional Dexterous Hands Are Not Always the Right Target

Anthropomorphic hands are valuable for human-compatible tools, teleoperation, and tasks that truly require independent fingers. But copying the human hand directly creates hard engineering problems:

- Many motors and tendons.
- Many joints and coupled constraints.
- High calibration burden.
- Sparse contact points relative to a whole object surface.
- Expensive tactile integration.
- Complex policies for grasp planning, slip recovery, and in-hand manipulation.

Commercial examples show the scale of this complexity. Shadow Robot's Dexterous Hand series lists 20 DC motors, 20 actuated DOF plus 4 underactuated movements for 24 joints, and more than 100 sensors running up to 1 kHz. Allegro Hand's current product page lists 9-DOF and 16-DOF versions with omnidirectional pressure-sensitive tactile options.

Recent literature also supports the skepticism. A 2025/2026 survey, "Do Robots Really Need Anthropomorphic Hands?", reviewed 125 papers from 2019 to 2025 and concluded that complex five-fingered hands are not necessary for all tasks. It argues that simpler mechanisms can be sufficient for in-hand manipulation, while robustness, softness, sensing, and environmental contact are underused design axes.

This does not mean dexterous hands are bad. It means they are not the universal default. A contour-field hand should target a different optimum: high contact density, passive shape adaptation, low-dimensional control, and tactile geometry.

## 4. Existing Research Families

| Family | Relation to GaugeHand | Main limitation |
| --- | --- | --- |
| Pin-array grippers | Closest mechanical precedent. Pins conform to object geometry and increase contact points. | Usually grasping-focused; weak active in-hand manipulation. |
| Granular jamming grippers | Object shape passively programs the gripper. | Excellent pickup, poor geometry sensing and precise reorientation. |
| Distributed manipulation arrays | Many simple actuators cooperate to move objects. | Often tabletop systems, not hand-shaped or wearable on a robot arm. |
| Soft underactuated hands | Mechanical intelligence reduces control burden. | Still finger-like and usually low contact-area sensing. |
| Vision-based tactile hands | Rich tactile information improves manipulation. | Sensors can be hard to cover over large, curved, load-bearing surfaces. |

GaugeHand should combine the first, third, and tactile sensing families.

## 5. Core Mechanical Insight

A normal robotic hand uses:

> Few fingers, many joints, complex control, sparse contacts.

GaugeHand uses:

> Many simple contact elements, simple local motion, dense contact, emergent shape adaptation.

This is a kind of mechanical computation. The object itself sets the pin depths. The controller does not need to choose sparse grasp points before contact. It can close the macro mechanism, read the pin field, lock the morphology, and then perform tactile servoing.

The core idea is especially useful for objects that are:

- Irregular.
- Unknown.
- Fragile.
- Texture-rich.
- Difficult to model visually.
- Hard to grasp with two flat jaws.
- Too variable for a fixed custom fixture.

## 6. Key Finding: Normal Conformity Is Not Dexterity

A contour gauge mostly measures and reacts along one axis per pin. That gives dense normal displacement, but not full manipulation authority.

For grasping, normal displacement and friction can be enough. For in-hand manipulation, the hand also needs:

- Tangential force.
- Shear sensing.
- Slip detection.
- Regrasp or controlled release.
- Object pose estimation from contact.
- Local deformation modes that can rotate or translate the object.

Therefore the minimum serious design is not only a pin array. It is:

> Passive or hybrid pin adaptation + lockable stiffness + tactile sensing + shear-capable surface.

Without controlled shear, GaugeHand is mainly a universal gripper and shape scanner. With controlled shear, it becomes a candidate hand architecture.

## 7. Pin-Array Literature

### 7.1 Meshed Pin Array Universal Gripper, 2019

Mo and Zhang's "A novel universal gripper based on meshed pin array" is the closest early precedent. It explicitly starts from pin-art and universal socket ideas, then turns a pin array into a universal gripper.

Reported characteristics include:

- A matrix of elliptical pins.
- Passive adaptation to object shape.
- A coupled gripping mechanism.
- No need to pre-compute optimal grasp points for many objects.
- Simple actuation relative to a fully dexterous hand.

Relevance to GaugeHand:

- Strong support for pin arrays as adaptive grasping hardware.
- Shows that pin-array geometry can replace some grasp planning.
- Does not solve tactile sensing or dexterous in-hand manipulation.

### 7.2 Frictional and Prismatic Pin-Array Gripper, 2025

Lee et al., IEEE Transactions on Robotics 2025, developed a frictional and prismatic pin-array gripper for universal gripping and stable tool manipulation.

Key details:

- Double-sided pin-array mechanism.
- Each side uses a 5 x 5 pin array.
- Pins move independently and passively conform to object contours.
- Soft frictional fingertips increase contact friction.
- One motor drives the gripper plates.
- The authors target not only pick-and-place, but tool usage.

Reported results:

- Stable payload capacity: 2400 g.
- Compared baselines: RG2-FT reached 800 g, frictional flat gripper reached 400 g.
- Tool manipulation pitch-angle errors were much lower than baselines for hammer and file tasks.

Relevance to GaugeHand:

- Very important evidence that pin arrays are not only for static pickup.
- Supports the use of double-sided pin pads.
- Still mostly relies on passive pin compliance and friction, not a fully tactile, shear-actuated contact field.

### 7.3 Capacitive Displacement Sensing for Pin Arrays, 2025

Schroeder, Wendt, and Rupitsch proposed an additive-manufactured capacitive displacement sensor for adaptive pin-array grippers.

Key details:

- Measures displacement of individual pins.
- Parallel-plate capacitor concept.
- Additive manufacturing focus.
- Prototype intended measurement range: 20 mm, desired resolution: 1 mm.
- Experimental linearity was high, with reported R-squared values near 0.9995 to 0.9997 across tested pin materials.

Relevance to GaugeHand:

- Directly addresses one missing part of early pin-array grippers: sensing.
- Supports a practical path to a self-sensing contour field.
- The first GaugeHand prototype should consider Hall, optical, or capacitive pin-depth sensing from the start.

### 7.4 Terrain Shape Recognition Pin Array, 2026

"A Pin-Array Structure for Gripping and Shape Recognition of Convex and Concave Terrain Profiles" proposes a gripper for mobile robots in extreme environments. It uses a pin-array structure to grasp convex and concave terrain and simultaneously measure terrain shape.

Relevance:

- Confirms that pin arrays can be framed as both grippers and shape-recognition devices.
- Useful analogy for a GaugeHand that estimates object shape while grasping.

### 7.5 Balloon Pin Array Gripper, 2023

Kemmotsu et al. presented a Balloon Pin Array Gripper at RoboSoft 2023, using a two-step shape adaptation mechanism for deformable grasping.

Relevance:

- Shows that pin arrays can be combined with soft or inflatable structures.
- Suggests a route to reduce local pressure and improve fragile-object handling.

### 7.6 CTSA-II Soft Robot Hand with Pin-Array Structure, 2019

The CTSA-II hand uses a cluster-tube self-adaptive structure and pin-array ideas inside a soft robot hand.

Relevance:

- Shows that pin arrays can be embedded into hand-like morphologies.
- Also shows the likely trap: if the architecture remains finger-like, it may lose the radical advantage of a full contact field.

## 8. Adjacent Evidence from Jamming and Soft Hands

### 8.1 Granular Jamming Gripper

Brown et al.'s granular jamming gripper replaces fingers with a bag of granular material. The material flows around the object, then vacuum makes it rigid. The authors report that less than 0.5 percent volume change can be enough to grip reliably, and identify friction, suction, and interlocking as force mechanisms.

Relevance:

- Strong proof that universal grasping does not require a human-like hand.
- Also shows the weakness of purely passive universal grippers: poor local control and limited tactile shape information.

GaugeHand can keep the passive shape adaptation advantage while making the final morphology measurable and locally controllable.

### 8.2 Pisa/IIT SoftHand 2

Pisa/IIT SoftHand 2 uses only two degrees of actuation with hand softness and adaptive synergies to perform varied grasping and manipulation tasks, including object rotation, jar opening, and pouring.

Relevance:

- Supports low-dimensional control.
- Shows that embodied mechanical intelligence can substitute for many motors.
- GaugeHand should likewise use low-dimensional modes, not independent control of every pin by default.

## 9. Adjacent Evidence from Distributed Manipulation

### 9.1 ArrayBot

ArrayBot uses a 16 x 16 array of vertically sliding pillars with tactile sensors. It supports, senses, and manipulates tabletop objects. The authors use reinforcement learning and action-space reshaping with local patches and low-frequency action modes. They report generalization to unseen shapes and transfer to the physical robot without domain randomization.

Relevance:

- Very strong conceptual support.
- Demonstrates that a dense vertical actuator array can manipulate objects through tactile observations.
- GaugeHand can borrow the control idea: local patch actions and low-frequency spatial modes.

### 9.2 Linear Delta Arrays

Linear Delta Arrays use 64 linearly actuated delta robots, giving a 192-DOF compliant distributed manipulator. Demonstrated tasks include translation, alignment, prehensile squeezing, lifting, and grasping.

Relevance:

- Shows the power of many simple local actuators.
- Too actuator-heavy for a first hand, but a useful upper-bound architecture.

### 9.3 Low-Density Distributed Manipulation Surfaces

Recent work on soft manipulation surfaces connects sparse actuators with a compliant surface. This reduces actuator density while preserving useful object manipulation capability.

Relevance:

- Important for GaugeHand cost and manufacturability.
- Suggests a design where not every pin needs its own lateral actuator.
- A soft skin over pins could convert sparse lateral actuation into distributed shear.

## 10. Tactile Sensing Lessons

### 10.1 GelSight

GelSight-style tactile sensors show that contact geometry is highly informative. GelSight directly measures deformation of a soft elastomer surface, including vertical and lateral deformation. Force and slip can be inferred from deformation.

Relevance:

- A pin-field hand should treat shape as a tactile signal, not merely mechanical compliance.
- If a soft skin is placed over the pin array, embedded optical markers or magnetic markers could estimate shear and slip.

### 10.2 F-TAC Hand, 2025

F-TAC Hand integrates high-resolution tactile sensing over about 70 percent of the hand surface, with 0.1 mm spatial resolution. The Nature Machine Intelligence paper reports 600 real-world trials and significant improvement over non-tactile alternatives in complex manipulation tasks.

Relevance:

- Confirms that tactile embodiment is a bottleneck in robotic manipulation.
- Supports building sensing into the hand architecture from the beginning.

### 10.3 AllTact Fin Ray, 2025

AllTact Fin Ray combines a compliant gripper with omni-directional and local tactile sensing. A camera observes deformation of the transparent silicone body and contact face.

Relevance:

- Useful design precedent for combining soft compliance and whole-body tactile sensing.
- Suggests that GaugeHand should consider camera-based sensing for groups of pins or pads, not only per-pin electronics.

## 11. Best Architecture Options

### Architecture A: Pin-Array Palm + Simple Opposing Fingers

This is the safest first useful prototype.

Description:

- A dense pin-array palm conforms to the object.
- Two or three simple fingers push the object into the palm.
- The palm senses depth, locks, and provides distributed support.
- Fingers provide closure force and gross reorientation.

Advantages:

- Lower mechanical risk.
- Easier to mount on an existing robot arm.
- Allows comparison with normal grippers and underactuated hands.

Weakness:

- Dexterity is still dominated by macro finger and wrist motion.

### Architecture B: Two Opposing Pin-Array Pads

Description:

- Two contour-field pads face each other like a parallel gripper.
- Each pad has independent pins, soft tips, sensing, and locking.

Advantages:

- Best simple architecture for force closure.
- Good for irregular rigid objects, tools, fruit, labware, stones, and packages.
- Directly supported by the 2025 frictional/prismatic pin-array gripper precedent.

Weakness:

- Still weak for rolling or reorienting objects unless the pad surfaces can shear.

### Architecture C: Three Curved Micro-Hand Pads

Description:

- Three small curved pin-array pads surround the object.
- Each pad is mounted on a 1-DOF or 2-DOF macro linkage.
- The pads form a cage around the object.

Advantages:

- Best research direction for a new "hand" architecture.
- Uses few macro degrees of freedom and many micro contacts.
- More robust to object pose than a flat opposing gripper.

Weakness:

- Mechanical design is harder.
- Requires good calibration and collision handling between pads.

### Architecture D: Fully Active Pin-Field Hand

Description:

- Each pin or local pin patch is actively controlled.
- Pins may move normally, tilt, or generate lateral surface motion.

Advantages:

- Maximum dexterity.
- Closest to ArrayBot wrapped into a grasping hand.

Weakness:

- Expensive, complex, and probably not the right first prototype.

## 12. Recommended Unit Cell

Each pin or local contact unit should eventually provide:

| Function | Minimum version | Better version |
| --- | --- | --- |
| Shape adaptation | Passive sliding pin with spring return | Hybrid passive-active pin with controlled preload |
| Locking | Shared clamp, brake plate, or jamming layer | Local variable stiffness |
| Sensing | Pin displacement only | Displacement + normal force + shear/slip |
| Manipulation | Global wrist/finger motion only | Local tilting tip, lateral skin motion, or rotating eccentric tip |
| Contact | Hard plastic or metal tip | Soft replaceable high-friction tip or continuous skin |
| Safety | Spring compliance | Force-limited closure and tactile slip reflex |

## 13. Locking Concepts

A contour-field hand needs a way to keep the adapted shape under load. Candidate approaches:

1. Shared friction clamp plate: simple, cheap, but may have uneven locking force.
2. Cam or wedge lock: strong, but sensitive to tolerances.
3. Vacuum or jamming layer: good distributed locking, but adds pneumatic complexity.
4. Magnetorheological or electrorheological brake: controllable, but higher materials and power complexity.
5. Layered sheet brake: multiple thin layers clamp pins through friction.
6. Local solenoid brake per pin: high control, high cost and wiring.

For a first prototype, a shared friction clamp plate is the most practical. For a research-grade version, local stiffness control or segmented locking zones would be more publishable.

## 14. Shear-Capable Design Options

The missing capability is controlled tangential interaction. Candidate mechanisms:

1. Soft skin over pins pulled in x/y by tendons.
2. Pin tips that tilt by small angles under local actuation.
3. Eccentric rotating pin tips, creating local lateral surface motion.
4. Small wheeled or roller tips with controllable rotation.
5. Dense passive pins plus sparse active lateral actuators under a compliant surface.
6. Whole-pad micro-vibration or traveling-wave drive.
7. Differential locking: unlock selected regions while wrist motion rolls the object against locked regions.

Best first approach:

- Use passive normal pins for shape and support.
- Cover the pins with a replaceable soft high-friction skin.
- Add two tendon or belt directions to translate the skin relative to the pin base.
- Sense shear using marker motion, magnetic skin markers, or distributed strain sensors.

This keeps actuator count low while adding real manipulation authority.

## 15. Control Strategy

The control system should avoid independent high-bandwidth control of every pin. Instead:

1. Close macro gripper until contact is detected.
2. Read pin depth map.
3. Estimate contact patch geometry, object center, and likely stable grasp directions.
4. Lock or partially lock the field.
5. Apply low-dimensional manipulation modes.
6. Use slip and shear feedback for reflex correction.

Useful control modes:

- Uniform squeeze.
- Pad-level shear in x/y.
- Local patch shear.
- Low-frequency spatial waves.
- Unlock-lock rolling cycle.
- Wrist-assisted reorientation.
- Vibration-assisted settling.

ArrayBot's action-space reshaping is directly relevant: use local patches and low-frequency actions to avoid the curse of dimensionality.

## 16. Sensing Stack

Minimum sensing stack:

- Per-pin displacement.
- Global wrist or pad force/torque.
- Motor current or torque estimate.

Recommended sensing stack:

- Per-pin displacement.
- Local normal force on selected pins or pin patches.
- Soft skin shear/slip markers.
- Pad-level force/torque.
- Optional camera view of the contact-field deformation.

Object state estimates:

- Coarse 2.5D contact geometry.
- Contact area.
- Contact pressure proxy.
- Slip direction.
- Object rotation relative to pad.
- Grasp stability score.

## 17. Mechanical Scaling Rules

Main trade-offs:

- Smaller pin pitch improves shape resolution but weakens each pin.
- Longer stroke improves adaptation but increases buckling and guide friction.
- Softer tips reduce damage but blur geometry.
- Higher friction improves holding but can block smooth reorientation.
- Strong locking improves payload but can prevent useful rolling.
- More sensors improve tactile perception but increase wiring, calibration, and maintenance.

Initial target values for a benchtop prototype:

- Array: 10 x 10 or 12 x 12 per pad.
- Pin pitch: 5 to 8 mm.
- Stroke: 30 to 60 mm.
- Tip diameter: 3 to 6 mm.
- Tip material: silicone, TPU, or replaceable rubber.
- Locking: shared clamp or segmented clamp.
- Sensing: Hall-effect or capacitive depth, sampled at 50 to 200 Hz.
- Macro force: one force/torque sensor or inline load cell.

## 18. Prototype Roadmap

### Stage 1: Passive Lockable Pin Palm

Goal:

- Demonstrate adaptive dense contact and shape capture.

Build:

- 10 x 10 or 12 x 12 spring-return pins.
- Shared locking plate.
- Soft replaceable tips.
- Per-pin displacement sensing.

Experiments:

- Press objects into palm.
- Reconstruct contact depth map.
- Measure repeatability.
- Measure holding force with locked and unlocked pins.

Success criteria:

- Reliable depth map.
- No pin binding under angled contact.
- Lock holds useful load without excessive pin slip.

### Stage 2: Opposing Adaptive Gripper

Goal:

- Pick up unknown irregular objects without precise visual pose.

Build:

- Two opposing pin-array pads.
- Simple parallel gripper actuation.
- Pad-level force sensing.
- Lock/unlock cycle.

Experiments:

- Pickup success across object shapes.
- Pose uncertainty tolerance.
- Fragile-object damage tests.
- Slip detection and recovery.

Success criteria:

- Better success than flat parallel jaws on irregular objects.
- Lower peak pressure on fragile objects.
- Good shape estimate after grasp.

### Stage 3: Shear-Capable Pin Field

Goal:

- Rotate or translate the object while maintaining grasp.

Build one of:

- Tendon-driven soft skin over pins.
- Tilting pin-tip layer.
- Sparse lateral actuator array under compliant surface.

Experiments:

- In-hand rotation.
- Controlled object translation between pads.
- Tool handle stabilization.
- Slip-reflex response under external disturbance.

Success criteria:

- Repeatable object rotation or translation.
- Controlled shear without losing grip.
- Better manipulation than passive pin pads.

## 19. Evaluation Metrics

Grasping:

- Pickup success rate.
- Maximum payload.
- Peak contact pressure.
- Object damage rate.
- Success under pose uncertainty.
- Success across shape classes.

Sensing:

- Depth-map error.
- Contact localization error.
- Repeatability over repeated contacts.
- Slip detection latency.
- Object pose estimate accuracy.

Manipulation:

- In-hand rotation angle range.
- Translation error.
- Tool pitch/yaw stability.
- Number of regrasp cycles.
- Recovery from external disturbance.

System:

- Actuator count.
- Sensor count.
- Wiring complexity.
- Assembly time.
- Pin replacement time.
- Cleaning and debris tolerance.

## 20. Technical Risks

| Risk | Why it matters | Mitigation |
| --- | --- | --- |
| Pin binding | Angled contact can wedge pins and corrupt sensing. | Low-friction bushings, anti-rotation features, short unsupported length. |
| Buckling | Thin pins under load bend. | Larger pin diameter, shorter stroke, metal pins, guided sleeves. |
| Uneven locking | Some pins slip while others hold. | Segmented locking, compliant clamp layer, lock-force sensing. |
| Friction too low | Shape capture alone does not prevent slip. | Soft tips, textured skin, directional friction, preload control. |
| Friction too high | Object cannot reorient. | Active shear layer, controlled unlock zones, low-friction inner guides. |
| Sensor overload | Per-pin sensing increases wiring and calibration. | Multiplexed sensors, patch-level sensing, camera-based sensing. |
| Debris and contamination | Pin arrays collect dust, fibers, liquids. | Removable skin, sealed guides, washable cartridge. |
| Control dimensionality | Many pins can overwhelm policies. | Low-dimensional modes, local patches, tactile reflexes. |
| Object damage | Dense pins can create pressure points. | Soft skin, pressure limit, larger tip radius, force feedback. |

## 21. What Would Be Novel

The individual ingredients exist. The novelty is the combination:

1. Dense pin-array morphology for passive object-specific geometry.
2. Per-pin or per-patch displacement sensing to turn the gripper into a shape sensor.
3. Lockable stiffness to convert adaptation into load-bearing form.
4. Shear-capable skin or pin tips for in-hand manipulation.
5. Low-dimensional tactile control modes over a dense contact field.
6. A hybrid macro-micro hand: few large DOF for approach and closure, many local contacts for adaptation.

Possible paper title:

> A Tactile Contour-Field Robotic Hand for Dense-Contact Grasping and Low-Dimensional In-Hand Manipulation

Possible shorter title:

> GaugeHand: A Lockable Tactile Pin-Field Hand

## 22. Recommended First Paper Claims

Do not overclaim that it replaces dexterous hands. Better claims:

- A contour-field hand reduces grasp planning burden for unknown objects.
- Dense contact gives better shape-aware grasping than flat jaws.
- Pin displacement provides a tactile depth map during grasping.
- Locking improves payload and stability after passive adaptation.
- A shear-capable skin enables low-dimensional in-hand motion without fully actuating every pin.

Avoid claiming:

- Human-level dexterity.
- General replacement for anthropomorphic hands.
- Full 6-DOF manipulation from normal-only pins.

## 23. Minimal Experimental Comparison Set

Baselines:

- Flat parallel jaw gripper.
- Soft parallel jaw or Fin Ray gripper.
- Granular jamming gripper if available.
- Underactuated hand if available.

Objects:

- Spheres, cylinders, cubes.
- Irregular 3D prints.
- Tools: screwdriver, hammer, file, brush.
- Fragile objects: fruit, egg-like shells, lab tubes.
- Deformable objects: sponge, small food items, soft packaging.

Tasks:

- Blind pickup after coarse visual placement.
- Pickup under randomized pose.
- Hold under disturbance.
- Tool pitch/yaw stability.
- Shape reconstruction.
- In-hand rotation after Stage 3.

## 24. Practical Design Recommendation

Build Architecture B first: two opposing adaptive pin-array pads.

Reason:

- It is simpler than a full hand.
- It directly tests the core value of contour-field grasping.
- It has strong literature support.
- It creates a reusable module for later Architecture C.

Then add:

1. Per-pin displacement sensing.
2. Locking.
3. Soft skin.
4. Shear actuation.
5. Curved three-pad geometry.

The first engineering milestone should not be "dexterous hand." It should be:

> A self-sensing lockable pin-array gripper that outperforms flat jaws on unknown irregular objects and records the contact shape.

The second milestone should be:

> A shear-capable pin-field gripper that can rotate or translate an object in-hand using low-dimensional tactile feedback.

## 25. Primary Sources

### Pin arrays and contour-field grippers

- An Mo and Wenzeng Zhang, "A novel universal gripper based on meshed pin array," International Journal of Advanced Robotic Systems, 2019. DOI: https://doi.org/10.1177/1729881419834781
- Cheonghwa Lee, Hyeongwon Kim, Midum Oh, Kisu Ok, and Sung-Hoon Ahn, "Frictional and Prismatic Pin-Array Gripper for Universal Gripping and Stable Tool Manipulation," IEEE Transactions on Robotics, 2025. DOI: https://doi.org/10.1109/TRO.2025.3626656
- Steffen Schroeder, Thomas M. Wendt, and Stefan J. Rupitsch, "Conceptual design of additive manufactured capacitive displacement sensors for adaptive pin array grippers," Journal of Sensors and Sensor Systems, 2025. DOI: https://doi.org/10.5194/jsss-14-265-2025
- "A Pin-Array Structure for Gripping and Shape Recognition of Convex and Concave Terrain Profiles," arXiv:2601.08143, 2026. https://arxiv.org/abs/2601.08143
- Yuto Kemmotsu et al., "Balloon Pin Array Gripper: Mechanism for Deformable Grasping with Two-Step Shape Adaptation," IEEE RoboSoft, 2023. DOI: https://doi.org/10.1109/RoboSoft55895.2023.10121917
- "The Development of a Soft Robot Hand with Pin-Array Structure," Applied Sciences, 2019. https://www.mdpi.com/2076-3417/9/5/1011

### Universal grippers and soft underactuated hands

- Eric Brown et al., "Universal Robotic Gripper based on the Jamming of Granular Material," PNAS, 2010. arXiv: https://arxiv.org/abs/1009.4444 DOI: https://doi.org/10.1073/pnas.1003250107
- Cosimo Della Santina et al., "Toward Dexterous Manipulation with Augmented Adaptive Synergies: The Pisa/IIT SoftHand 2," IEEE Transactions on Robotics, 2018. DOI: https://doi.org/10.1109/TRO.2018.2830407
- George Jose Pollayil et al., "Sequential contact-based adaptive grasping for robotic hands," International Journal of Robotics Research, 2022. DOI: https://doi.org/10.1177/02783649221081154

### Distributed manipulation

- Zhengrong Xue et al., "ArrayBot: Reinforcement Learning for Generalizable Distributed Manipulation through Touch," arXiv:2306.16857, ICRA 2024. https://arxiv.org/abs/2306.16857
- Sarvesh Patil et al., "Linear Delta Arrays for Compliant Dexterous Distributed Manipulation," arXiv:2206.04596, ICRA 2023. https://arxiv.org/abs/2206.04596 DOI: https://doi.org/10.1109/ICRA48891.2023.10160578
- Pratik Ingle, Kasper Stoy, and Andres Faina, "Soft Manipulation Surface With Reduced Actuator Density For Heterogeneous Object Manipulation," arXiv:2411.14290, RoboSoft 2025. https://arxiv.org/abs/2411.14290
- Bailey Dacre et al., "Scalable Low-Density Distributed Manipulation Using an Interconnected Actuator Array," arXiv:2602.19653, 2026. https://arxiv.org/abs/2602.19653

### Tactile sensing

- Wenzhen Yuan, Siyuan Dong, and Edward H. Adelson, "GelSight: High-Resolution Robot Tactile Sensors for Estimating Geometry and Force," Sensors, 2017. DOI: https://doi.org/10.3390/s17122762
- Yixin Zhu et al., "Embedding high-resolution touch across robotic hands enables adaptive human-like grasping," Nature Machine Intelligence, 2025. DOI: https://doi.org/10.1038/s42256-025-01053-3
- Siwei Liang et al., "AllTact Fin Ray: A Compliant Robot Gripper with Omni-Directional Tactile Sensing," arXiv:2504.18064, 2025. https://arxiv.org/abs/2504.18064

### Robotic hand design context

- Alexander Fabisch et al., "Do Robots Really Need Anthropomorphic Hands? A Comparison of Human and Robotic Hands," arXiv:2508.05415, revised 2026. https://arxiv.org/abs/2508.05415
- Shadow Robot, "Dexterous Hand Series," official product page. https://shadowrobot.com/dexterous-hand-series/
- Wonik Robotics, "Allegro Hand," official product page. https://www.allegrohand.com/
