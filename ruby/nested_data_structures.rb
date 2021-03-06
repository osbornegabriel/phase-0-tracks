legos = {
	star_wars: {
		heroes: ["Luke", "Han", "Leah"],
		number_of_legos: 50,
		transport: ["Millenium Falcon", "Death Star"]
	},
	medieval: {
		heroes: ["Knight", "Merlin", "Last Dragon"],
		number_of_legos: 200,
		transport: ["Last Dragon", "Valiant Steed"]
	},
	pirate: {
		heroes: ["Captain", "First Mate", "Parrot"],
		number_of_legos: 100,
		transport: ["Ship", "row boat"]
	}

}

# p legos

p legos[:star_wars][:number_of_legos].next

legos[:pirate][:transport] << "Dolphin"

p legos[:pirate]

p legos[:medieval][:transport].reverse