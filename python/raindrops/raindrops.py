def convert_v1(number):
    d = {3: 'Pling', 5: 'Plang', 7: 'Plong'}
    sound = ''.join(
        list(map(lambda f: d[f], list(filter(lambda f: number % f == 0, [3, 5, 7])))))
    if len(sound) == 0:
        return str(number)
    else:
        return sound


def convert_v2(number):
    rain = ''.join([t[1] for t in [(3, 'Pling'), (5, 'Plang'),
                                   (7, 'Plong')] if number % t[0] == 0])
    if len(rain) == 0:
        return str(number)
    else:
        return rain


def convert(number):
    drops = (3, 'Pling'), (5, 'Plang'), (7, 'Plong')
    rain = ''.join(sound for factor, sound in drops if number % factor == 0)
    return rain or str(number)
