import abjad

segment = (
    abjad.PitchSegment(["e'", "c'", "ds'", "cs'"]).retrograde().invert(3).multiply(2)
)

durations = [(1, 4), (1, 4), (1, 4), (3, 8), (5, 8)]

maker = abjad.LeafMaker()

leaves = maker(segment, durations)

staff1 = abjad.Staff(leaves)
abjad.f(staff1)

for pitches, rhythms
