# Chinese Market Search and Procurement Notes for GaugeHand

Date: 2026-06-06

Purpose: document Chinese/Taobao-style search terms, nearby purchasable products, and practical buying guidance for the GaugeHand concept.

## Bottom Line

可以买到相近的东西, 但淘宝、1688、京东或常见机器人零件渠道上大概率买不到真正想要的那种完整形态:

> 3D 轮廓规式灵巧手 / 锁定式针阵列自适应夹爪 / 轮廓场机器人手爪

可以买到的是四类相邻产品:

1. 轮廓规、仿形尺、取型器: 最接近 contour gauge 原理, 适合拆解研究。
2. 针雕、针屏、针幕: 最像大型 pin-art / pin-screen 结构, 适合观察三维形状复制。
3. 柔性夹爪、软体夹爪、自适应夹爪: 最接近可买的机器人抓取版本, 但不是针阵列。
4. 灵巧手、电动夹爪、三指夹爪: 可作为机器人接口和商业基线, 但大多仍是仿人手或传统夹爪路线。

因此采购目标不应该是直接买一个现成的 GaugeHand, 而是先买机制样品和基线夹爪, 用来验证:

- 密集被动接触是否比手指式稀疏接触更适合未知物体;
- 被动取形、锁定、软接触和机器人闭合能否组合成一个可靠 MVP;
- 相比柔性夹爪、三指夹爪、低价灵巧手, 针阵列夹爪是否有可证明优势。

## Snapshot Caveat

本文件中的价格和商品链接来自用户提供的检索快照或公开页面, 不是采购报价。淘宝、1688、京东、RobotShop、ThanksBuyer、AI FitLab 等平台价格和库存经常变化。正式购买前需要重新核对:

- 当前价格、运费、关税、税费;
- 左手/右手、控制器、气泵、电源、线缆是否包含;
- 通信接口, 如 UART、RS485、CAN、CAN-FD、EtherCAT、USB、ROS 支持;
- 是否有 SDK、URDF、CAD、安装法兰图纸;
- 售后、退换、发票和技术支持;
- 是否适合你的机器人臂载荷、腕部接口和安全要求。

## Category 1: 轮廓规 / 取型器

这是最接近 contour gauge 的可买机械样品。它不是机器人夹爪, 但非常适合拆解研究:

- 针/片如何独立滑动;
- 摩擦如何形成临时保持;
- 锁定机构如何压紧整排针;
- 针距如何决定轮廓分辨率;
- 针长和针径如何影响弯曲、卡滞和取形深度;
- 塑料片、钢针、不锈钢片的手感和耐久差异。

淘宝关键词:

- 轮廓规
- 仿形尺
- 取型器
- 取形器
- 取模器
- 轮廓取型器
- 木工轮廓规
- 瓷砖轮廓规
- 不锈钢针轮廓规
- 带锁轮廓规
- 金属针轮廓规

建议购买组合:

| 样品 | 目的 |
| --- | --- |
| 金属针轮廓规 | 看高刚度针阵列、针尖摩擦、针密度和重复取形精度 |
| 带锁塑料轮廓规 | 看低成本锁定机构和塑料片摩擦 |
| 宽版轮廓规 | 研究大面积取形时的锁定均匀性 |
| 不同针距版本 | 对比形状分辨率和制造复杂度 |

对 GaugeHand 的启发:

- 先做被动取形, 再锁定, 可能比每根针都电机化更现实。
- 锁定机构是核心难点, 不是附属功能。
- 针阵列必须有软接触层, 仅靠硬针尖会滑、会伤物体, 也难以稳定抓取。

## Category 2: 针雕 / 针屏 / 针幕

这是最像游乐场人形 pin screen 的类别。它通常用于互动展示, 不是夹爪, 但能直观看到密集针阵列如何复制三维外形。

淘宝关键词:

- 针雕
- 立体针雕
- 针屏
- 针幕
- 针幕墙
- 人像针雕墙
- 3D 针雕墙
- Pin Art 针雕
- 大型针雕装置
- 人体针幕
- 互动针雕墙

适合研究:

