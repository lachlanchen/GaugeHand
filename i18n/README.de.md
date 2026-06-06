<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <a href="README.zh-Hans.md">简体中文</a> ·
  <a href="README.zh-Hant.md">繁體中文</a> · <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> · <a href="README.es.md">Español</a> ·
  <a href="README.fr.md">Français</a> · <b>Deutsch</b> ·
  <a href="README.pt.md">Português</a> · <a href="README.ru.md">Русский</a> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand ist ein Konzept fuer eine konturfeldbasierte Roboterhand von [Lachlan Chen](https://github.com/lachlanchen), veroeffentlicht im Forschungsstrom von [lazying.art](https://lazying.art).**

Die Idee ist nicht, die menschliche Hand Gelenk fuer Gelenk zu kopieren. Stattdessen entsteht ein dichtes Kontaktfeld aus vielen einfachen Elementen, aehnlich einer 3D-Konturenlehre oder einem Pin-Screen. Das Objekt formt den Greifer, danach verriegelt eine Schicht die Form als temporaere Vorrichtung.

## These

- Dichte Kontakte koennen unbekannte Objekte besser lokal stuetzen als wenige Finger.
- Passive Formaufnahme braucht Verriegelung, sonst ist sie kein stabiler Griff.
- Pin-Verschiebungen koennen als taktile Tiefenkarte dienen.
- Echte Geschicklichkeit braucht spaeter laterale oder Scher-Kontrolle.

## Erstes MVP

Zuerst eine zweiseitige, verriegelbare Pin-Array-Zange bauen:

1. Zwei kleine Pin-Array-Pads stehen sich gegenueber.
2. Jeder Pin gleitet passiv und wird durch eine Feder zurueckgestellt.
3. Weiche Silikonspitzen oder eine austauschbare Haut verbessern Reibung.
4. Eine gemeinsame Verriegelungsplatte fixiert die Kontur.
5. Ein Linearantrieb oder Parallelgreifer liefert die Schliessbewegung.

## Ressourcen

| Datei | Inhalt |
| --- | --- |
| [Deep report](../references/contour-field-robotic-hand-report.md) | Machbarkeit, Architektur, Risiken, Roadmap |
| [LaTeX paper](../publications/gaugehand_contour_field_feasibility.tex) | technischer Entwurf |
| [Commercial baselines](../references/commercial-products-and-baselines.md) | Markt- und Produktvergleich |
| [Chinese procurement notes](../references/chinese-market-procurement-notes.md) | Suchbegriffe und Beschaffung |
| [IDEAS handoff](../references/ideas-codex-handoff.md) | Prompt fuer IDEAS |
| [publish-repo skill](../skills/publish-repo/SKILL.md) | GitHub-Publishing fuer Codex / AgInTi |

## Unterstuetzung

Diese offenen Forschungsnotizen koennen ueber [lazying.art](https://lazying.art) oder [GitHub Sponsors](https://github.com/sponsors/lachlanchen) unterstuetzt werden.
