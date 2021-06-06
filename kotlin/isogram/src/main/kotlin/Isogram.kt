object Isogram {
	fun isIsogram(input: String): Boolean {
		var specialCharsCount = 0
		var letters = emptySet<Char>()
		for (ch in input.toLowerCase()) {
			if (ch.isLetter()) {
				letters = letters.plus(ch)
			} else {
				specialCharsCount++
			}
		}
		return letters.size == input.length - specialCharsCount
	}
}
