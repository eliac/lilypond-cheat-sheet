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
  \numericTimeSignature
  \tempo "Moderate" 4=72
}

guitar = \relative c {
  \global
  %Music goes here 
}

lyr = \lyricmode {
  %Lyrics go here
}

chordsPart = \chords {
  \set chordChanges = ##t
  \set noChordSymbol = ""
  \set majorSevenSymbol = \markup { "maj7" }
  %Chords go here
}

guitarPart = \new Staff \with {
  midiInstrument = "electric guitar (jazz)"
  \clef "G_8"
} \guitar \addlyrics \lyr

tabPart = \new TabStaff { \guitar }

\score {
  <<
    \chordsPart
    \guitarPart
    \tabPart
  >>
  \layout { \omit Voice.StringNumber }
}
\score {
  \unfoldRepeats \guitarPart
  \midi { }
}
