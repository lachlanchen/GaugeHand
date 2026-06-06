<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <a href="README.zh-Hans.md">简体中文</a> ·
  <a href="README.zh-Hant.md">繁體中文</a> · <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> · <b>Español</b> ·
  <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> ·
  <a href="README.pt.md">Português</a> · <a href="README.ru.md">Русский</a> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand es un concepto de mano robótica de campo de contorno de [Lachlan Chen](https://github.com/lachlanchen), publicado desde la línea de investigación de [lazying.art](https://lazying.art).**

La idea no es copiar la mano humana articulación por articulación. Es construir un campo denso de contacto con muchos elementos simples, parecido a un medidor de contorno 3D o una pantalla de pines. El objeto moldea el agarre y una capa de bloqueo convierte esa forma en una fijación temporal.

## Tesis

- El contacto denso puede sostener objetos desconocidos mejor que dedos escasos.
- La captura pasiva de forma necesita bloqueo para convertirse en agarre.
- El desplazamiento de los pines puede funcionar como mapa táctil de profundidad.
- La manipulación real requiere una futura capa de control lateral o de cizalla.

## Primer MVP

Construir primero una pinza de dos caras con matrices de pines bloqueables:

1. Dos pads de pines enfrentados.
2. Pines pasivos con retorno por resorte.
3. Puntas de silicona blanda o piel reemplazable.
4. Una placa de bloqueo compartida.
5. Cierre mediante actuador lineal o pinza paralela.

## Recursos

| Archivo | Contenido |
| --- | --- |
| [Informe profundo](../references/contour-field-robotic-hand-report.md) | viabilidad, arquitectura, riesgos y hoja de ruta |
| [Artículo LaTeX](../publications/gaugehand_contour_field_feasibility.tex) | borrador técnico detallado |
| [Productos y baselines](../references/commercial-products-and-baselines.md) | comparación de mercado |
| [Notas de compra en China](../references/chinese-market-procurement-notes.md) | términos de búsqueda y compras |
| [Handoff IDEAS](../references/ideas-codex-handoff.md) | prompt para publicar en IDEAS |
| [Skill publish-repo](../skills/publish-repo/SKILL.md) | flujo GitHub para Codex / AgInTi |

## Apoyo

Puedes apoyar estas notas abiertas en [lazying.art](https://lazying.art) o [GitHub Sponsors](https://github.com/sponsors/lachlanchen).