- 大面积针阵列的摩擦和重量;
- 长行程针如何保持平行;
- 针阵列被人体斜向压入时是否卡滞;
- 大尺寸结构如何导向、限位和复位;
- 视觉效果和真实几何精度之间的差距。

对 GaugeHand 的启发:

- 大型针幕证明密集被动采样直观可行, 但没有抓取力和锁定控制。
- 如果把针幕缩小成机器人掌面, 必须增加力闭合、锁定、传感和安全限位。
- 人体针幕更像 3D 形状显示器, GaugeHand 需要变成机械抓取器。

## Category 3: 柔性夹爪 / 自适应夹爪

这是最接近可直接购买的机器人版本。它们不使用针阵列, 但共享同一个设计哲学:

> 不直接复制人手所有自由度, 而是让末端执行器通过形变或包络来自适应物体。

淘宝、1688、京东、厂家官网关键词:

- 柔性夹爪
- 软体夹爪
- 自适应夹爪
- 包络夹爪
- 气动柔性夹爪
- 硅胶柔性夹爪
- 仿生柔性手爪
- 机器人柔性手爪
- 末端执行器 柔性夹爪
- 食品级柔性夹爪
- 软体机器人夹爪
- 气动软爪
- 电控柔性夹爪

Prompt product examples:

| Product | Chinese label | Snapshot price | Link |
| --- | --- | ---: | --- |
| Spherical Flexible Mechanical Claw + Pneumatic Controller | 球形柔性夹爪 | USD 139.92 | <https://www.thanksbuyer.com/products/spherical-flexible-mechanical-claw-pneumatic-controller-flexible-soft-robot-claw-for-robot-diy?variant=40826189414449> |
| Spherical Flexible Mechanical Claw + Electric Controller | 电控柔性夹爪 | USD 258.34 | <https://www.thanksbuyer.com/products/spherical-flexible-mechanical-claw-electric-controller-flexible-soft-robot-claw-for-robot-diy?variant=40826189447217> |
| Pneumatic Two-Finger Flexible Robot Claw | 双指软夹爪 | USD 69.05 | <https://www.thanksbuyer.com/products/pneumatic-two-finger-flexible-robot-claw-bionic-hand-robotic-hand-fruit-sorting-soft-adaptive-claw?variant=40826188759089> |
| AgiBot OmniPicker Adaptive Gripper | 自适应夹爪 | USD 641.00 | <https://www.robotshop.com/products/agibot-omnipicker-adaptive-gripper?variant=53447515537772> |
| SoftGripper Engineering Kit | 软夹爪套件 | USD 1,648.15 | <https://www.robotshop.com/products/softgripping-softgripper-engineering-kit?variant=42361737904289> |

官方/品牌参考:

- Festo DHEF: 形状自适应夹爪, 用于抓取位置和形状不确定的物体。
- OnRobot Soft Gripper: 食品级柔性夹爪, 面向不规则和精致物品的取放。
- SRT / SoftRobotTech SFG: 软体柔性夹爪, 通过充气弯曲形变实现包覆抓取。

与 GaugeHand 的关系:

| 项目 | 柔性夹爪 | GaugeHand |
| --- | --- | --- |
| 接触方式 | 连续软材料包覆 | 离散高密度针/微接触阵列 |
| 取形 | 依靠材料变形 | 可通过针位移直接读取轮廓 |
| 锁定 | 通常靠气压、材料刚度或结构弹性 | 需要主动或共享锁定机构 |
| 感知 | 一般较弱, 需要额外传感 | 可天然输出 2.5D / 3D 接触深度图 |
| 操作能力 | 抓取强, 精细操控弱 | 如果有剪切/倾斜能力, 可扩展到操控 |
| MVP 价值 | 很好的抓取基线 | 需要证明比柔性夹爪更稳、更可测、更可控 |

采购建议:

- 买一个低价气动柔性夹爪作为非仿人自适应抓取基线。
- 不要把软夹爪当成最终答案, 它缺少针阵列的形状读取优势。
- 用同一批测试物体比较软夹爪和自制针阵列夹爪: 水果、杯子、线缆、异形零件、工具柄、薄壁包装。

