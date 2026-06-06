# Repository Instructions

- Keep changes scoped to the user's requested task.
- Preserve user-authored changes; do not revert unrelated work without explicit permission.
- Run relevant checks before handing work back when the project has test or build commands.
- Always commit completed changes before the final response unless the user explicitly asks not to commit.
- Update this file when the project stack, build commands, or test commands become known.

## Project Stack

- Research/documentation repository for the GaugeHand robotic hand concept.
- Primary formats: Markdown, LaTeX/BibTeX, SVG assets, and portable Codex/AgInTi skill files.
- No application runtime or package dependency stack is currently required.

## Useful Commands

- Build the LaTeX paper manually when needed:
  `cd publications && pdflatex -interaction=nonstopmode -halt-on-error gaugehand_contour_field_feasibility.tex && bibtex gaugehand_contour_field_feasibility && pdflatex -interaction=nonstopmode -halt-on-error gaugehand_contour_field_feasibility.tex && pdflatex -interaction=nonstopmode -halt-on-error gaugehand_contour_field_feasibility.tex`
- Check the publish skill script:
  `bash -n skills/publish-repo/scripts/publish_repo.sh`
- Publish to GitHub after committing:
  `skills/publish-repo/scripts/publish_repo.sh --owner lachlanchen --repo GaugeHand --visibility public --homepage https://lazying.art --description "GaugeHand: a lockable contour-field robotic hand concept for dense-contact grasping" --topics "robotics,robotic-hand,contour-gauge,pin-array,dense-contact,tactile-sensing,soft-robotics,gripper,manipulation,hardware-research,lazying-art"`
