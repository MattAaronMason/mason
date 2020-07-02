import abjad

pitches = [
    "e'4",
    "c'4",
    "cs'8",
    "ef'8",
    "d'4"
]

notes = [abjad.Note(x) for x in pitches]

container = abjad.Container(notes)

selection =  abjad.select(container[:2])
for x in selection:
    abjad.override(x).note_head.color = "red"
abjad.show(container)
