def convert(number):
    d = {3: 'Pling', 5: 'Plang', 7: 'Plong'}
    sound = ''.join(
        list(map(lambda f: d[f], list(filter(lambda f: number % f == 0, [3, 5, 7])))))
    if len(sound) == 0:
        return str(number)
    else:
        return sound