## Category 4: 灵巧手 / 机械手

可以买, 但方向和 GaugeHand 的核心思想相反。灵巧手通常仍然走:

> 五指 / 三指 / 多关节 / 多电机 / 仿人手形态

而 GaugeHand 的核心假设是:

> 用许多简单接触单元替代复杂手指, 用密集接触和机械自适应获得有效自由度。

淘宝、京东、厂家官网关键词:

- 灵巧手
- 仿人五指灵巧手
- 机器人灵巧手
- 欠驱动灵巧手
- 五指机械手
- 仿生机械手
- 力控灵巧手
- 触觉灵巧手
- ROS 灵巧手
- RS485 灵巧手
- CAN 灵巧手
- 人形机器人 灵巧手

Prompt product examples:

| Product | Chinese label | Snapshot price | Link |
| --- | --- | ---: | --- |
| AGIBOT OmniHand 2025 | 智元灵巧手 | USD 5,050.00 | <https://aifitlab.com/products/agibot-omnihand-2025?variant=44745685827720> |
| VEICHI YZ-T6 Series Dexterous Hand | VEICHI YZ-T6 灵巧手 | USD 2,500.00 | <https://aifitlab.com/products/veichi-yz-t6-series-dexterous-hand?variant=45829432115336> |
| CASIA HAND X | 中科院系灵巧手 | USD 12,500.00 | <https://aifitlab.com/products/casia-hand-x?variant=45830855819400> |

Chinese vendor/reference table:

| 中文名 | Company / brand | Search terms | Notes |
| --- | --- | --- | --- |
| 因时机器人 | Inspire Robots | 因时机器人 RH56DFX 灵巧手 | 官网有仿人五指灵巧手、伺服电动夹爪等产品线 |
| 灵心巧手 | LinkerBot | 灵心巧手 LinkerBot L10 L20 L30 | 官网定位为机器人灵巧手、仿人灵巧手、高自由度机械手 |
| 傲意科技 | OYMotion | 傲意科技 ROHAND 灵巧手 | ROHAND 系列强调触觉、力控、自适应抓取和 ROS/接口支持 |
| 智元机器人 | AgiBot | 智元 OmniHand 2025 / OmniHand Pro | 官方产品线列出 OmniHand 2025 和 OmniHand Pro 2025 |
| 大寰机器人 | DH-Robotics | 大寰 PGE CGE RGI 电动夹爪 | 不是灵巧手, 但非常适合作为工业夹爪基线 |

何时购买灵巧手:

- 需要和仿人手路线直接对比时;
- 需要展示 GaugeHand 为什么不选择高 DOF 手指路线时;
- 需要成熟 SDK、URDF、仿真、ROS、遥操作基线时;
- 预算允许, 且已经有机械臂和测试平台。

何时不应该购买灵巧手:

- 只是想证明针阵列原理时;
- 还没有定义测试物体、测试指标和夹爪接口时;
- 预算有限时;
- 项目重点是非仿人密集接触, 而不是手势或拟人操作。

## Category 5: 电动夹爪 / 三指夹爪 / 工业基线

这类产品不是 GaugeHand, 但很适合作为工程基线:

- 便宜、可靠、易集成;
- 抓取力和寿命通常比低价灵巧手更明确;
- 可以快速接到机械臂上做 pickup benchmark;
- 可以证明 GaugeHand 是否真的比标准夹爪更适合异形、柔软、位置不确定物体。

Prompt product examples:

| Product | Chinese label | Snapshot price | Link |
| --- | --- | ---: | --- |
| Chengzhou CGE-10-10 Three Finger Electric Concentric Gripper | 大寰/成洲三指夹爪 | USD 798.00 | <https://www.robotshop.com/products/shenzhen-chengzhou-technology-chengzhou-cge-10-10-three-finger-electric-concentric-gripper-dh-robotics?variant=42686864818337> |
| DH Robotics PGE-5-26 Slim Type Electric Parallel Gripper | 大寰电动夹爪 | USD 750.00 | <https://www.robotshop.com/products/shenzhen-chengzhou-technology-chengzhou-dh-robotics-pge-8-14-industrial-slim-type-electric-parallel-gripper?variant=42738751045793> |

