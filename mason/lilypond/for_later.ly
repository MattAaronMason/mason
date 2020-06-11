\version "2.19.84"
\language "english"

\layout {
  \context {
    \Score
    \override SpacingSpanner.strict-note-spacing = ##t
    \override SpacingSpanner.uniform-stretching = ##t
    proportionalNotationDuration = #(ly:make-moment 1 10)
  }
}

\context Score = "full score" {
  \context Staff = "Staff 1" <<
    \time 4/4
    \clef bass
      \context Voice = "Voice 1" {
        \override Voice.Stem.direction = #UP
        <g d'>1~
        <g d'>2
        <c' e'>
      }
      \context Voice = "Voice 2" {
        \override Voice.Stem.direction = #DOWN
        r2
        r4
        <b,,, b,,>4 ~
        <b,,, b,,>2
        <
          c
          e
        >2
      }
  >>
}
