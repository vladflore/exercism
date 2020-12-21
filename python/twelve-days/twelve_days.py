def recite(start_verse, end_verse):
    gift_for_day = {
        1: ("first", "a Partridge in a Pear Tree"),
        2: ("second", "two Turtle Doves"),
        3: ("third", "three French Hens"),
        4: ("fourth", "four Calling Birds"),
        5: ("fifth", "five Gold Rings"),
        6: ("sixth", "six Geese-a-Laying"),
        7: ("seventh", "seven Swans-a-Swimming"),
        8: ("eighth", "eight Maids-a-Milking"),
        9: ("ninth", "nine Ladies Dancing"),
        10: ("tenth", "ten Lords-a-Leaping"),
        11: ("eleventh", "eleven Pipers Piping"),
        12: ("twelfth", "twelve Drummers Drumming")
    }
    ans = []
    for verse_number in range(start_verse, end_verse + 1):
        gifts = ', '.join(
            reversed([('and ' if verse_number != 1 and idx == 1 else '') + gift_for_day[idx][1] for idx in
                      range(1, verse_number + 1)]))
        ans.append(
            f'On the {gift_for_day[verse_number][0]} day of Christmas my true love gave to me: {gifts}.')
    return ans
