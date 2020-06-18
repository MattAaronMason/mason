import abjad
time_signatures = [abjad.TimeSignature((4, 4)), abjad.TimeSignature((6, 8)), abjad.TimeSignature((4, 4))]

pitches = [0, 4.5, 8, 7, None, 3, 1, 9, 2]
rhythms = [(1, 4), (1, 8), (3, 8), (1, 2), (1, 8), (1, 8), (5, 8), (1, 8), (1, 8)]

maker = abjad.LeafMaker()

rhythms = [abjad.Duration(x) for x in rhythms]
notes = maker(pitches, rhythms)
staff1 = abjad.Staff(notes)



pitches = [None]
rhythms = [(1, 1), (1, 1), (1, 1)]

maker = abjad.LeafMaker()

rhythms = [abjad.Duration(x) for x in rhythms]
notes = maker(pitches, rhythms)
staff2 = abjad.Staff(notes)
for leaf, signature in zip(staff2[:], time_signatures):
    abjad.attach(signature, leaf)
    leaf.multiplier = abjad.Multiplier(signature.pair)

score = abjad.Score([staff2, staff1])

for staff in score:
    for i, shard in enumerate(abjad.mutate(staff[:]).split(time_signatures)):
        time_signature = time_signatures[i]
        abjad.mutate(shard).rewrite_meter(abjad.Meter(time_signature.pair), boundary_depth=1)

abjad.show(score)
