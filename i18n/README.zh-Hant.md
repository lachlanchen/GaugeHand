<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <a href="README.zh-Hans.md">简体中文</a> ·
  <b>繁體中文</b> · <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> · <a href="README.es.md">Español</a> ·
  <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> ·
  <a href="README.pt.md">Português</a> · <a href="README.ru.md">Русский</a> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand 是 [Lachlan Chen](https://github.com/lachlanchen) 提出的輪廓場機器人手概念，發布於 [lazying.art](https://lazying.art)。**

它不再逐一複製人手關節，而是用許多簡單接觸元件形成密集接觸場。物體壓入時，針陣列像三維輪廓規一樣被動取形，再透過鎖定層把該形狀變成臨時定制夾具。

## 核心觀點

- 密集接觸可提供比稀疏手指更多的局部支撐。
- 被動取形必須結合鎖定，否則只能展示形狀。
- 針位移可作為觸覺深度圖。
- 真正靈巧操作需要剪切/橫向接觸控制。

## 第一版 MVP

先做兩面相對的鎖定式針陣列夾爪，而不是五指手：

1. 兩塊小型 pin-array pad 相對安裝。
2. 每根針被動滑動並具彈簧回位。
3. 針尖使用軟矽膠帽或柔性皮膚。
4. 用共享鎖定板固定取形後的輪廓。
5. 用線性滑台、螺桿或電動平行夾爪提供閉合力。

## 資源

| 文件 | 內容 |
| --- | --- |
| [深度研究報告](../references/contour-field-robotic-hand-report.md) | 可行性、架構、風險和路線圖 |
| [LaTeX 論文](../publications/gaugehand_contour_field_feasibility.tex) | 詳細出版草稿 |
| [商業基線](../references/commercial-products-and-baselines.md) | 軟夾爪、靈巧手、工業夾爪比較 |
| [中文採購筆記](../references/chinese-market-procurement-notes.md) | 淘寶/1688/中文關鍵詞和採購建議 |
| [IDEAS 交接說明](../references/ideas-codex-handoff.md) | 發布到 IDEAS 倉庫的 Codex prompt |
| [發布倉庫 Skill](../skills/publish-repo/SKILL.md) | Codex / AgInTi 可用的 GitHub 發布流程 |

## 支持

可透過 [lazying.art](https://lazying.art) 或 [GitHub Sponsors](https://github.com/sponsors/lachlanchen) 支持這類開放研究筆記。
