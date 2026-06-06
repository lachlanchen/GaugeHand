<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <a href="README.zh-Hans.md">简体中文</a> ·
  <a href="README.zh-Hant.md">繁體中文</a> · <b>日本語</b> ·
  <a href="README.ko.md">한국어</a> · <a href="README.es.md">Español</a> ·
  <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> ·
  <a href="README.pt.md">Português</a> · <a href="README.ru.md">Русский</a> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand は [Lachlan Chen](https://github.com/lachlanchen) による輪郭場ロボットハンドの構想で、[lazying.art](https://lazying.art) の研究ノートとして公開されています。**

人間の手の関節をそのまま再現するのではなく、多数の単純な接触要素で密な接触場を作るという発想です。物体が押し込まれると、ピン配列が 3D 輪郭ゲージのように形状を受け取り、その後ロック機構で一時的な専用治具になります。

## 要点

- 密な接触は未知物体の局所支持に強い。
- 受動的な形状取得だけでは不十分で、ロック機構が必要。
- ピン変位は触覚的な深度マップとして使える。
- 本当の器用さには、将来的なせん断方向の制御が必要。

## 最初の MVP

最初から五指ハンドを作らず、二面対向のロック可能なピン配列グリッパを作ります。

1. 小型の pin-array pad を二枚向かい合わせる。
2. 各ピンは受動スライドとばね戻りを持つ。
3. 先端には柔らかいシリコーンチップまたはスキンを使う。
4. 共有ロック板で取得した輪郭を固定する。
5. リニアスライドや平行グリッパで閉じる。

## リソース

| ファイル | 内容 |
| --- | --- |
| [Deep report](../references/contour-field-robotic-hand-report.md) | 実現性、設計、リスク、ロードマップ |
| [LaTeX paper](../publications/gaugehand_contour_field_feasibility.tex) | 詳細な出版ドラフト |
| [Commercial baselines](../references/commercial-products-and-baselines.md) | 既存製品との比較 |
| [Chinese procurement notes](../references/chinese-market-procurement-notes.md) | 中国市場での検索語と購入メモ |
| [IDEAS handoff](../references/ideas-codex-handoff.md) | IDEAS リポジトリへの公開手順 |
| [publish-repo skill](../skills/publish-repo/SKILL.md) | Codex / AgInTi 用の GitHub 公開スキル |

## Support

このような公開研究ノートは [lazying.art](https://lazying.art) または [GitHub Sponsors](https://github.com/sponsors/lachlanchen) から支援できます。
