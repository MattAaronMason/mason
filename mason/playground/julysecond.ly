\version "2.19.84"  %! abjad.LilyPondFile._get_format_pieces()
\language "english" %! abjad.LilyPondFile._get_format_pieces()

\include "\Users\Matthew\mason\mason\lilypond\stylesheet.ily" %! abjad.LilyPondFile._get_formatted_includes()

\header { %! abjad.LilyPondFile._get_formatted_blocks()
    tagline = ##f
} %! abjad.LilyPondFile._get_formatted_blocks()

\layout {}

\paper {}

\score { %! abjad.LilyPondFile._get_formatted_blocks()
    \new Score
    <<
        \context TimeSignatureContext = "globalcontext"
        {
            \time 3/4
            s1 * 3/4
            \time 7/8
            s1 * 7/8
            \time 3/8
            s1 * 3/8
            \time 4/4
            s1 * 1
        }
        \context Staff = "staffname"
        {
            \times 2/3 {
                c'8
                [
                c'8
                c'8
                c'8
                c'8
                c'8
                c'8
                c'8
                c'8
                ]
            }
            \times 8/9 {
                c'16..
                [
                c'16..
                c'16..
                c'16..
                c'16..
                c'16..
                c'16..
                c'16..
                c'16..
                ]
            }
            \times 2/3 {
                c'16
                [
                c'16
                c'16
                c'16
                c'16
                c'16
                c'16
                c'16
                c'16
                ]
            }
            \times 8/9 {
                c'8
                [
                c'8
                c'8
                c'8
                c'8
                c'8
                c'8
                c'8
                c'8
                ]
            }
        }
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()