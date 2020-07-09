import abjad
import math
from abjadext import rmakers

selector = abjad.select().notes().exclude([0, 1, 3,4, -1])
selector = abjad.select().tuplets().map(selector)
stack = rmakers.stack(
    rmakers.tuplet(
        [
            (1, 2, 4, 1, 1, 1)
        ]
    ),
    rmakers.force_rest(selector),
    rmakers.before_grace_container([0, 2, 3], abjad.select().logical_ties(pitched=True))
)
time_signatures = [abjad.TimeSignature((3, 4)), abjad.TimeSignature((7, 8)), abjad.TimeSignature((3, 8)), abjad.TimeSignature((4, 4))]
selection = stack(time_signatures)

skips = [abjad.Skip((1, 1)) for signature in time_signatures]

for skip, signature in zip(skips, time_signatures):
    skip.multiplier = abjad.Multiplier(signature.pair)
    abjad.attach(signature, skip)

ts_staff = abjad.Staff(skips, lilypond_type="TimeSignatureContext", name="globalcontext")

staff = abjad.Staff(selection, name="staffname")

pitches = [abjad.NumberedPitch(x) + (math.sin(x))  for x in range(len(abjad.select(staff).logical_ties(pitched=True)))]
zipped = zip(pitches, abjad.select(staff).logical_ties(pitched=True))
for pitch, tie in zipped:
    for leaf in abjad.select(tie).leaves():
        leaf.written_pitch = pitch

score = abjad.Score([ts_staff, staff])

selector = abjad.select().notes().exclude([0, 1, 3,4, -1])
selector = abjad.select().tuplets().map(selector)
stack = rmakers.stack(
    rmakers.tuplet(
        [
            (1, 2, 4, 1, 1, 1)
        ]
    ),
    rmakers.force_rest(selector),
    rmakers.before_grace_container([0, 2, 3], abjad.select().logical_ties(pitched=True))
)
time_signatures_two = [abjad.TimeSignature((3, 4)), abjad.TimeSignature((7, 8)), abjad.TimeSignature((3, 8)), abjad.TimeSignature((4, 4))]
selection = stack(time_signatures_two)

skips_two = [abjad.Skip((1, 1)) for signature_two in time_signatures_two]

for skip_two, signature_two in zip(skips_two, time_signatures_two):
    skip.multiplier = abjad.Multiplier(signature.pair)
    abjad.attach(signature_two, skip_two)

ts_staff_2 = abjad.Staff(skips_two, lilypond_type="TimeSignatureContext", name="globalcontext")

staff_two = abjad.Staff(selection, name="staffname")

pitches_two = [abjad.NumberedPitch(x) + (2.5)  for x in range(len(abjad.select(staff).logical_ties(pitched=True)))]
zipped_two = zip(pitches_two, abjad.select(staff_two).logical_ties(pitched=True))
for pitch_two, tie_two in zipped_two:
    for leaf_two in abjad.select(tie).leaves():
        leaf_two.written_pitch = pitch_two

scoretwo = abjad.Score([ts_staff_2, staff_two])





file = abjad.LilyPondFile.new(score, includes=[r"\Users\Matthew\mason\mason\lilypond\stylesheet.ily"])
abjad.persist(file).as_pdf(r"\Users\Matthew\mason\mason\playground\parabolicpitches.pdf")
