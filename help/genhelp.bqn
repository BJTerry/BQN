#!/usr/bin/env bqn

files ← "README.md"⊸≢¨⊸/ (⍋(¬∊⟜"_.")⊸/¨)⊸⊏ ".md"⊸(-∘≠⊸↑≡⊣)¨⊸/ •file.List ""
gl ← "+-×÷⋆√⌊⌈∧∨¬|≤<>≥=≠≡≢⊣⊢⥊∾≍⋈↑↓↕«»⌽⍉/⍋⍒⊏⊑⊐⊒∊⍷⊔!˙˜∘○⊸⟜⌾⊘◶⎊⎉˘⚇¨⌜⍟⁼´˝`←⇐↩⋄,.(){};:?⟨⟩‿·•𝕨𝕎𝕩𝕏𝕗𝔽𝕘𝔾𝕤𝕊𝕣¯π∞@#"

rows ← (⍋gl⊸⊐)⊸⊏˝⍉> {
    data ← •FLines 𝕩
    names ← (⊣∾", "∾⊢)´{(¬·∧`' '⊸=)⊸/⌾⌽(»·∧`⌾⌽':'⊸≠)⊸/𝕩}¨("## "≡3⊸↑)¨⊸/data
    t‿d ←  ∾/¨(⊏data)=¨"()"
    sym ← (+`·»⊸-˝(¬»∧«)∘=⟜'`'∧⎉1"()"=⌜⊢)⊸/ 2⊑data
    g ← 1⊑sym
    sym (1+'|'⊸=)⊸(/+(-´"\|")×{«⊒/𝕨})↩
    sym "`,` or `⋄`"⍟("`,``⋄`"⊸≡)↩
    ⟨g, ∾"| "‿sym‿" | ["‿names‿"]("‿𝕩‿") |"⟩
}¨ files

head ← ⟨
"*View this file with results and syntax highlighting [here](https://mlochbaum.github.io/BQN/help/index.html).*"
⟨⟩
"# REPL Help"
⟨⟩
"| Symbol | Link |"
"|--------|------|"
⟩
"README.md" •FLines head ∾ rows
