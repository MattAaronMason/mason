import abjad

score = abjad.Score()
piano_staff = abjad.StaffGroup(lilypond_type="PianoStaff")
upper_staff = abjad.Staff(name="Upper_Staff")
upper_staff_voice = abjad.Voice(name="Upper_Staff_Voice")
upper_staff.append(upper_staff_voice)
lower_staff = abjad.Staff(name="Lower_Staff")
lower_staff_voice_2 = abjad.Voice(name="Lower_Staff_Voice_2")
lower_staff.append(lower_staff_voice_2)
piano_staff.append(upper_staff)
piano_staff.append(lower_staff)
score.append(piano_staff)

upper_staff_voice.append(r" \time 2/4
    a'8
    g'8
    f'8
    e'8
"
)
upper_staff_voice.append(r" {
    \time 3/4
    d'4
    g'8
    f'8
    e'8
    d'8
}")
upper_staff_voice.append(r"{
    \time 2/4
    c'8
    d'16
    e'16
    f'8
    e'8
}")
upper_staff_voice.append("{ d'2 ")
upper_staff_voice.append("{ d'2 ")
abjad.show(score)