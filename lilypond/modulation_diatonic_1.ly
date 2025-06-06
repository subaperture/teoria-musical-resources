\version "2.24.4"

\include "roman_numeral_analysis_tool.ily"
\include "global.ily"

global = {
  \key c \major
  \time 4/4
}

soprano = \relative c'' {
  \global
  d1 e e a,

  \bar "|."
}

alto = \relative c'' {
  \global
  g g a fis

  \bar "|."
}

tenor = \relative c' {
  \global
  b c e d

  \bar "|."
}

bass = \relative c' {
  \global
  g c, cis d

  \bar "|."
}

verseOne = \lyricmode {
  \set stanza = "G:"
  \markup \rN { I }
  \markup \rN { IV }
  \markup \rN { ii 6 }
}

verseTwo = \lyricmode {
  \set stanza = "D:"
  \repeat unfold 2 { \skip 1 }
  \markup \rN { V 6 }
  \markup \rN { I }
}

\score {
  \new PianoStaff <<
    \new Staff
    <<
      \new Voice = "soprano" { \voiceOne \soprano }
      \new Voice = "alto" { \voiceTwo \alto }
    >>

    \new Staff
    <<
      \clef bass
      \new Voice = "tenor" { \voiceOne \tenor }
      \new Voice = "bass" { \voiceTwo \bass }
      \addlyrics { \verseOne }
      \addlyrics { \verseTwo }
    >>
  >>
  \layout { }
}
