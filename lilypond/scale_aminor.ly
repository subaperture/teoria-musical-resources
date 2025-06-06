\version "2.24.4"

\include "global.ily"

global = {
  \omit Score.TimeSignature

  \set melismaBusyProperties = #'()
  \slurDown
  \slurDashed

  \key c \major
  \time 32/4
}

escala = \relative c' {
  \global
  a1 b (c) d e (f) g a

  \bar "|."
}

verse = \lyricmode {
  \set stanza = "Lá menor:"
  A B C D E F G A
}

\score {
  \new Staff { \escala }
  \addlyrics { \verse }
  \layout { }
}
