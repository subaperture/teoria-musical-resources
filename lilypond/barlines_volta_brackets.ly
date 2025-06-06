\version "2.24.4"

\include "global.ily"

global = {
  \key c \major
  \time 3/4
}

violin = \relative c'' {
  \global

  c4 c c
  \repeat volta 2 { g4 g g }
  \alternative {
    {
      e4 e e
      d4 d d
    }
    { c4 c c }
  }
  \bar "|."
}

\score {
  \new Staff { \violin }
  \layout { }
}