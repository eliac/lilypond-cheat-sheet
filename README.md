Lilypond cheat sheet
====================

### File template
```
\version "2.20.0"
\language "english"

\header {
  title = ""
  %subtitle = ""
  composer = ""
  poet = ""
  tagline = ""
  %copyright = ""
}

\paper {
  #(set-paper-size "a4")
}

global = {
  \key c \major
  \time 4/4
  \tempo "Slow" 4=52
}

verseA = \lyricmode {
  %Lyrics go here
}

singer = \relative c' {
  \global
  %Melody goes here
}
\addlyrics \verseA

right = \relative c' {
  \global
  %Right hand piano goes here
}

left = \relative c' {
  \global
  \clef "bass"
  %Left hand piano goes here
}

chordsPart = \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""
  \set majorSevenSymbol = \markup { "maj7" }
  %Chords go here
}

voicePart = \new Staff \with {
  midiInstrument = "acoustic grand"
} \singer

pianoPart = \new PianoStaff \with {
  midiInstrument = "acoustic grand"
} <<
  \new Staff \right
  \new Staff \left
>>

\score {
  <<
    \chordsPart
    \voicePart
    \pianoPart
  >>
  \layout { }
}
\score {
  <<
    \unfoldRepeats \chordsPart
    \unfoldRepeats \voicePart
    \unfoldRepeats \pianoPart
  >>
  \midi { }
}
```


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
    * More exotic ones: `11`, `13.11`, `13.9-`, `6`, `7.5-`, `7.9`, `7.9-`, `9`, `m6`, `m7+.5-`, `m9`


### Tips and tricks

* Triplets: `\tuplet 3/2 {  }`

* Second voice: `<< {  } \new Voice {\voiceTwo  } >>`

* Pick-up bar: `\partial 4` in the `global` section

* Repeat: `\repeat volta 2 { }`
    * With alternative endings: `\repeat volta 2 { } \alternative { {  } {  } }`

* Transposition: `\transpose c f` in the `\score` section

* Things you can use inline:
    * `\tempo ""`
    * `\time 3/4`
    * `\key f \minor`
    * `\fermata`
    * `\segno`
    * `\coda`
    * `\arpeggio` (after the chord)
    * `\stemUp`/`\stemDown`

* Bars:
    * `\bar "||"`
    * `\bar "|."`
    * `\bar ":|."`
    * [All the rest](https://lilypond.org/doc/v2.19/Documentation/notation/bars)

* Time signature as `4/4` instead of `C`: `\numericTimeSignature` in the `global` section