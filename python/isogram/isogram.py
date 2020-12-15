def is_isogram(string):
    letters = set()
    included = 0
    for letter in string:
        if letter != '-' and letter != ' ':
            letters.add(letter.lower())
            included += 1
    return included == len(letters)