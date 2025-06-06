\version "2.24.4"

\include "global.ily"

global = {
  \key c \major
  \time 4/4
}

violinI = \relative c'' {
  \global

  a2 b
  c1

  \bar "|."
}

violinII = \relative c' {
  \global

  f2 g
  g1

  \bar "|."
}

viola = \relative c' {
  \global

  a2 g
  e'1

  \bar "|."
}

cello = \relative c {
  \global

  d2 g
  c,1

  \bar "|."
}

violinIPart = \new Staff \with {
  instrumentName = "Violino 1"
} \violinI

violinIIPart = \new Staff \with {
  instrumentName = "Violino 2"
} \violinII

violaPart = \new Staff \with {
  instrumentName = "Viola"
} { \clef alto \viola }

celloPart = \new Staff \with {
  instrumentName = "Violoncelo"
} { \clef bass \cello }

\score {
  \new StaffGroup <<
    \violinIPart
    \violinIIPart
    \violaPart
    \celloPart
  >>
  \layout {
    ragged-last = ##t
  }
}
