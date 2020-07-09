\version "2.19.84"
\language "english"

\header {
    tagline = ##f
}

\layout {
  \context {
    \name TimeSignatureContext
    \type Engraver_group
    \numericTimeSignature
    \consists Axis_group_engraver
    \consists Bar_number_engraver
    \consists Time_signature_engraver
    \consists Mark_engraver
    \consists Metronome_mark_engraver
    \consists Text_engraver
    \override StaffSymbol.stencil = ##f
    \override TimeSignature.break-visibility = #end-of-line-invisible
    \override TimeSignature.X-extent = #'(0 . 0)
    \override TimeSignature.Y-extent = #'(0 . 0)
    \override TimeSignature.self-alignment-X = #center
    \override TimeSignature.break-align-symbol = ##f
    \override TimeSignature.X-offset = #ly:self-alignment-interface::x-aligned-on-self
  }
  \context {
    \Score
    \accepts TimeSignatureContext
    \remove Bar_number_engraver
  }
  \context {
    \StaffGroup
    \accepts TimeSignatureContext
    \remove Bar_number_engraver
  }
  \context {
    \Staff
    \remove Time_signature_engraver
    \remove Bar_number_engraver
  }
}


\paper {}
