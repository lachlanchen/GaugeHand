<p align="center">
  <a href="https://lazying.art"><img src="../assets/banner.svg" alt="GaugeHand banner" width="100%"></a>
</p>

<p align="center">
  <a href="../README.md">English</a> · <a href="README.zh-Hans.md">简体中文</a> ·
  <a href="README.zh-Hant.md">繁體中文</a> · <a href="README.ja.md">日本語</a> ·
  <a href="README.ko.md">한국어</a> · <a href="README.es.md">Español</a> ·
  <a href="README.fr.md">Français</a> · <a href="README.de.md">Deutsch</a> ·
  <b>Português</b> · <a href="README.ru.md">Русский</a> ·
  <a href="README.ar.md">العربية</a>
</p>

# GaugeHand

**GaugeHand é um conceito de mão robótica de campo de contorno de [Lachlan Chen](https://github.com/lachlanchen), publicado a partir da linha de pesquisa de [lazying.art](https://lazying.art).**

A ideia não é copiar a mão humana junta por junta. É construir um campo denso de contato com muitos elementos simples, como um medidor de contorno 3D ou uma tela de pinos. O objeto molda a garra, e uma camada de travamento transforma a forma em um suporte temporário.

## Tese

- Contato denso pode apoiar objetos desconhecidos melhor do que poucos dedos.
- Captura passiva de forma precisa de travamento para virar uma preensão.
- O deslocamento dos pinos pode virar um mapa tátil de profundidade.
- Manipulação real exige uma futura camada de controle lateral ou de cisalhamento.

## Primeiro MVP

Comece por uma garra de duas faces com matrizes de pinos traváveis:

1. Dois pads de pinos ficam frente a frente.
2. Cada pino desliza passivamente e retorna por mola.
3. Pontas de silicone macio ou pele substituível melhoram o contato.
4. Uma placa de travamento compartilhada fixa o contorno.
5. Um atuador linear ou garra paralela fornece o fechamento.

## Recursos

| Arquivo | Conteúdo |
| --- | --- |
| [Relatório profundo](../references/contour-field-robotic-hand-report.md) | viabilidade, arquitetura, riscos e roteiro |
| [Artigo LaTeX](../publications/gaugehand_contour_field_feasibility.tex) | rascunho técnico |
| [Produtos e baselines](../references/commercial-products-and-baselines.md) | comparação de mercado |
| [Notas de compra chinesas](../references/chinese-market-procurement-notes.md) | termos de busca e compras |
| [Handoff IDEAS](../references/ideas-codex-handoff.md) | prompt para publicar no IDEAS |
| [Skill publish-repo](../skills/publish-repo/SKILL.md) | publicação GitHub para Codex / AgInTi |

## Apoio

Você pode apoiar notas abertas como esta em [lazying.art](https://lazying.art) ou [GitHub Sponsors](https://github.com/sponsors/lachlanchen).
