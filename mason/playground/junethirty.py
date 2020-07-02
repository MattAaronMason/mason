import abjad
import abjadext.rmakers

staff = abjad.Staff(
    segment = (
        abjad.PitchSegment(
        [
            "e'",
            "ef'",
            "c'"
            "cs'"
        ]
        )
    )

    rhs = [(1, 4), (3, 8), (2, 4), (1, 8)]

    rhythms = [abjad.Duration(x) for x in rhs]

    zip(pitches, abjad.select(rhythms).logical_ties(pitched=True):
        for leaf in tie:
                leaf.written_pitch = pitch)
)

abjad.f(staff)
