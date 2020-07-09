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
            \times 4/5 {
                c'16.
                \grace {
                    d'8
                    ef'8
                }
                ef'8.
                r4.
                \grace {
                    ef'8
                    e'8
                    fs'8
                }
                af'16.
                a'16.
                \grace {
                    aqs'8
                    aqs'8
                }
                bf'16.
            }
            \times 4/5 {
                \grace {
                    bqs'8
                    dqf''8
                    ef''8
                }
                e''16..
                e''8..
                r4..
                \grace {
                    e''8
                    f''8
                }
                g''16..
                \grace {
                    a''8
                    bf''8
                    bf''8
                }
                bf''16..
                b''16..
            }
            \times 4/5 {
                \grace {
                    cs'''8
                    ef'''8
                }
                e'''32.
                \grace {
                    e'''8
                    e'''8
                    f'''8
                }
                gqf'''16.
                r8.
                aqf'''32.
                \grace {
                    bf'''8
                    bqf'''8
                }
                bqf'''32.
                \grace {
                    b'''8
                    c''''8
                    d''''8
                }
                e''''32.
            }
            \times 4/5 {
                f''''8
                \grace {
                    f''''8
                    f''''8
                }
                fs''''4
                r2
                \grace {
                    af''''8
                    bf''''8
                    b''''8
                }
                b''''8
                b''''8
                \grace {
                    c'''''8
                    d'''''8
                }
                fqs'''''8
            }
        }
    >>
} %! abjad.LilyPondFile._get_formatted_blocks()