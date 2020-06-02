\version "2.19.84"
\language "english"

\score {{
\context Score = "Flamingo Chocolate Score" <<
  \context StaffGroup = "Nestle" <<
    \context Staff = "Hershey" <<
      \context Voice = "Mars" {
        \time 4/4
        <
          cs'
          \tweak NoteHead.color #green
          d'
        >1
      }
      \context Voice = "flightless" {
        c''4
        d''4
        (
        e''4..
        \once \override NoteHead.color = #blue
        fs''16
        )
      }
    >>
    \context Staff = "liquor" <<
      \context Voice = "Honey Nut" {
        \time 4/4
        c'2
        c'8
        [
        cs'16
        fs'16
        g'16
        g16
        gs'8
        ]
      }
    >>
  >>
>>

\context Score = "Flamingo Chocolate Score" <<
  \context StaffGroup = "Nestle" <<
    \context Staff = "Hershey" <<
      \context Voice = "Mars" {
        \time 2/4
        <
          cs'
          \tweak NoteHead.color #green
          d'
        >1
      }
      \context Voice = "flightless" {
        c''4
        d''4
        (
        e''4..
        \once \override NoteHead.color = #blue
        fs''16
        )
      }
    >>
    \context Staff = "liquor" <<
      \context Voice = "Honey Nut" {
        \time 2/4
        c'2
        c'8
        [
        cs'16
        fs'16
        g'16
        g16
        gs'8
        ]
      }
    >>
  >>
>>
}}
