<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <a href="README.zh-Hans.md">简体中文</a> ·
  <a href="README.zh-Hant.md">繁體中文</a> · <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> · <a href="README.es.md">Español</a> ·
  <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> ·
  <a href="README.pt.md">Português</a> · <b>Русский</b> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand — концепция роботизированной руки с контурным полем контакта от [Lachlan Chen](https://github.com/lachlanchen), опубликованная в исследовательском потоке [lazying.art](https://lazying.art).**

Идея состоит не в копировании человеческой кисти сустав за суставом. Вместо этого используется плотное поле из множества простых контактных элементов, похожее на 3D-контурный шаблон или pin screen. Объект сам формирует поверхность захвата, а слой блокировки превращает эту форму во временную оснастку.

## Тезис

- Плотный контакт лучше поддерживает неизвестные объекты, чем несколько редких пальцев.
- Пассивное копирование формы должно сочетаться с блокировкой.
- Смещения штифтов могут стать тактильной картой глубины.
- Настоящая ловкость потребует управления сдвигом или боковым контактом.

## Первый MVP

Сначала стоит построить двухсторонний блокируемый pin-array gripper:

1. Две небольшие матрицы штифтов расположены напротив друг друга.
2. Каждый штифт пассивно скользит и возвращается пружиной.
3. Мягкие силиконовые наконечники улучшают контакт.
4. Общая блокирующая пластина фиксирует контур.
5. Линейный привод или параллельный захват обеспечивает закрытие.

## Ресурсы

| Файл | Содержание |
| --- | --- |
| [Deep report](../references/contour-field-robotic-hand-report.md) | реализуемость, архитектура, риски, roadmap |
| [LaTeX paper](../publications/gaugehand_contour_field_feasibility.tex) | технический черновик |
| [Commercial baselines](../references/commercial-products-and-baselines.md) | сравнение продуктов |
| [Chinese procurement notes](../references/chinese-market-procurement-notes.md) | поисковые термины и закупки |
| [IDEAS handoff](../references/ideas-codex-handoff.md) | prompt для публикации в IDEAS |
| [publish-repo skill](../skills/publish-repo/SKILL.md) | GitHub-публикация для Codex / AgInTi |

## Поддержка

Поддержать открытые исследовательские заметки можно через [lazying.art](https://lazying.art) или [GitHub Sponsors](https://github.com/sponsors/lachlanchen).
