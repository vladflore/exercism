def is_isogram_initial(string):
    letters = set()
    included = 0
    for letter in string:
        if letter.isalpha():
            letters.add(letter.lower())
            included += 1
    return included == len(letters)


def is_isogram(string):
    visited = []
    for letter in string.lower():
        if letter in visited:
            return False
        if letter.isalpha():
            visited.append(letter)
    return True
