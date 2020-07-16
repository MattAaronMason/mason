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
            \time 3/4
            s1 * 3/4
            s1 * 3/4
            \time 7/16
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
            \time 4/4
            s1 * 1
            s1 * 1
            \time 5/16
            s1 * 5/16
            \time 3/4
            s1 * 3/4
            s1 * 3/4
            \time 7/16
            s1 * 7/16
            \time 3/4
            s1 * 3/4
        }
        \context Staff = "staffname"
        {
            \clef "bass"
            af,16
            aqs,8.
            r4
            bf,8.
            bf,16
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/8 {
                a,2
                aqs,4.
                \grace {
                    bf,8
                }
                bqs,8
            }
            cs32
            dqf16.
            r8
            d16.
            cs32
            cs2
            dqf4.
            \grace {
                ef8
            }
            eqs8
            \times 8/9 {
                f4.
                f8
                eqs2
                r8
            }
            \times 2/3 {
                eqs8
                f4.
                r2
                cs4.
                ef8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 1/1 {
                eqf4
                ~
                eqf16
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 3/4 {
                e2
                ef4.
                \grace {
                    ef8
                }
                eqf8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 3/4 {
                f2
                gqf4.
                \grace {
                    g8
                }
                b,8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/8 {
                b,4
                c8.
                \grace {
                    c8
                }
                cqs16
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 1/1 {
                c4..
                ~
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 6/7 {
                c4.
                cs4.
                b,8
            }
            \times 2/3 {
                b,2
                r8
                cqs2
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 3/4 {
                cs2
                cs4.
                \grace {
                    cs8
                }
                cqs8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 6/11 {
                c1
                cs4.
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 6/7 {
                d8
                d2
                r8
                c8
                ~
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 1/1 {
                c4
                ~
                c16
                ~
            }
            \times 8/13 {
                c8
                d1
                ~
                d8
                d4.
            }
            \times 8/9 {
                cs8
                d2
                r8
                d4.
            }
            cqs32
            d16.
            r8
            d16.
            cs32
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/12 {
                ef8
                ef4.
                r2
                cs4.
                d8
            }
            cs16
            ef8.
            r4
            ef8.
            dqs16
            \times 2/3 {
                ef8
                ef4.
                r2
                d4.
                e8
            }
            \times 2/3 {
                d8
                eqf4.
                r2
                e4.
                eqs8
            }
            \tweak text #tuplet-number::calc-fraction-text
            \times 5/6 {
                dqs32
                ef16.
                r8
                e16.
                f32
            }
            e16
            eqf8.
            r4
            ef8.
            eqf16
            e16
            eqf8.
            r4
            f8.
            e16
            \tweak text #tuplet-number::calc-fraction-text
            \times 7/12 {
                fqs16
                e8.
                r4
                e8.
                f16
            }
            fs16
            fqs8.
            r4
            f8.
            fs16
        }
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()