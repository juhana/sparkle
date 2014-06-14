exports.data = [{
    title: "The Source Text",
    index: {
        "Use options": [5, 34]
    }
},
{
    title: "Things and kinds",
    index: {
	    "Rooms": [38, 45, 50],
        "Containers": [25, 51, 70],
	    "Supporters": [76],
	    "Devices": [46],
	    "Animals": 98,
	    "Doors": [49, 63, 84],
	    "Backdrops": [95, 96, 97],
	    "Regions": 94,
	    'The "yourself" object': 37,
	    "New kinds of things": [56, 70, 83],
	    "The location (of the player)": [25, 35, 39],
	    "The location of something": [35, 48, 101],
	    "Plural of": [56, 83],
	    "Key unlocks door": [83],
	    "Values that vary": [83, 93]
    }
},
{
	title: "Properties",
	index: {
		"Initial appearance": [39, 43, 72],
		"Description": [38, 61, 80],
		"Printed name": [38, 49, 51],
		"Indefinite article": [90, 98],
		"Scenery": [42, 44, 72],
		"Fixed in place": [39, 43, 46],
		"Portable": 25,
		"Open/closed": [39, 48, 58],
		"Locked/unlocked": [66, 68, 83],
		"Openable": 63,
		"Enterable": [39, 65],
		"Transparent": 39,
		"Switched on/off": [38, 43, 45],
		"Edible/inedible": [78, 101],
		"Plural-named": [41, 47, 65],
		"Proper-named": 83,
		"Privately-named": 51,
		"Visited/unvisited": [35, 58],
		"Handled": 8,
		"New properties": [9, 51, 88],
		"Is always": [56, 70, 83]
	}
},
{
    title: "Text",
    index: {
        "To say": [0],
	    "Line break": [31, 33, 70],
	    "Paragraph break": [21, 28],
	    "Command clarification break": [38, 39, 40],
	    "Italic type": [21, 32, 93],
	    "Roman type": [21, 32, 93],
	    "[']": [59],
	    "Bracket/close bracket": 93,
	    "In lower case": 12,
	    "Word number ... in": 56,
	    "The list of": 39,
	    "[if ...] ... [end if]": [38, 58, 76],
	    "[if ...] ... [otherwise]": [39, 67, 68],
	    "[if ...] ... [otherwise if ...]": [89],
	    "[first time] ... [only]": [58, 104],
	    "[one of] ... [or] ... [stopping]": [32, 35],
	    "[one of] ... [or] ... [as decreasingly likely outcomes]": [98, 103]
    }
},
{
	title: "Descriptions",
	index: {
		"Definition: ... is ... if": [40, 60, 67],
		"Can see": [34, 48, 101],
		"Best route from ... to": 100
	}
},
{
    title: "Actions",
    index: {
        "New actions applying to one thing": [17, 18],
        "New actions applying to two things": [13, 14, 15],
        "New actions applying to nothing": [22, 23, 28],
	    "New actions applying to topics": 27,
	    "New actions applying to visible things": [25, 26, 27],
        "New out of world actions": [21, 22, 23],
	    "Before": [39, 70],
        "Instead of": [10, 12, 29],
        "Check": [13, 40, 46],
        "Carry out": [8, 22, 28],
	    "After": [28, 39, 46],
	    "Report": [25, 28, 35],
	    "Continue the action": [28],
	    "Stop the action": [31, 35, 39],
	    "For the first time": [35, 48, 51],
	    "Try": [26, 37, 41],
	    "Try silently": [39, 56, 104],
	    "Action variables": 28,
	    "The noun": [8, 17, 18],
	    "The second noun": [16, 20, 40],
	    "Going nowhere": [38, 55, 82],
	    "Rule for reaching inside": 48,
	    "Allow/deny access": 48,
	    "Current action": [56, 101, 103],
	    "Doing something other than": [62, 64],
	    "Doing anything with": 85,
	    "Persuasion rules": 99
    }
},
{
    title: "Change",
    index: {
	    "Now ... is": [8, 25, 41],
	    "Move ... to": [51, 52],
	    "Removing from play": [25, 41, 46],
	    "If ... is somewhere": [35, 100],
        "A random thing": [8, 28],
	    "A random chance of ... in ...": 103,
        "Number of things": [8],
	    "(called the ...)": [25, 30, 56],
	    "Changing the command prompt": 93
    }
},
{
	title: "Time",
	index: {
		"When play begins": 6,
		"Every turn": [55, 56, 100],
		"Ending the story": 93
	}
},
{
    title: "Phrases",
    index: {
	    "If ... otherwise ...": [25, 70],
	    "Repeat with ... running through ...": [28, 31],
	    "Let": [8, 31, 100],
        "To decide whether ...": [8, 99, 101],
	    "To decide what/which ...": [12, 31],
	    "Do nothing": 12,
	    "New to-phrases": [32, 33, 46]
    }
},
{
	title: "Relations",
	index: {
		"The containment relation (in)": [25, 34, 43],
		"The support relation (on)": [25, 88, 90],
		"The incorporation relation (part of)": [25, 31, 40],
		"The carrying relation": [46, 52, 56],
		"The wearing relation": 41,
		"The possession relation (has)": [31, 60],
		"Holder of": [25, 101],
		"Enclosed by": 101,
		"New relations": [24, 25]
	}
},
{
	title: "Adaptive text and responses",
	comment: "Adaptive text is a new feature of Inform 6L02 in 2014. The most visible use of adaptive text throughout the code is the token [we] (and variants) to represent the pronoun used to refer to the player character. With minimal effort we can now let the player switch between first and second person perspectives. Initially it was used also because the author wasn't sure which perspective the story should use by default, and this was an easy way to try it both ways before deciding. Note that because verb forms look the same for first and second person only the pronouns and not the verbs (apart from [are]) need to use text substitutions.",
	index: {
		"Changing the text of responses": 12,
		"Setting the story viewpoint": 6,
		"Testing for the story viewpoint": [21, 22],
		"New verbs": 7,
		"[regarding the noun]": [12, 15]
	}
},
{
	title: "Numbers and equations",
	index: {
		"Greater than": 28,
		"Increment": 83
	}
},
{
	title: "Tables",
	index: {
		"Laying out tables": [32, 33, 34],
		"Table continuations": 105,
		"Accessing entries": [32, 33],
		"Choosing rows by entries": 33,
		"Repeating through tables": 32,
		"If ... is (not) empty": 32,
		"If there is ...": 33,
		"Blank out the whole row": [32, 33],
		"Sorting": 33
	}
},
{
    title: "Understanding",
    index: {
        "Grammar definitions for new actions": [13, 14, 15],
        "New grammar for existing actions": 11,
	    "Understand ... as (a thing)": [31, 37, 39],
	    "Understand the command ... as": [11, 19],
	    "Understand the command ... as something new": 19,
	    "Understand ... as ... when": 104,
	    "Understand nothing as": 10,
	    "(with nouns reversed)": 19,
        "[something preferably held]": [14, 15, 16],
        "Does the player mean ...": [14, 15, 53],
	    "Setting the pronouns from": 25,
	    "Item described": [56, 70, 83]
    }
},
{
	title: "Activities",
	index: {
		"Printing a parser error": 12,
		"Printing the banner text": 21,
		"Printing inventory details": [30, 68],
		"Writing a paragraph about": 98,
		"Listing nondescript items": 56,
		"Marked for listing": 56,
		"Reading a command": 93,
		"If the player's command matches": 93,
		"Reject the player's command": 93,
	    "After deciding the scope of the player": [48],
		"Place ... in scope": 48,
		"Carry out the ... activity": 104
    }
},
{
    title: "Rulebooks",
    index: {
        "Named rules": [17, 31, 32],
	    "This is the ... rule": [32, 34, 105],
	    "Follow the ... rule": [31, 32, 93],
	    "Rule succeeds": [32, 34],
	    "If rule succeeded": 32,
	    "Make no decision": [68, 100],
	    "First rules": [6, 25, 52],
	    "Last rules": 100,
        "Rule does nothing when/if": [8, 104],
	    "Shutdown rules": 93,
	    "New rulebooks": 103
    }
},
{
	title: "Lists",
	index: {
		"Defining a list": 28,
		"Adding an element": 28,
		"Number of entries": 28
	}
},
{
	title: "Testing and debugging",
	index: {
		"Test ... with": [41, 50, 69],
		"(not for release)": 105
	}
},
{
	title: "Releasing",
	index: {
		"Bibliographic data": 2,
		"Release along with": 3
	}
},
{
    title: "Extensions",
    comment: "The story uses three extensions: Epistemology by Eric Eve, which comes bundled with Inform 7; Exit Lister by Eric Eve, which can be downloaded from the Public Library; and Achievements by Juhana Leinonen, which was created for this story but is a general-purpose achievement system, available from <a href='https://raw.githubusercontent.com/i7/extensions/master/Juhana%20Leinonen/Achievements.i7x'>GitHub</a>.",
    index: {
        "Including": 4
    }
},
{
    title: "Story features",
    comment: "These are broader story features (as opposed to Inform 7 language features). Code for individual rooms and things can be found most easily by browsing the <a href='source.html'>table of contents</a>.",
    index: {
	    "Intro text": 36,
        "About text": 21,
	    "Special command instructions": 33,
	    "Achievements": 34,
	    "Hints": 35,
        "Changing story viewpoint": 22,
        "Actions related to changing things": [25, 26, 27],
        "Meditating": [28, 32],
	    "Recalling known transformations": [29, 31],
	    "Endgame": 93,
	    "Debugging": 105
    }
}];
