Lilypond cheat sheet
====================

### Basic notation
* Note notation: `[note][duration]`
    * Note can be `a` to `g`, or `r` for rest.
        * `s` suffix for sharp, `f` for flat.
        * `'` suffix for an octave up, `,` for an octave down.
    * Duration can be 1, 2, 4, 8, etc.
        * `.` suffix works.
        * When duration is not specified, the last one is used.

* `~` for a tie, `(` opens a slur, `)` closes a slur.

* Chords are enclosed in `<  >`.

* Add a `|` at the end of a bar for validation.

* Lyrics notation: separate syllables with ` -- ` (including spaces).

* Chord notation: `[note][duration]:[modifier]/[bass]`, e.g. `fs8:maj7/as`. Modifiers:
    * `m`
    * `7` 
    * `maj7`
    * `m7`
    * `aug`
    * `dim`
    * `m7.5-`
    * `m7+` (minor major seventh)
    * More exotic ones: `7sus4`, `11`, `13.11`, `13.9-`, `6`, `7.5-`, `7.9`, `7.9-`, `7.9+`, `9`, `maj9`, `m6`, `m7+.5-`, `m9`, `m13`


### Tips and tricks

* Triplets: `\tuplet 3/2 {  }`

* Second voice: `<< {  } \new Voice {\voiceTwo  } >>`

* Pick-up bar: `\partial 4` in the `global` section

* Repeat: `\repeat volta 2 { }`
    * With alternative endings: `\repeat volta 2 { } \alternative { {  } {  } }`

* Transposition: `\transpose c f` in the `\score` section

* Grace notes: `\appoggiatura {  }` for a non-slashed stem, `\acciaccatura {  }` for a slashed stem. [More options](https://lilypond.org/doc/v2.20/Documentation/notation/special-rhythmic-concerns#grace-notes)

* Staccato: `-.`

* Things you can use inline:
    * `\tempo ""`
    * `\time 3/4`
    * `\key f \minor`
    * `\fermata`
    * `\segno`
    * `\coda`
    * `\arpeggio` (after the chord)
    * `\stemUp`/`\stemDown` (before the notes)

* Bars:
    * `\bar "||"`
    * `\bar "|."`
    * `\bar ":|."`
    * [All the rest](https://lilypond.org/doc/v2.20/Documentation/notation/bars)

* Time signature as `4/4` instead of `C` symbol: `\numericTimeSignature` in the `global` section
