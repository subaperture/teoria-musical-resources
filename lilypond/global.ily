\version "2.18.2"

\header {
  tagline = ##f
}

\paper {
  top-margin = 1\in
  bottom-margin= 1\in
  left-margin = 1\in
  right-margin = 1\in
}

\layout {
  indent = 0\in
  ragged-last = ##f

  \override Score.LyricText.font-name = #"Roboto Light"
  \override Score.LyricText.font-size = #0

  \override Score.StanzaNumber.font-name = #"Roboto Slab Light"
  \override Score.StanzaNumber.font-size = #0

  \override Score.InstrumentName.font-name = #"Roboto Slab Light"
  \override Score.InstrumentName.font-size = #-1

  \override TextScript.font-name = #"Roboto Slab Light"
  \override TextScript.font-size = #0
}
