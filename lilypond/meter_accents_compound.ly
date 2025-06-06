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
          Compasso composto:
        }
      }
    } {
      \new Voice = "myRhythm" {
        \numericTimeSignature

        \time 12/8
        \repeat unfold 12 { c8 }

        \time 9/8
        r8 c8 c8
        c8 r8 c8
        c8 c8 r8

        \time 6/8
        c4 c4 c4
      }

      \bar "||"
    }

    \new RhythmicStaff \with {  instrumentName = #"Pulsos:" } {
      \new Voice = "myPulses" {
        \numericTimeSignature

        \time 12/8
        c4. c4. c4. c4.

        \time 9/8
        c4. c4. c4.

        \time 6/8
        c4. c4.
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

        \time 12/8
        \repeat unfold 12 { c8 }

        \time 9/8
        \repeat unfold 9 { c8 }

        \time 6/8
        \repeat unfold 6 { c8 }
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