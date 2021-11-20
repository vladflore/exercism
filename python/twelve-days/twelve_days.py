NUMBER_TO_DAY = {
    1: "first",
    2: "second",
    3: "third",
    4: "fourth",
    5: "fifth",
    6: "sixth",
    7: "seventh",
    8: "eighth",
    9: "ninth",
    10: "tenth",
    11: "eleventh",
    12: "twelfth"
}
DAY_TO_GIFT = {
    1: "a Partridge in a Pear Tree",
    2: "two Turtle Doves",
    3: "three French Hens",
    4: "four Calling Birds",
    5: "five Gold Rings",
    6: "six Geese-a-Laying",
    7: "seven Swans-a-Swimming",
    8: "eight Maids-a-Milking",
    9: "nine Ladies Dancing",
    10: "ten Lords-a-Leaping",
    11: "eleven Pipers Piping",
    12: "twelve Drummers Drumming"
}

def recite(start_verse, end_verse):
    recitation = []
    for verse_number in range(start_verse, end_verse + 1):
        gift_list = []
        for idx in range(verse_number, 0, -1):
            gift = ''
            if verse_number != 1 and idx == 1:
                gift += 'and '
            gift += DAY_TO_GIFT[idx]
            gift_list.append(gift)
        gifts = ', '.join(gift_list)
        recitation.append(
            f'On the {NUMBER_TO_DAY[verse_number]} day of Christmas my true love gave to me: {gifts}.')
    return recitation
