\version "2.24.4"

\include "global.ily"

global = {
  \key c \major

  \numericTimeSignature
  \time 4/4
  % \tempo 4=99
}

altoSax = \relative c'' {
  \global
  \transposition es

  a8 d16 c16 r16 a8 aes16 r16 g8. f8 g8 |
  r4 r8 g16 f16 g16 a16 f8 d8 r8 |
  r2 ees'16 d8 d16 r16 c8. |

  a4 g4 f4 e8 e'8 |
  g8 g8 e8 e8 c16 c8 a16~ a4 |
  r2 b'16 gis16 e16 b16 gis16 e16 b8 |
  c1

  \bar "|."
}

\score {
  <<
    \chords {
      \set additionalPitchPrefix = #"add"

      d1:m9 g1:13 c1:maj9
      a2:7.9+ a2:7.9- d1:m9 g1:13 c:maj7
    }
    \new Staff \with {
      instrumentName = "Alto Sax"
    } \altoSax
  >>
  \layout { }
}
