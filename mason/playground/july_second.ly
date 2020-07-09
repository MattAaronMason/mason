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
            s1 * 1
            s1 * 1
        }
        \context Staff = "staffname"
        {
            \times 4/5 {
                \clef "bass"
                c16.
                \grace {
                    cs8
                }
                dqf8.
                r4.
                \grace {
                    cs8
                    c8
                }
                c16.
                cs16.
                dqs16.
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/8 {
                ef4.
                ef8
                d2
            }
            \times 4/5 {
                d32.
                \grace {
                    dqs8
                }
                b,16.
                r8.
                \grace {
                    c8
                    c8
                }
                b,32.
                b,32.
                b,32.
            }
            \times 8/11 {
                r8
                cqs2
                ~
                cqs8
                dqf2
                ~
                dqf8
                ~
            }
            \times 8/13 {
                dqf2
                dqf4.
                cs8
                cqs2
                r8
            }
            \times 8/9 {
                cqs2
                ~
                cqs8
                dqf2
            }
        }
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()