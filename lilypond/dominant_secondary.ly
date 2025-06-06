\version "2.24.4"

\include "roman_numeral_analysis_tool.ily"
\include "global.ily"

global = {
  \key c \major
  \time 4/4
}

chordSequence = \chordmode {
  a,,1:7
  b,,1:7
  c,1:7
  d,1:7
  e,1:7
}

chordNames = \chordmode {
  \global
  r1 \chordSequence r1
}

right = \relative c' {
  \global
  c d e f g a b

  \bar "|."
}

left = \relative c {
  \global
  r1 \chordSequence r1

  \bar "|."
}

verseOne = \lyricmode {
  \markup \scaleDegree { 1 }
  \markup \scaleDegree { 2 }
  \markup \scaleDegree { 3 }
  \markup \scaleDegree { 4 }
  \markup \scaleDegree { 5 }
  \markup \scaleDegree { 6 }
  \markup \scaleDegree { 7 }
}

verseTwo = \lyricmode {
  \markup \rN { V / ii }
  \markup \rN { V / iii }
  \markup \rN { V / IV }
  \markup \rN { V / V }
  \markup \rN { V / vi }
}

chordsPart = \new ChordNames \chordNames

pianoPart = \new PianoStaff
<<
  \new Staff = "right" \right
  \addlyrics { \verseOne }
  \new Staff = "left" { \clef bass \left }
  \addlyrics { \verseTwo }
>>

\score {
  <<
    \chordsPart
    \pianoPart
  >>
  \layout { }
}
