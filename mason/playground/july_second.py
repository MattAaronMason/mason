import abjad
import math
from abjadext import rmakers

tuples = [(3, 4), (7, 8), (3, 8), (4, 4), (4, 4), (4, 4)]

time_signatures = [abjad.TimeSignature(x) for x in tuples]

skips = [abjad.Skip((1, 1)) for signature in time_signatures]

for i, signature in enumerate(time_signatures):
    skips[i].multiplier = abjad.Multiplier(signature.pair)
    abjad.attach(signature, skips[i])
    if 0 < i:
        if time_signatures[i] == time_signatures[i - 1]:
            new_signature = abjad.TimeSignature(signature.pair, hide=True)
            abjad.detach(signature, skips[i])
            abjad.attach(new_signature, skips[i])

ts_staff = abjad.Staff(skips, lilypond_type="TimeSignatureContext", name="globalcontext")

selector = abjad.select().notes().exclude([0, 1, 3, 4, -1])
selector = abjad.select().tuplets().map(selector)
stack = rmakers.stack(
    rmakers.tuplet(
        [
            (1, 2, 4, 1, 1, 1)
        ]
    ),
    rmakers.force_rest(selector),
    rmakers.before_grace_container(
        [1, 2, 1],
        abjad.select().tuplets().map(abjad.select().logical_ties(pitched=True).exclude([0, 3, 4, 5]))
    ),
    rmakers.rewrite_dots(abjad.select().tuplets().get([1])),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
)
stack2 = rmakers.stack(
    rmakers.talea(
        [3, 1, 4, -1, 5, 9], 8, extra_counts=[1, 3, 5]
    ),
    rmakers.trivialize(abjad.select().tuplets()),
    rmakers.extract_trivial(abjad.select().tuplets()),
    rmakers.rewrite_rest_filled(abjad.select().tuplets()),
    rmakers.rewrite_sustained(abjad.select().tuplets()),
)

selection1 = stack([time_signatures[0]])
state1 = stack.state
selection2 = stack2([time_signatures[1]])
state2 = stack2.state
selection3 = stack([time_signatures[2]], previous_state=state1)
selection4 = stack2(time_signatures[3:], previous_state=state2)

selection = selection1 + selection2 + selection3 + selection4
staff = abjad.Staff(selection, name="staffname")
abjad.attach(abjad.Clef("bass"), abjad.select(staff).leaf(0))

pitches = []
ties = abjad.select(staff).logical_ties(pitched=True)
for eye in range(len(ties)):
    multiplied_val = eye * 0.25
    sin_val = math.sin(eye)
    added_val = multiplied_val + sin_val
    if 3 < added_val:
        added_val -= 4.5
    pitch = abjad.NumberedPitch(added_val)
    pitch -= 12
    pitches.append(pitch)

zipped = zip(pitches, abjad.select(staff).logical_ties(pitched=True))
for pitch, tie in zipped:
    for leaf in abjad.select(tie).leaves():
        leaf.written_pitch = pitch
score = abjad.Score([ts_staff, staff])

file = abjad.LilyPondFile.new(score, includes=[r"\Users\Matthew\mason\mason\lilypond\stylesheet.ily"])
abjad.persist(file).as_pdf(r"\Users\Matthew\mason\mason\playground\july_second.pdf")
