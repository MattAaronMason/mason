def return_pitch_class_set(pitches):
    """
    >>> import mason
    >>> mason.return_pitch_class_set([15, 10, 8, -5, 3, 11])
    [0, 1, 3, 4, 8]

    """
    pitches = [i % 12 for i in pitches]
    pitches = set(pitches)
    print(pitches)
    pitches = sorted(pitches)
    print(pitches)
    pitches = list(pitches)
    print(pitches)
    if pitches[1] - pitches[0] > pitches[-1] - pitches[-2]:
        pitches.reverse()
        intervals = [pitches[0] - i for i in pitches]
    else:
        intervals = [i - pitches[0] for i in pitches]
    root = 0
    pitches = [root + interval for interval in intervals]
    return pitches
