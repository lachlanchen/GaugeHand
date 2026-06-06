<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <b>简体中文</b> ·
  <a href="README.zh-Hant.md">繁體中文</a> · <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> · <a href="README.es.md">Español</a> ·
  <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> ·
  <a href="README.pt.md">Português</a> · <a href="README.ru.md">Русский</a> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand 是 [Lachlan Chen](https://github.com/lachlanchen) 提出的轮廓场机器人手概念，发布于 [lazying.art](https://lazying.art) 研究流。**

它不是继续复制人手的每一个关节，而是把“手”重新定义成一个由许多简单接触单元组成的密集接触场。物体压入时，针阵列像三维轮廓规一样被动取形；随后通过锁定层把这个形状变成临时定制夹具。

## 核心观点

- 密集接触比稀疏手指更适合未知物体的局部支撑。
- 被动取形必须配合锁定，否则只是展示装置。
- 针位移天然可以成为触觉深度图。
- 真正的灵巧操作需要后续加入剪切/横向接触控制。

## 第一个 MVP

不要先做五指手。先做一个两面对置的锁定式针阵列夹爪：

1. 两块小型 pin-array pad 相对安装。
2. 每根针被动滑动并带弹簧回位。
3. 针尖使用软硅胶帽或柔性皮肤。
4. 用共享锁定板冻结取形后的轮廓。
5. 用线性滑台、丝杆或电动平行夹爪提供闭合力。

## 资源

| 文件 | 内容 |
| --- | --- |
| [深度研究报告](../references/contour-field-robotic-hand-report.md) | 可行性、架构、风险和路线图 |
| [LaTeX 论文](../publications/gaugehand_contour_field_feasibility.tex) | 详细出版草稿 |
| [商业基线](../references/commercial-products-and-baselines.md) | 软夹爪、灵巧手、工业夹爪对比 |
| [中文采购笔记](../references/chinese-market-procurement-notes.md) | 淘宝/1688/中文关键词和采购建议 |
| [IDEAS 交接说明](../references/ideas-codex-handoff.md) | 发布到 IDEAS 仓库的 Codex prompt |
| [发布仓库 Skill](../skills/publish-repo/SKILL.md) | Codex / AgInTi 可用的 GitHub 发布流程 |

## 支持

如果你想支持这类开放研究笔记，可以访问 [lazying.art](https://lazying.art) 或 [GitHub Sponsors](https://github.com/sponsors/lachlanchen)。
