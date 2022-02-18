\version "2.22.0"
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
  \set Score.connectArpeggios = ##t
}

verseA = \lyricmode {
  %Lyrics go here
}

singer = \relative c' {
  \global
  %Melody goes here
}
\addlyrics \verseA

chordsPart = \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""
  \set majorSevenSymbol = \markup { "maj7" }
  %Chords go here
}

voicePart = \new Staff \with {
  midiInstrument = "acoustic grand"
} \singer

\score {
  <<
    \chordsPart
    \voicePart
  >>
  \layout { }
}
\score {
  <<
    %\unfoldRepeats \chordsPart
    \unfoldRepeats \voicePart
  >>
  \midi { }
}