Search terms:

- 电动夹爪
- 伺服夹爪
- 平行夹爪
- 三指夹爪
- 同心夹爪
- 大寰 电动夹爪
- DH Robotics PGE
- DH Robotics CGE
- 成洲夹爪
- 机器人末端执行器

Recommended baseline use:

- Use a simple parallel gripper as the "minimal industrial baseline."
- Use a three-finger gripper as the "adaptive sparse-contact baseline."
- Compare GaugeHand against both on the same object set.

## Recommended Search Strategy

最适合 GaugeHand 的中文搜索组合:

> 轮廓规 + 柔性夹爪 + 自适应夹爪 + 针雕 + 电动夹爪

不要一开始只搜 "灵巧手"。那会把方向带回五指仿人手, 价格也会迅速上升。

Recommended purchase sequence:

| Stage | Buy | Purpose |
| --- | --- | --- |
| 1 | 轮廓规 / 取型器 / 针雕玩具 | 拆结构, 理解 pin-array 取型 |
| 2 | 柔性夹爪 / 软体夹爪 / 气动柔性夹爪 | 测试非仿人手的自适应抓取 |
| 3 | 电动夹爪 / 三指夹爪 / 便宜灵巧手 | 做机器人平台接口和基线对比 |
| 4 | 自制两面对置针阵列夹爪 | 验证真正的 GaugeHand MVP |

Most useful first purchase set:

1. 1 个金属针轮廓规。
2. 1 个带锁定的塑料轮廓规。
3. 1 个针雕玩具或小型针屏。
4. 1 个低价气动柔性夹爪。
5. 若已有机械臂, 再买 1 个便宜电动平行夹爪作为接口基线。

## What To Build After Buying

第一版自制 MVP 不应该做五指手。更合理的是:

> 两面对置锁定式针阵列夹爪

Minimal architecture:

- 两块小型 pin-array pad 相对安装;
- 每根针被动滑动, 带弹簧回位;
- 针尖有软硅胶帽或一层可更换柔性皮肤;
- 每个 pad 有一个共享锁定板或楔形锁定机构;
- 夹爪由一个线性滑台、电动夹爪底座或简单丝杆闭合;
- 初版不要求每根针主动驱动;
- 若预算允许, 每根针或每列针加磁编码/Hall/光学位移检测。

MVP test goal:

- 能抓起形状未知的小物体;
- 能在抓取后锁定接触形状;
- 能输出或至少人工读取接触轮廓;
- 在异形物体上比平行夹爪更稳定;
- 在形状测量上比普通柔性夹爪更有信息量。

Suggested test objects:

- 苹果、橙子、香蕉;
- 塑料杯、纸杯、玻璃杯;
- 螺丝刀、扳手、手柄类工具;
- 小包装袋、软包装、泡沫块;
- 异形 3D 打印件;
- 电缆、软管、圆柱和薄片。

Suggested metrics:

- pickup success rate;
- object damage rate;
- slip rate under wrist shaking;
- maximum payload before slip;
- repeatability of captured contour;
- time to grasp;
- number of failed contacts or jammed pins;
- ability to regrasp after release;
- comparison with soft gripper and parallel gripper.

## Product Gap

市场上相邻产品很多, 但缺少这样一个组合:

> dense pin-array contact + lockable morphology + tactile/shape sensing + robotic closure + optional shear control

That gap is the GaugeHand opportunity.

现有产品分别覆盖了局部能力:

| Capability | Existing products | Missing for GaugeHand |
| --- | --- | --- |
| 取形 | 轮廓规、针雕 | 没有机器人抓取力和传感接口 |
| 包覆抓取 | 柔性夹爪、软体夹爪 | 形状读取能力弱, 锁定精度有限 |
| 工业集成 | 电动夹爪、三指夹爪 | 接触点稀疏, 对未知异形物体依赖视觉和姿态 |
| 灵巧操作 | 仿人灵巧手 | 复杂、贵、脆弱, 与非仿人密集接触路线不同 |
| 形状感知抓取 | 少量研究原型 | 商业化产品不常见 |

