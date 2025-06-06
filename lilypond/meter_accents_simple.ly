\version "2.24.4"

\include "global.ily"

\paper {
  #(include-special-characters)
}

\score {
  <<
    \new RhythmicStaff \with {
      instrumentName = \markup {
        \right-column {
          Compasso simples:
        }
      }
    } {
      \new Voice = "myRhythm" {
        \numericTimeSignature

        \time 4/4
        c2 c4 c8 c8

        \time 3/4
        c4 c8 c8 c16 c16 c16 c16

        \time 2/4
        c4. c8
      }

      \bar "||"
    }

    \new RhythmicStaff \with {  instrumentName = #"Pulsos:" } {
      \new Voice = "myPulses" {
        \numericTimeSignature

        \time 4/4
        \repeat unfold 4 { c4 }

        \time 3/4
        \repeat unfold 3 { c4 }

        \time 2/4
        \repeat unfold 2 { c4 }
      }

      \bar "||"
    }

    \new RhythmicStaff \with {
      instrumentName = \markup {
        \right-column {
          "Divisão do" "pulso:"
        }
      }
    } {
      \new Voice = "myPulsesDivision" {
        \numericTimeSignature

        \time 4/4
        \set Timing.beamExceptions = #'()
        \set Timing.beatStructure = 1,1,1,1
        \repeat unfold 8 { c8 }

        \time 3/4
        \set Timing.beamExceptions = #'()
        \set Timing.beatStructure = 1,1,1
        \repeat unfold 6 { c8 }

        \time 2/4
        \set Timing.beamExceptions = #'()
        \set Timing.beatStructure = 1,1
        \repeat unfold 4 { c8 }
      }

      \bar "||"
    }

    \new Lyrics {
      \lyricsto "myPulses" {
        \set stanza = #"Pulso:"
        "1" "2" "3" "4"
        "1" "2" "3"
        "1" "2"
      }
    }

    \new Lyrics {
      \lyricsto "myPulses" {
        \set stanza = #"Ênfase:"
        Forte Fraco Forte Fraco
        Forte Fraco Fraco
        Forte Fraco
      }
    }

    \new Lyrics {
      \lyricsto "myPulses" {
        \set stanza = #"Símbolo:"

        \markup { "&mdash;" }
        \markup { "&bulletop;" }
        \markup { "&minus;" }
        \markup { "&bulletop;" }

        \markup { "&mdash;" }
        \markup { "&bulletop;" }
        \markup { "&bulletop;" }

        \markup { "&mdash;" }
        \markup { "&bulletop;" }
      }
    }
  >>

  \layout { }
}