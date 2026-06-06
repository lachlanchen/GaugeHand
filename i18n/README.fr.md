<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <a href="README.zh-Hans.md">简体中文</a> ·
  <a href="README.zh-Hant.md">繁體中文</a> · <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> · <a href="README.es.md">Español</a> ·
  <b>Français</b> · <a href="README.de.md">Deutsch</a> ·
  <a href="README.pt.md">Português</a> · <a href="README.ru.md">Русский</a> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand est un concept de main robotique à champ de contour proposé par [Lachlan Chen](https://github.com/lachlanchen) et publié depuis [lazying.art](https://lazying.art).**

L'idée n'est pas de reproduire la main humaine articulation par articulation. Elle consiste à créer un champ de contact dense avec de nombreux éléments simples, comme une jauge de contour 3D ou un écran à broches. L'objet façonne la pince, puis une couche de verrouillage transforme cette forme en support temporaire.

## Thèse

- Le contact dense peut mieux soutenir des objets inconnus que quelques doigts.
- La capture passive de forme doit être verrouillée pour devenir une prise.
- Le déplacement des broches peut fournir une carte tactile de profondeur.
- La manipulation fine exige ensuite un contrôle latéral ou de cisaillement.

## Premier MVP

Construire d'abord une pince à deux faces avec matrices de broches verrouillables:

1. Deux pads de broches face à face.
2. Broches passives avec rappel par ressort.
3. Embouts souples en silicone ou peau remplaçable.
4. Plaque de verrouillage partagée.
5. Fermeture par actionneur linéaire ou pince parallèle.

## Ressources

| Fichier | Contenu |
| --- | --- |
| [Rapport détaillé](../references/contour-field-robotic-hand-report.md) | faisabilité, architecture, risques et feuille de route |
| [Article LaTeX](../publications/gaugehand_contour_field_feasibility.tex) | brouillon technique |
| [Produits et baselines](../references/commercial-products-and-baselines.md) | comparaison de marché |
| [Notes d'achat Chine](../references/chinese-market-procurement-notes.md) | mots-clés et achats |
| [Handoff IDEAS](../references/ideas-codex-handoff.md) | prompt pour publication IDEAS |
| [Skill publish-repo](../skills/publish-repo/SKILL.md) | publication GitHub pour Codex / AgInTi |

## Soutien

Vous pouvez soutenir ces notes ouvertes via [lazying.art](https://lazying.art) ou [GitHub Sponsors](https://github.com/sponsors/lachlanchen).
