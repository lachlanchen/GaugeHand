# Handoff Note for Publishing GaugeHand in `../IDEAS`

Date: 2026-06-06

Use this note as the prompt for a Codex session opened in:

```text
/home/lachlan/ProjectsLFS/IDEAS
```

The source project is:

```text
/home/lachlan/ProjectsLFS/GaugeHand
```

## Copy-Paste Prompt for the IDEAS Codex Session

You are working in `/home/lachlan/ProjectsLFS/IDEAS`. Publish the GaugeHand idea into this IDEAS repository as both a Markdown idea note and a LaTeX publication.

First read and obey `AGENTS.md` in the IDEAS repo. The relevant repository conventions are:

- Put concept notes in `ideas/` using kebab-case filenames.
- Put mature LaTeX publications in `publications/<slug>/`.
- Use slug-matching filenames: `publications/<slug>/<slug>.tex` and `publications/<slug>/<slug>.pdf`.
- Use `latexmk -pdf` for English/ASCII papers; use `latexmk -xelatex` only if the final paper needs substantial CJK text.
- Run `node scripts/generate_site.mjs` after adding the idea/publication so `docs/assets/ideas.json`, `docs/assets/publications.json`, and generated static pages stay in sync.
- Commit and push after the change, but do not revert unrelated local changes. At handoff time there may be an unrelated untracked `.auto-readme-work/` directory in IDEAS; ignore it unless the user explicitly asks about it.

Read the GaugeHand source material from `/home/lachlan/ProjectsLFS/GaugeHand` in this order:

1. `/home/lachlan/ProjectsLFS/GaugeHand/references/contour-field-robotic-hand-report.md`
2. `/home/lachlan/ProjectsLFS/GaugeHand/publications/gaugehand_contour_field_feasibility.tex`
3. `/home/lachlan/ProjectsLFS/GaugeHand/publications/gaugehand_references.bib`
4. `/home/lachlan/ProjectsLFS/GaugeHand/references/commercial-products-and-baselines.md`
5. `/home/lachlan/ProjectsLFS/GaugeHand/references/chinese-market-procurement-notes.md`

Create a new IDEAS slug:

```text
gaugehand-contour-field-robotic-hand
```

Create these target files:

```text
ideas/gaugehand-contour-field-robotic-hand.md
publications/gaugehand-contour-field-robotic-hand/gaugehand-contour-field-robotic-hand.tex
publications/gaugehand-contour-field-robotic-hand/gaugehand-contour-field-robotic-hand.pdf
```

If BibTeX is easier than inline bibliography, also create:

```text
publications/gaugehand-contour-field-robotic-hand/gaugehand-contour-field-robotic-hand.bib
```

The publication should be written as an original IDEAS paper, not a blind filename-preserving copy of the GaugeHand TeX. Use the GaugeHand report and TeX as source material, but rewrite/adapt it into the IDEAS house structure.

Suggested title:

```text
GaugeHand: A Lockable Contour-Field Robotic Hand for Dense-Contact Grasping
```

Suggested subtitle:

```text
Feasibility, market gap, MVP roadmap, and design tradeoffs for a 3D contour-gauge-inspired manipulator
```

Core thesis:

```text
Instead of building another anthropomorphic dexterous hand with many joints, GaugeHand replaces sparse human-like fingers with a dense, lockable, self-sensing contact field. A pin-array or contour-gauge-like surface passively adapts to unknown object geometry, locks into a temporary custom fixture, and optionally provides a tactile depth map for grasping and manipulation.
```

Position the idea carefully:

- Do not claim that a complete commercial GaugeHand already exists.
- State that existing products cover adjacent pieces: contour gauges, pin screens, soft grippers, underactuated hands, industrial grippers, dexterous hands, and academic pin-array grippers.
- Emphasize that the novelty is the integration of dense pin-array contact, lockable morphology, shape/tactile sensing, robotic closure, and eventually shear-capable manipulation.
- Be clear that passive contour capture alone is not dexterity. The main missing capability is controlled shear/lateral force at the contact field.

Recommended Markdown idea note structure:

```text
# GaugeHand: A Lockable Contour-Field Robotic Hand

## Summary
## Why This Matters
## Core Mechanism
## What Exists Today
## Product Gap
## Proposed MVP
## Technical Risks
## Market and Application Fit
## Roadmap
## References
```

Recommended LaTeX publication structure:

```text
\section{Introduction}
\section{Core Concept}
\section{Relationship to Existing Grippers and Robotic Hands}
\section{Commercial and Market Baselines}
\section{Chinese Market Procurement Notes}
\section{Mechanical Feasibility}
\section{Sensing and Control Architecture}
\section{MVP Prototype}
\section{Evaluation Plan}
\section{Applications and Market Fit}
\section{Risks and Failure Modes}
\section{Roadmap}
\section{Conclusion}
```

The TeX paper should include these concrete design recommendations:

- Start with a two-sided lockable pin-array gripper, not a five-finger hand.
- Use passive sliding pins with spring return and soft silicone tips.
- Add a shared lock plate, wedge lock, brake layer, or jamming/stiffening layer before attempting per-pin actuation.
- Add sensing in stages: displacement first, then normal force, then shear/slip.
- Use simple macro closure from a parallel gripper, linear slide, or screw actuator.
- Compare against a parallel gripper, a soft gripper, a three-finger gripper, and optionally a low-cost dexterous hand.
- Treat shear-capable pins or a movable skin as the second-generation dexterity upgrade.

The market/baseline section should merge these categories from the GaugeHand notes:

