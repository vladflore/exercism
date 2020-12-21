def recite(start_verse, end_verse):
    days = {
        0: "first",
        1: "second",
        2: "third",
        3: "fourth",
        4: "fifth",
        5: "sixth",
        6: "seventh",
        7: "eighth",
        8: "ninth",
        9: "tenth",
        10: "eleventh",
        11: "twelfth",
    }
    all_presents = [
        "a Partridge in a Pear Tree",
        "two Turtle Doves",
        "three French Hens",
        "four Calling Birds",
        "five Gold Rings",
        "six Geese-a-Laying",
        "seven Swans-a-Swimming",
        "eight Maids-a-Milking",
        "nine Ladies Dancing",
        "ten Lords-a-Leaping",
        "eleven Pipers Piping",
        "twelve Drummers Drumming",
    ]
    ans = []
    for d in range(start_verse-1, end_verse):
        day_presents = ', '.join(
            reversed(all_presents[1:d+1])) + (', and ' if d > 0 else '') + all_presents[0]
        ans.append(
            f'On the {days[d]} day of Christmas my true love gave to me: {day_presents}.')
    return ans
