\version "2.19.84"
\language "english"

\new Staff {
  \time 4/2
  \clef bass
  << { <g d'>1~ q2 <c' e'> }
  \\
    {
      r2 r4
      \set Staff.ottavation = #"Drop Lower"
      \once \override Staff.OttavaBracket.direction = #DOWN
      % Bracket overrides
      \set Voice.middleCPosition = #(+ 6 7)
      <b,,, b,,>4 ~ |
      q2
      \unset Staff.ottavation
      \unset Voice.middleCPosition
      <c e>2
    }
  >>
}
