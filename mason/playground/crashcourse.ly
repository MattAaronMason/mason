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
            \time 5/16
            s1 * 5/16
            \time 3/4
            s1 * 3/4
            s1 * 3/4
            \time 7/16
            s1 * 7/16
            s1 * 7/16
            \time 3/4
            s1 * 3/4
            s1 * 3/4
            \time 5/16
            s1 * 5/16
            \time 4/4
            s1 * 1
            s1 * 1
            s1 * 1
            \time 3/8
            s1 * 3/8
            \time 7/8
            s1 * 7/8
            \time 3/4
            s1 * 3/4
        }
        \context Staff = "staffname"
        {
            \clef "bass"
            c16
            dqf8.
            r4
            d8.
            d16
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/12 {
                cs8
                dqf4.
                r2
                d4.
                eqf8
            }
            f32
            fqs16.
            r8
            fs16.
            f32
            \tweak text #tuplet-number::calc-fraction-text
            \times 1/1 {
                f2
                fqs4.
                \grace {
                    b,8
                }
                cqs8
            }
            \times 8/9 {
                cs4.
                cs8
                cqs2
                r8
            }
            \times 2/3 {
                cqs8
                cs4.
                r2
                d4.
                e8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 1/1 {
                eqs4
                ~
                eqs16
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 3/4 {
                f2
                e4.
                \grace {
                    e8
                }
                eqs8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 3/4 {
                fs2
                gqs4.
                \grace {
                    af8
                }
                aqf8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/8 {
                gqs4
                gqs8.
                \grace {
                    af8
                }
                a16
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 1/1 {
                b4..
                ~
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/9 {
                b4.
                bqs8.
                ~
            }
            \times 2/3 {
                bqs8.
                c'8
                b2
                r8
                b8.
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 5/8 {
                bqs4
                cqs'8.
                \grace {
                    dqs'8
                }
                ef'16
            }
            eqf'4
            ~
            eqf'16
            ~
            \times 8/9 {
                eqf'2
                ~
                eqf'8.
                ef'4.
                dqs'16
                ~
            }
            \times 8/11 {
                dqs'16
                ef'2
                r8
                e'2
                ~
                e'8
                fs'16
                ~
            }
            \times 8/13 {
                fs'1
                ~
                fs'16
                gqf'4.
                g'8
                fs'16
                ~
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 3/4 {
                fs'4..
                r16
            }
            fs'16
            gqf'8.
            r4
            g'8.
            a'16
        }
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()