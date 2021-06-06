object Pangram {
	fun isPangram(input: String): Boolean {
		val set = input.toLowerCase().asSequence().filter { it.isLetter() }.toSet()
		return set.size == 26
	}
}
