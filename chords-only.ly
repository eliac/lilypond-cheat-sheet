\version "2.22.0"
\language "english"

\header {
  title = ""
  subtitle = ""
  composer = ""
  poet = ""
  tagline = ""
  %copyright = ""
}

\paper {
  system-system-spacing = #'((basic-distance . 4)
       (minimum-distance . 4)
       (padding . 1)
       (stretchability . 10))
  indent = 0
  ragged-right = ##t
}

\layout {
  \context {
    \Score
    \remove "Bar_number_engraver"
  }
}

{
  \new ChordNames \with {
    \override BarLine.bar-extent = #'(-2 . 2)
    \consists "Bar_engraver"
  }
  %\tempo 4=72
  %\transpose f a
  \chordmode {
    \set noChordSymbol = ""
    \set majorSevenSymbol = \markup { "maj7" }
    \mark "           0:00 Intro"
    f1 | e:m | d2:m e:m | a1:m | \break
  }
}
