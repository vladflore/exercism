def recite(start_verse, end_verse):
    number_to_day = {
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
    day_to_gift = {
        "first": "a Partridge in a Pear Tree",
        "second": "two Turtle Doves",
        "third": "three French Hens",
        "fourth": "four Calling Birds",
        "fifth": "five Gold Rings",
        "sixth": "six Geese-a-Laying",
        "seventh": "seven Swans-a-Swimming",
        "eighth": "eight Maids-a-Milking",
        "ninth": "nine Ladies Dancing",
        "tenth": "ten Lords-a-Leaping",
        "eleventh": "eleven Pipers Piping",
        "twelfth": "twelve Drummers Drumming"
    }
    recitation = []
    for verse_number in range(start_verse, end_verse + 1):
        gift_list = []
        for idx in range(verse_number, 0, -1):
            gift = ''
            if verse_number != 1 and idx == 1:
                gift += 'and '
            gift += day_to_gift[number_to_day[idx]]
            gift_list.append(gift)
        gifts = ', '.join(gift_list)
        recitation.append(
            f'On the {number_to_day[verse_number]} day of Christmas my true love gave to me: {gifts}.')
    return recitation
