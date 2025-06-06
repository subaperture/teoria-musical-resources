\version "2.24.4"

\include "global.ily"

global = {
  \key c \major
  \time 4/4
}

drumOne = \drummode {
  \global

  \repeat volta 2 {
    cymr16^"1"
    cymr16
    cymr16^"e"
    cymr16

    cymr16^"2"
    cymr16
    cymr16^"e"
    cymr16

    cymr16^"3"
    cymr16
    cymr16^"e"
    cymr16

    cymr16^"4"
    cymr16
    cymr16^"e"
    cymr16
  }
}

drumTwo = \drummode {
  \global
  bassdrum8. bassdrum16 snare4 bassdrum8. bassdrum16 <bassdrum snare>4
}

\score {
  \new DrumStaff
  <<
    \new DrumVoice { \voiceOne \drumOne }
    \new DrumVoice { \voiceTwo \drumTwo }
  >>
  \layout { }
}
