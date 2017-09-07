"""
Small experiments in using Python to calculate scales and modes in music.
"""


def scale(start_note=0, scale_steps=None):
    """ Returns scale as a list of integers.

    The integers in the returned list are the notes of the scale,
    expressed as a number of semitones from the initial note, so
    the first note is 0 for example.

    :param start_note: 0-based integer representing the start note for the scale. Default is 0.
    :param scale_steps: A list of integers representing the step sizes between successive notes in the scale.
                        If not provided, then the default will produce a major scale.

    Examples:
        >>> scale()
        [0, 2, 4, 5, 7, 9, 11, 12]

        >>> scale(start_note=2)
        [0, 1, 3, 5, 7, 8, 10, 12]

    """
    if scale_steps is None:
        # number of semitone steps between successive notes in major scale
        scale_steps = [2, 2, 1, 2, 2, 2, 1]

    mode_steps = rotate(scale_steps, start_note)

    note = 0
    notes = [note]
    for step in mode_steps:
        note += step
        notes.append(note)

    return notes


def rotate(l, n):
    """ Rotates list l leftwards by n positions.

    :returns: The rotated list.

    Example:
    >>> rotate([1, 2, 3, 4, 5, 6], 1)
    [2, 3, 4, 5, 6, 1]


    :param l: The list to be rotated.
    :param n: The integer number of positions to rotate. If larger than len(l) it will be reduced modulo len(l).
    """
    n %= len(l)
    return l[n:] + l[:n]


def steps(notes):
    """ Calculates intervals between successive notes.

    :returns: The list of intervals. Each interval is expressed as an integer number of semitones.

    Examples:
        >>> steps([0, 1, 3, 4, 6, 7, 9])
        [1, 2, 1, 2, 1, 2]

        >>> steps(scale())
        [2, 2, 1, 2, 2, 2, 1]

    """
    if len(notes) < 2:
        return []
    intervals = [notes[i]-notes[i-1] for i in range(1, len(notes))]
    return intervals


def render(notes):
    """ Make a picture of the notes.

    Example:
        >>> render(scale())
        'X X XX X X XX'
    """
    scale_steps = steps(notes)
    output = 'X'
    for i in scale_steps:
        output += ' '*(i-1) + 'X'

    return output


def spell(notes):
    """ Give the notes a conventional spelling.
        E.g. see https://en.wikipedia.org/wiki/Jazz_chord#Nomenclature

    :param notes: A list of positive integers representing number of semitones above the root (which has number 0).

    :returns: A string of the notes spelled out.

    Examples:
        >>> spell([0, 4, 7])
        ' r  3  5'

        >>> spell([0, 3, 8])
        ' r b3 #5'
    """
    names = {0: ' r',
             1: 'b2',
             2: ' 2',
             3: 'b3',
             4: ' 3',
             5: ' 4',
             6: 'b5',
             7: ' 5',
             8: 'b6',
             9: ' 6',
             10: 'b7',
             11: 'M7',
             12: ' 8',
             13: 'b9',
             14: ' 9',
             15: 'b10',
             16: ' 10',
             17: ' 11',
             18: '#11',
             19: ' 12',
             20: 'b13',
             21: ' 13'}
    spelling = [names[n] for n in notes]
    return ' '.join(spelling)

if __name__ == '__main__':
    #
    # Demonstration
    #
    def demo(name, scale_notes):
        print('{:>13}: {:14}  {:24}  {}'.format(
            name, render(scale_notes), spell(scale_notes), scale_notes))

    demo('      Maj7', [0, 4, 7, 11])
    demo('    Lydian', scale(3))
    demo('    Ionion', scale())
    print()
    demo('        m7', [0, 3, 7, 10])
    demo('    Dorian', scale(1))
    demo('   Aeolian', scale(5))
    demo('  Phrygian', scale(2))
    print()
    demo('       dim', [0, 3, 6, 9, 12])
    demo('       aug', [0, 4, 8, 12])
    demo('Mixolydian', scale(4))
    demo('   Locrian', scale(6))
    print()
    demo('Whole Tone', scale(scale_steps=[2, 2, 2, 2, 2, 2]))