GaugeHand 的潜在差异化:

- 比软夹爪更可测: 针位移就是接触形状。
- 比平行夹爪更自适应: 接触面可以复制局部轮廓。
- 比五指灵巧手更简单: 初版可以少电机、少自由度、靠机械自适应。
- 比普通轮廓规更有用: 增加机器人闭合、锁定、传感和抓取任务。

## Procurement Decision Rule

如果目标是验证想法:

> 先买轮廓规、针雕、软夹爪, 不先买昂贵灵巧手。

如果目标是做机器人展示:

> 买电动夹爪或三指夹爪作为底座, 自制 pin-array fingertip/pad。

如果目标是写论文或申请项目:

> 同时准备三类基线: 平行夹爪、柔性夹爪、低价灵巧手。

如果目标是产品化:

> 先聚焦一个 narrow MVP, 比如异形小零件、食品、实验室耗材、软包装、工具柄, 不要承诺通用灵巧操作。

## Sources

Official and vendor references:

- Festo DHEF adaptive shape gripper: <https://www.festo.com/tw/zh/p/adaptive-shape-gripper-id_DHEF/>
- OnRobot Soft Gripper Chinese page: <https://onrobot.com/zh_hant/chanpinmen/rouxingjiazhao>
- SRT / SoftRobotTech SFG flexible gripper: <https://www.softrobottech.com/web/zh/category/13>
- Inspire Robots: <https://www.inspire-robots.com/>
- LinkerBot: <https://linkerbot.cn/>
- OYMotion ROHAND: <https://www.oymotion.com/product61>
- AgiBot: <https://www.agibot.com/>
- DH-Robotics: <https://www.dh-robotics.com/>
- VEICHI YZ-T6 product page: <https://www.veichi.com/product/yz-t6-6dof-tendon-driven-dexterous-hand.html>
- AgiBot OmniHand store page: <https://store.agibot.com/products/omnihand-2025-w-tactile>

Prompt marketplace examples:

- Spherical Flexible Mechanical Claw + Pneumatic Controller: <https://www.thanksbuyer.com/products/spherical-flexible-mechanical-claw-pneumatic-controller-flexible-soft-robot-claw-for-robot-diy?variant=40826189414449>
- Spherical Flexible Mechanical Claw + Electric Controller: <https://www.thanksbuyer.com/products/spherical-flexible-mechanical-claw-electric-controller-flexible-soft-robot-claw-for-robot-diy?variant=40826189447217>
- Pneumatic Two-Finger Flexible Robot Claw: <https://www.thanksbuyer.com/products/pneumatic-two-finger-flexible-robot-claw-bionic-hand-robotic-hand-fruit-sorting-soft-adaptive-claw?variant=40826188759089>
- AgiBot OmniPicker Adaptive Gripper: <https://www.robotshop.com/products/agibot-omnipicker-adaptive-gripper?variant=53447515537772>
- AGIBOT OmniHand 2025: <https://aifitlab.com/products/agibot-omnihand-2025?variant=44745685827720>
- VEICHI YZ-T6 Series Dexterous Hand: <https://aifitlab.com/products/veichi-yz-t6-series-dexterous-hand?variant=45829432115336>
- CASIA HAND X: <https://aifitlab.com/products/casia-hand-x?variant=45830855819400>
- Chengzhou CGE-10-10 Three Finger Electric Concentric Gripper: <https://www.robotshop.com/products/shenzhen-chengzhou-technology-chengzhou-cge-10-10-three-finger-electric-concentric-gripper-dh-robotics?variant=42686864818337>
- DH Robotics PGE-5-26 Slim Type Electric Parallel Gripper: <https://www.robotshop.com/products/shenzhen-chengzhou-technology-chengzhou-dh-robotics-pge-8-14-industrial-slim-type-electric-parallel-gripper?variant=42738751045793>
- SoftGripper Engineering Kit: <https://www.robotshop.com/products/softgripping-softgripper-engineering-kit?variant=42361737904289>