- Cheap contour gauges / profile gauges / locking contour gauges.
- Pin-art / pin-screen / pin-wall mechanisms.
- Festo DHEF, OnRobot Soft Gripper, Schmalz mGrip, SRT SFG, SoftGripper kits.
- qb SoftHand as the best underactuated-hand comparison.
- Robotiq adaptive grippers and DH Robotics / Chengzhou electric grippers as industrial baselines.
- Allegro Hand, Shadow Hand, AgiBot OmniHand, VEICHI YZ-T6, CASIA HAND X, OYMotion ROHAND, Inspire Robots, LinkerBot as dexterous-hand baselines.

The Chinese procurement section should preserve the practical search terms from:

```text
/home/lachlan/ProjectsLFS/GaugeHand/references/chinese-market-procurement-notes.md
```

Important Chinese search terms to keep:

```text
轮廓规
仿形尺
取型器
针雕
针屏
针幕
柔性夹爪
软体夹爪
自适应夹爪
气动柔性夹爪
仿生柔性手爪
灵巧手
机器人灵巧手
电动夹爪
三指夹爪
大寰 电动夹爪
```

Use the GaugeHand BibTeX where possible, but verify the final bibliography compiles. If using inline references instead, keep source links in a `References` section.

Minimum source links to include:

- Meshed pin-array universal gripper: `https://journals.sagepub.com/doi/10.1177/1729881419834781`
- Granular jamming gripper: `https://arxiv.org/abs/1009.4444`
- ArrayBot: `https://arxiv.org/abs/2306.16857`
- Linear Delta Arrays: `https://arxiv.org/abs/2206.04596`
- Festo DHEF: `https://www.festo.com/us/en/a/8092533`
- OnRobot Soft Gripper: `https://onrobot.com/zh_hant/chanpinmen/rouxingjiazhao`
- Schmalz mGrip: `https://www.schmalz.com/en-us/solutions/media-center/mgrip---hygienic-gripping--safe-holding`
- SRT SFG: `https://www.softrobottech.com/web/zh/category/13`
- qb SoftHand: `https://qbrobotics.com/product/qb-softhand-industry/`
- Allegro Hand: `https://www.allegrohand.com/`
- Shadow Dexterous Hand: `https://shadowrobot.com/dexterous-hand-series/`
- AgiBot: `https://www.agibot.com/`
- DH-Robotics: `https://www.dh-robotics.com/`
- OYMotion ROHAND: `https://www.oymotion.com/product61`
- VEICHI YZ-T6: `https://www.veichi.com/product/yz-t6-6dof-tendon-driven-dexterous-hand.html`

Build and validation steps:

```bash
cd /home/lachlan/ProjectsLFS/IDEAS
mkdir -p publications/gaugehand-contour-field-robotic-hand

# After writing the Markdown and TeX:
cd publications/gaugehand-contour-field-robotic-hand
latexmk -pdf -interaction=nonstopmode -halt-on-error gaugehand-contour-field-robotic-hand.tex

cd /home/lachlan/ProjectsLFS/IDEAS
node scripts/generate_site.mjs
git status --short --branch
```

If the TeX contains substantial Chinese text, use this build instead:

```bash
cd /home/lachlan/ProjectsLFS/IDEAS/publications/gaugehand-contour-field-robotic-hand
latexmk -xelatex -interaction=nonstopmode -halt-on-error gaugehand-contour-field-robotic-hand.tex
```

Before finalizing, check:

- The PDF exists and is readable.
- The title, abstract, MVP, roadmap, and references are present.
- The paper does not overclaim novelty.
- The docs site assets were regenerated.
- The IDEAS README/catalog conventions are followed if this repo requires README updates for new publications.
- The final commit includes only GaugeHand publication files and generated docs assets; do not include unrelated `.auto-readme-work/`.

Recommended commit message:

```text
Add GaugeHand contour-field robotic hand idea
```

Recommended final response to the user:

```text
Published GaugeHand into IDEAS as:

- ideas/gaugehand-contour-field-robotic-hand.md
- publications/gaugehand-contour-field-robotic-hand/gaugehand-contour-field-robotic-hand.tex
- publications/gaugehand-contour-field-robotic-hand/gaugehand-contour-field-robotic-hand.pdf

Built the PDF with latexmk, regenerated site assets, committed, and pushed.
```

## Source Summary for the IDEAS Session

GaugeHand is a proposed robotic end-effector architecture inspired by 3D contour gauges, pin screens, and pin-art walls. The aim is not to mimic a human hand joint-for-joint. The aim is to create a dense contact field made from many simple sliding pins or micro-contact elements. When the hand closes on an unknown object, the object itself programs the local contact geometry by pushing pins to different depths. The gripper then locks that morphology and uses the resulting shape as a temporary custom fixture.

The best first prototype is a two-sided lockable pin-array gripper: two small contour-gauge pads facing each other, with passive pins, spring return, soft tips, and shared locking. This is more realistic than a full active pin-field hand and more directly aligned with the idea than buying a conventional dexterous hand.

The central feasibility claim is positive but conditional:

```text
GaugeHand is promising for grasping, shape capture, fragile-object handling, and unknown-object pickup. It will not become a true replacement for dexterous hands unless later versions can also control tangential/shear interaction, not only normal pin displacement.
```

Key risks:

- pin density versus force capacity;
- uniform locking across many pins;
- pin jamming and bending;
- friction and soft-tip material choice;
- contamination and maintenance;
- insufficient shear authority for in-hand manipulation;
- manufacturing complexity if every pin becomes sensed or actuated.

Key opportunity:

```text
No common off-the-shelf product combines dense 3D pin-array contact, lockable shape adaptation, tactile/shape sensing, robotic closure, and a manipulation roadmap. That integration is the publishable GaugeHand idea.
```
