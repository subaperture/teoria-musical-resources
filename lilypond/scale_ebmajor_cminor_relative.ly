\version "2.24.4"

\include "global.ily"

global = {
  \omit Score.SystemStartBar
  \omit Score.TimeSignature

  \set melismaBusyProperties = #'()
  \slurDown
  \slurDashed

  \key es \major
  \time 32/4
}

sopranoVoiceI = \relative c' {
  \global
  ees?1 f g (aes?) bes? c d (ees?)

  \bar "|."
}

verseSopranoVoiceI = \lyricmode {
  \set stanza =  \markup { E \smaller { \raise #0.3 \flat } Maior: }
  \markup { E \smaller { \raise #0.3 \flat } }
  \markup { F }
  \markup { G }
  \markup { A \smaller { \raise #0.3 \flat } }
  \markup { B \smaller { \raise #0.3 \flat } }
  \markup { C }
  \markup { D }
  \markup { E \smaller { \raise #0.3 \flat } }
}

sopranoVoiceII = \relative c' {
  \global
  c1 d (ees?) f g (aes?) bes? c
}

verseSopranoVoiceII = \lyricmode {
  \set stanza =  "C menor:"
  \markup { C }
  \markup { D }
  \markup { E \smaller { \raise #0.3 \flat } }
  \markup { F }
  \markup { G }
  \markup { A \smaller { \raise #0.3 \flat } }
  \markup { B \smaller { \raise #0.3 \flat } }
  \markup { C }
}

sopranoVoiceIPart = { \sopranoVoiceI }
\addlyrics { \verseSopranoVoiceI }

sopranoVoiceIIPart = { \sopranoVoiceII }
\addlyrics { \verseSopranoVoiceII }

\score {
  <<
    \sopranoVoiceIPart
    \sopranoVoiceIIPart
  >>
  \layout { }
}
