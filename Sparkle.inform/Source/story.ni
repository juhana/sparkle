"Sparkle" by Juhana Leinonen


Volume 1 - Metadata

Book 1 - License

To say the license:
	say "Copyright (c) 2014 Juhana Leinonen

Permission is hereby granted, free of charge, to any person obtaining a copy
of this software and associated documentation files (the 'Software'), to deal
in the Software without restriction, including without limitation the rights
to use, copy, modify, merge, publish, distribute, sublicense, and/or sell
copies of the Software, and to permit persons to whom the Software is
furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in
all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED 'AS IS', WITHOUT WARRANTY OF ANY KIND, EXPRESS OR
IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY,
FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE
AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER
LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM,
OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN
THE SOFTWARE."


Book 2 - Changelog

[
Release 4 
 - A few instances of "us" and "me" corrected to "[us]" and "[me]"

Release 3 (2014-06-15)
 - Fixed a bug (introduced in release 2) where examining the dog before meditating for the first time would crash the story.
 - Added a nudge to the right dumbwaiter's description saying there might be something inside.
 - Added a description of the dog being cleaner when changing the flute back after washing it.
 - >CLEAN FLUTE WITH CHOPSTICK/SCISSORS now clears the blockage.
 - The achievements list no longer calls locked achievements unlocked.
 - More trivial adjustments to story text.

Release 2 (2014-06-08)
- Removed the Shufflecomp pseudonym.
- Added a missing line break when looking out the cable car when the dog and something else was in the room outside the car.
- Better persuasion refusal message for the dog.
- Since it's possible to reach the ending without changing the glove into the cantaloupe, removed the reference to it from one of the conversation options at the end.
- Added a response to trying to feed the cantaloupe to the dog.
- Fixed a bug where going east from the hotel lobby when the umbrella is sticking out the door would say "(first opening the door)" but stop the action before actually doing that.
- Changed rule ordering slightly so that changing the dog back the first time after applying lipstick to the flute will always print a message about the dog wearing lipstick.
- Added some extra nudges toward using non-standard commands MEDITATE and CHANGE.
- Renamed the "Short Confinement" achievement to "Animal Rescue" and awarding it only after the flute has been turned back into the dog outside the dumbwaiter.
- Some trivial adjustments to story text.

Release 1 (2014-05-13) - Initial release for Shufflecomp under pseudonym "Karly Di Caprio".
]


Book 3 - Bibliographic data

The release number is 3.
The story headline is "A quest for enlightenment".
The story creation year is 2014.
The story description is "My search for the Pattern has brought me to Mount Shanshan. Now it's just a matter of a short cable car ride up to the top."


Book 4 - Supplementary materials

Release along with cover art ("A bundle of sparkles."), a website, an interpreter, and the source text.

Release along with a file of "Walkthrough" called "walkthrough.txt".
Release along with a file of "Achievement descriptions" called "achievements.txt".
Release along with a file of "License" called "LICENSE.txt".
Release along with a file of "Source index" called "source_index.html".


Volume 2 - Mechanics

Book 1 - Extensions

Include Achievements by Juhana Leinonen. [* Can be downloaded from https://github.com/i7/extensions/tree/master/Juhana%20Leinonen]
Include Epistemology by Eric Eve.
Include Exit Lister by Eric Eve.


Book 2 - General

Part 1 - Use options

Use American dialect.


Part 2 - Tense

First when play begins: [* Making this the "first when play begins" rule guarantees that the viewpoint is set before anything is printed to the reader.]
	now the story viewpoint is first person singular.


Part 3 - Verbs

[Marking "equal" and "sparkle" verbs lets us use them as text substitutions when the plurality of the subject is unknown: "[The noun] [sparkle]" --> "The dog sparkles" or "The scissors sparkle".]
To equal is a verb.
To sparkle is a verb.


Book 3 - Objects

Part 1 - Things

Chapter 1 - Containers

[This relatively complex substitution prints an object's initial appearance when the container enclosing it is examined. The only thing where it is actually triggered is for the key in the pond. As a general solution it works only when there's exactly one thing in the container, which is enough for this story's needs.]

Carry out examining (this is the print initial appearances when examining containers rule):
	if special examine text should be printed:
		say the initial appearance of a random thing in the noun;
		say line break;
		now examine text printed is true.
	
To decide whether special examine text should be printed:
	if the noun is nothing:
		decide no;
	if the noun is not an open container and the noun is not a transparent container:
		decide no;
	if the number of things in the noun is not 1:
		decide no;
	let content be a random thing in the noun;
	if the initial appearance of the content is empty or the content is handled:
		decide no;
	decide yes.

The examine containers rule does nothing when special examine text should be printed. [* We could do "... substitutes for ... when ..." but then the "examine text printed" variable couldn't be used because the new rule wouldn't start in the carry out rulebook.]


Chapter 2 - Properties

[Cleanliness is used in a couple of key points and for showing a suitable generic response for trying to clean things.]
A thing can be clean or dirty. A thing is usually dirty.

[An object's size determines whether it fits through the grating into the dumbwaiter.]
A thing can be big or small. A thing is usually big.

["Hugeness" is only used for displaying an "it's too big to move" message for certain objects when "fixed in place" doesn't actually describe the reason why they can't be moved (e.g. sofas and tables aren't actually bolted to the floor).]
A thing can be huge. A thing is usually not huge.


Book 4 - Actions

Part 1 - Standard actions

Chapter 1 - Disabled actions

Understand nothing as buying.
Understand nothing as kissing.
Understand nothing as waving.
Understand nothing as swinging. [* Unrelated rant: I really wish Inform would drop some of these actions like waving and swinging that are useful only in generic fantasy stories and which the authors need to reimplement anyway if they want them to do anything useful.]
Understand nothing as squeezing.
Understand nothing as burning.
Understand nothing as setting it to.
Understand nothing as searching.
Understand nothing as saying yes.
Understand nothing as saying no.
Understand nothing as rubbing.

Instead of looking under: [* It's better to not remove the looking under action's grammar because commands like >LOOK UNDER SOFA would show a confusing "you can't see any such thing" error. We'll just display a generic refusal message that hopefully also hints the player that they shouldn't try to use the command.]
	say "There's no need to spend time looking under things."


Chapter 2 - Synonyms

Understand the command "pet" as "touch".
Understand the commands "lift" and "raise" as "pull".

Understand "climb [direction]" as going. [* Mainly for catching CLIMB UP/DOWN when there's a staircase present.]

Understand "start [something]" as switching on.
Understand "stop [something]" as switching off.


Chapter 3 - Standard messages
	
The block attacking rule response (A) is "[We] try to live by the teachings and control [our] aggressions."

The report rubbing rule response (A) is "[if the noun is clean][The noun] [are] clean enough.[otherwise][We] would rather not waste the effort cleaning things that [we] don't need to."

The report jumping rule response (A) is "Gymnastics isn't really [our] thing."

The block waking up rule response (A) is "[We] [are] not asleep. Or [are] [we] a butterfly, dreaming of being a woman?"

The can't go that way rule response (A) is "There is no exit in that direction."

The announce the score rule response (C) is "There is no numerical score in this story. Command ACHIEVEMENTS for a list of unlocked achievements."

To decide what text is the lowercase form of (R - a room):
	decide on "[R]" in lower case. [* We can safely lowercase all room names in this story because we know there aren't any locations that have proper names.]

The describe room gone into rule response (F) is "[The actor] [arrive] from the [lowercase form of the room the back way from the location]".

Check tasting a dirty thing: [*In the Standard Rules the tasting rules succeed by default, but since we want tasting to be blocked we won't just change the response but write new check rules instead.]
	say "Better not. [regarding the noun][They] [look] dirty." instead.
	
Check tasting:
	say "[We] really don't want to." instead.
	
Instead of taking or pushing or pulling or turning a huge thing:
	say "[regarding the noun][They're] way too big to move."
	
Rule for printing a parser error when the latest parser error is I beg your pardon error:
	do nothing instead. [* Removes the "I beg your pardon?" response from empty input completely -- IMHO the best response to no input is no output.]
	
[A bunch of fixes for Inform bug #1232 (doing stuff to the dog might respond with the wrong pronoun)]
The can't drop what's not held rule response (A) is "[We] [haven't] got [regarding the noun][them]."
The can't wear what's not clothing rule response (A) is "[We] [can't wear] [regarding the noun][them]!"
The can't wear what's not held rule response (A) is "[We] [aren't] holding [regarding the noun][them]!"
The can't wear what's already worn rule response (A) is "[We]['re] already wearing [regarding the noun][them]!"
The can't wave what's not held rule response (A) is "But [we] [aren't] holding [regarding the noun][them]."
The block setting it to rule response (A) is "No, [we] [can't set] [regarding the noun][them] to anything."
The can't take what's already taken rule response (A) is "[We] already [have] [regarding the noun][them]."


Part 2 - In world

Chapter 1 - Applying

Applying it to is an action applying to two things.

Understand "apply [something] to/on [something]" as applying it to.

Understand the command "smear" as "apply".

Check applying to:
	say "[We] can't apply [regarding the noun][them] to anything." instead.
	
Does the player mean applying something to the noun: [* Makes sure the parser doesn't automatically substitute the noun as the second noun, which leads to things like >APPLY LIPSTICK (to the lipstick). We'll do this for all verbs that require two nouns and don't have a single-noun counterpart.]
	it is very unlikely.
	

Chapter 2 - Clearing

Clearing it with is an action applying to two things.

Understand "clear [something] with/using [something preferably held]" as clearing it with.
Understand "unblock [something] with/using [something preferably held]" as clearing it with.
Understand "push [something] with/using [something preferably held]" as clearing it with.
Understand "stick [something] in [something preferably held]" as clearing it with (with nouns reversed).

Check clearing with:
	say "[The noun] [don't] need clearing." instead.

Does the player mean clearing something with the noun:
	it is very unlikely.


Chapter 3 - Cutting with

Cutting it with is an action applying to two things.

Understand "cut [something] with/using [something preferably held]" as cutting it with.

Check cutting with:
	say "[We] don't need to cut [regarding the second noun][those]." instead.
	

Chapter 4 - Loosening

Loosening it with is an action applying to two things.

Understand "loosen [something] with/using [something preferably held]" as loosening it with.
Understand "screw [something] with/using [something preferably held]" as loosening it with. [* "unscrew" is a synonym to "screw" so using "screw" here gives us "unscrew" automatically.]
Understand "turn [something] with/using [something preferably held]" as loosening it with.
Understand "unfasten [something] with/using [something preferably held]" as loosening it with.

Check loosening with:
	say "[The second noun] [aren't] [if the second noun is plural-named]suitable tools[otherwise]a suitable tool[end if] for that." instead.
	
Does the player mean loosening something with the noun:
	it is very unlikely.


Chapter 5 - Playing

Playing is an action applying to one thing.

Understand "play [something preferably held]" as playing.
Understand "play with [something preferably held]" as playing.

Check playing (this is the block playing rule): [* The rule is named so that it can be conditionally ignored when playing the flute.]
	say "[The noun] [are] not a game or a musical instrument." instead.


Chapter 6 - Repairing

Repairing is an action applying to one thing.

Understand "repair [something]" as repairing.

Understand the commands "fix" and "mend" as "repair".

Check repairing:
	say "[The noun] [are] beyond repair." instead.


Chapter 7 - Washing

Washing it with is an action applying to two things.

Understand "wash [something] with/using/in [something]" as washing it with.
Understand "rub [something] with/using/in [something]" as washing it with.
Understand "rub [something preferably held] on/to/against [something]" as washing it with (with nouns reversed).

Understand the commands "clean", "dust", "polish", "scrub", "shine" and "wipe" as something new.
Understand the commands "clean", "dust", "polish", "scrub", "shine" and "wipe" as "wash". [* These commands were originally synonymous to "rub" which would sometimes make the parser guess the intention wrong. Something like >CLEAN MYSELF would make it think that the player wants to rub themselves against something. Changing the verbs to point to the "wash" command makes them act more logically.]

Check washing a clean thing with:
	say "[The noun] [are] clean enough already." instead.
	
Check washing a dirty thing with: 
	say "There's not much to be gained by cleaning [the noun]." instead.
	
Does the player mean washing something with the noun:
	it is very unlikely.


Chapter 8 - Watering

Watering it with is an action applying to two things.

Understand "water [something] with/using/from/in [something]" as watering it with.
Understand "pour [something] on [something]" as watering it with (with nouns reversed).
Understand the command "wet" and "moisten" and "douse" and "soak" as "water".

Check watering something with:
	say "[The second noun] [aren't] a water source." instead.
	
Does the player mean watering something with the noun:
	it is very unlikely.


Part 3 - Out of world

Chapter 1 - About

Requesting story information is an action out of world.

Understand "about" and "info" and "help" and "credits" as requesting story information.

Carry out requesting story information:
	say "[italic type][Story title][roman type] was written for the Shufflecomp event organized by Sam Kabo Ashwell and released first on May 13th 2014 under the pseudonym 'Karly Di Caprio'. The story was inspired by the song [italic type]Equivalencies[roman type] by King Missile, suggested by Carl Muckenhoupt. The cover art was adapted from a photograph by Mykl Roventine.
	
Beta testing by Andrew Schultz, Christopher Conley and Marius Müller. Thanks to their efforts the story has improved considerably since the first revision.

For technical credits command VERSION.

Your actions can lock yourself out of optional puzzles, but you should always be able to reach the winning ending, no matter what you do. If you get stuck, command HINT for assistance.

Hate the first person viewpoint? Change it into second person by commanding SECOND PERSON[if the story viewpoint is second person singular] or go back to first person by commanding FIRST PERSON[end if]."

After printing the banner text:
	say "ABOUT for more information[paragraph break]".
	

Chapter 2 - Person

Changing to second person is an action out of world. [* This turned out to be a good feature to add. Some people really dislike any viewpoint that isn't second person singular.]

Understand "second person" and "2nd person" as changing to second person.

Check changing to second person when the story viewpoint is second person singular:
	say "The story is already being told in second person. To change back to first person, command FIRST PERSON." instead.

Carry out changing to second person:
	now the story viewpoint is second person singular;
	say "The story is now told in second person. To change back command FIRST PERSON."


Changing to first person is an action out of world.

Understand "first person" and "1st person" as changing to first person.

Check changing to first person when the story viewpoint is first person singular:
	say "The story is already being told in first person. To change to second person, command SECOND PERSON." instead.

Carry out changing to first person:
	now the story viewpoint is first person singular;
	say "The story is now told in first person. To change back command SECOND PERSON."
	

Chapter 3 - License

Requesting the license is an action out of world.

Understand "license" and "lisense" and "lisence" as requesting the license.

Carry out requesting the license:
	say the license. [* The "say the license" phrase is defined in the beginning of the source text.]
	

Book 5 - Sparkling

Part 1 - Counterparts

Equivalence relates one thing to another. The verb to equal means the equivalence relation.

A thing can be primary or secondary. A thing is usually primary.

Definition: A thing is understood if it equals a familiar thing. [* "Familiar" is a property provided by the Epistemology extension.]


Part 2 - Actions

Chapter 1 - Changing into

Changing it into is an action applying to two visible things. [* This is one of the most counterintuitive syntaxes in Inform. Saying that the action applies to visible things does not necessarily mean that the player must see them; it only removes the touchability requirement. The changing into action must apply to visible things because firstly being able to touch them is not a requirement and secondly the second noun is always out of play. Without the "visible" modifier the parser would always show a "you can't reach it" error.]

Understand "change [something] into/to [any thing]" as changing it into.
Understand "turn [something] into [any thing]" as changing it into.

Understand the command "sparkle" as "change".

First check changing into when the noun is the second noun: [* This (and the next one) must be a "first check" rule, otherwise the more specific "check ... when the noun does not equal the second noun" takes precedence.]
	say "[The noun] [are] already [a noun]." instead.

First check changing yourself into something:
	try changing yourself vaguely into instead.

Check changing into when the noun does not equal the second noun:
	say "[A second noun] [are] not the true nature of [the noun]." instead.
	
Check changing into when the noun equals the second noun and the second noun is unfamiliar:
	say "[We] [haven't] had that revelation yet. [We] must meditate to find that information." instead.
	
Carry out changing into:
	if the noun is part of something (called the keeper):
		now the second noun is part of the keeper;
	otherwise if the second noun is the dog and the holder of the noun is the player:
		now the dog is in the holder of the player;
	otherwise if the second noun is the dog and (the noun is on a portable supporter or the noun is in a portable container):
		now the dog is in the location;
	otherwise:
		now the second noun is in the holder of the noun;
	remove noun from play;
	set pronouns from the second noun. [* Changing things into other things is, of course, smoke and mirrors. What actually happens is that the original thing is removed from play and the new thing appears in its place. The player might then refer to the new noun using a pronoun (>CHANGE DOG INTO FLUTE. TAKE IT.) so we'll set the pronoun manually.]
	
Report changing into:
	say "[The noun] [sparkle] for a brief moment before changing into [a second noun]."

Does the player mean changing something into when the noun equals the second noun and the noun equals a familiar thing:
	it is very likely.

Does the player mean changing something into when the noun is the second noun:
	it is unlikely.


Chapter 2 - Changing vaguely into

[Changing into without specifying the second noun is sufficiently different action that a separate action is reasonable.]

Changing it vaguely into is an action applying to one visible thing.

Understand "change [something]" as changing it vaguely into.

First check changing yourself vaguely into:
	say "[We] can't change [ourselves] into anything. [We] certainly [don't] know [our] true nature." instead.

Check changing vaguely into when noun equals nothing or the noun equals an unfamiliar thing:
	say "[We] [don't] know the true nature of [the noun]." instead.
	
Carry out changing vaguely into:
	try changing the noun into a random thing that equals the noun.
	
Does the player mean changing vaguely into: it is likely.


Chapter 3 - Changing into unknown

[This action is only for catching commands where in place of the second noun the command has text that doesn't match any object in the story dictionary.]

Changing it into unknown is an action applying to one visible thing and one topic.

Understand "change [something] into [text]" as changing it into unknown.

Check changing something into unknown when the noun is understood:
	say "That is not the true nature of [the noun]." instead.
	
Check changing something into unknown:
	try changing the noun vaguely into instead.


Chapter 4 - Meditating

Meditating is an action applying to nothing.

Understand "meditate" as meditating.

The meditating action has a list of things called the new revelations.

Carry out meditating:
	now new revelations is {};
	repeat with X running through seen primary things:
		if X equals an unfamiliar thing (called the counterpart):
			add X to new revelations;
			now X is familiar;
			now the counterpart is familiar.
			
Report meditating when the number of entries in new revelations is not 0:
	say "Meditation revealed the following truth[if the number of entries in new revelations is greater than 1]s[end if]:[paragraph break]";
	repeat with item running through new revelations:
		say "  [item] [equal] [random thing that equals the item][line break]".

Report meditating when the number of entries in new revelations is 0:
	say "Meditation reveals no additional information about the nature of existence."

After meditating (this is the memories while meditating rule):
	remember; [* The "to remember" phrase is defined in the Memories chapter.]
	continue the action.
		
Last report meditating when the number of entries in new revelations is not 0:
	instruct about "changing into".


Chapter 5 - Thinking

Instead of thinking:
	try examining information about the nature of the universe.
	
Understand "remember" and "recall" as thinking.


Part 3 - Inventory

Chapter 1 - Inventory details

[This rule prints the counterpart of an item whose true nature we have learned when the player is taking inventory.]

Rule for printing inventory details of an understood thing (called item):
	if the item equals something (called the counterpart):
		say " (which [regarding the item][equal] [counterpart])".


Chapter 2 - Information about the nature of the universe

The information about the nature of the universe is part of yourself. It is clean and proper-named.

Understand "info" and "insight" as the information about the nature of the universe.

Understand "think about [information about the nature of the universe]" as examining. [* I'm usually wary of creating grammar that matches only single items because the "that noun didn't make sense in this context" error is usually confusing when the command uses some other item instead, but this is one of the rare cases where it's appropriate.]

To decide which number is the amount of revelations:
	let revelations be 0;
	repeat with item running through seen primary understood things:
		increment revelations;
	decide on revelations.

Check examining information about the nature of the universe when the amount of revelations is 0:
	say "[We] have no information about the nature of the universe at the moment.[paragraph break]";
	instruct about "meditate instead"; [* An extra hint to MEDITATE if the player hasn't done that yet.]
	stop the action.

Instead of examining information about the nature of the universe when the amount of revelations is greater than 0:
	say "Meditation has revealed the following truth[if the amount of revelations is greater than 1]s[end if]:[paragraph break]";
	repeat with item running through seen primary things:
		if the item equals a familiar thing (called the counterpart):
			say "  [item] [equal] [counterpart][line break]";
	if the Garden is unvisited and the dog is in the garden: [* Because changing things is such an important (and non-standard) command, it's best to give a reminder if the player hasn't remembered to use it yet. Similarly there's a reminder for the meditate command later on.]
		say line break; [* This will cause an extra line break if the player thinks more than once before entering the garden, but fixing it would be too much work for such a minor issue.]
		instruct about "remind changing".
			
Before doing something other than examining to the information about the nature of the universe:
	say "[We] can only examine the information, nothing else.";
	stop the action.

After taking inventory when the amount of revelations is greater than 0 (this is the note information after taking inventory rule):
	say "[We] have some information about the nature of the universe."

Instead of taking inventory when the player has nothing and the amount of revelations is greater than 0:
	follow the note information after taking inventory rule. [* We can just execute the other rule instead of repeating the same text.]
	

Part 4 - Memories

[The Table of Memories contains two columns: The text of a memory that meditating triggers, and a rule that is checked to see whether the player is far enough in the story that a new memory can be revealed to them. The check is in place to prevent the player from just typing >MEDITATE repeatedly to get all the memories in one go.]

Table of Memories
memory	check
"'What do you seek?'

'I seek the truth, shifu.'

She hit [us] on the fingers with the head of her cane, like many times before.

'You say you seek the truth, but only lies come out your own mouth. What do you seek?'"	the first memory rule
"'What do you seek?'

'I seek power, shifu.'

There is no slap on the fingers this time."	the second memory rule
"'The Universe has shown you some of its secrets,' she says, casually turning a flower into a guitar, as if to underline a point. 'But the key to true enlightenment is to observe the Pattern and to understand it.'"	the third memory rule
"'Leave everything you have and journey east. Climb on top of Mount Shanshan where you will find a shrine. By this shrine you shall contemplate about the Pattern and if you have understood it, you shall understand the Universe itself.'"	the fourth memory rule

This is the first memory rule:
	rule succeeds. [* The first memory is triggered during the first time the player meditates so the rule always succeeds.]
	
This is the second memory rule:
	if the fish is seen or the glove is seen:
		rule succeeds.
	
This is the third memory rule:
	if the sanitary napkin is seen:
		rule succeeds.
	
This is the fourth memory rule:
	if the sausage is seen:
		rule succeeds.
	
To remember:
	if the Table of Memories is not empty:
		repeat through the Table of Memories:
			follow the check entry;
			if rule succeeded:
				say "[italic type][memory entry][roman type][paragraph break]";
				say "[one of]The memory fades and the mind is silent.[or]The memory fades and [we] [are] ready to learn.[or]Finally [we] push aside the distracting memories.[or]The memory ends and [we] slip deeper into the meditative state.[stopping]";
				blank out the whole row;
			break. [* We only check for the first non-empty row, so we can break out of the loop immediately after the first iteration.]
	

Book 6 - Instructions

[The instruction system merely picks the instruction's text from a table, prints it and finally removes it to make sure it won't be repeated.]

Table of Instructions
id	info
"meditating"	"Find a quiet place to MEDITATE."
"meditate instead"	"Find a quiet place and MEDITATE."
"changing into"	"With this information you can CHANGE things INTO their counterpart identities. You can also THINK to recall previously learned information."
"repeat meditating"	"You can MEDITATE again to see if new information is available."
"remind changing"	"You can now CHANGE these things INTO their counterpart identities."

To instruct about (name - text):
	sort the Table of Instructions in id order; [* There's no practical reason to sort the table, but Inform 6L02 has a bug (#1255) related to empty rows in tables that would cause the story to crash in certain situations. Sorting the table moves the empty rows to the bottom of the table which avoids the bug.]
	if there is an id of name in the Table of Instructions:
		choose the row with id of name from Table of Instructions;
		say "[italic type]([info entry])[roman type][line break]";
		blank out the whole row.


Book 7 - Achievements

[The achievement system is provided by the extension Achievements by Juhana Leinonen. The Table of Achievements contains the achievement name, its description and a rule that determines the condition when the achievement should be awarded. The achievements that don't have a validation rule are awarded manually.]

Use persistent achievements. [*An option in the Achievements extension; saves unlocked achievements to an external file and loads them when play begins.]

Table of Achievements
achievement	description	validation	awarded
"Animal Rescue"	"Didn't leave the dog trapped in the dumbwaiter."	animal rescue achievement rule	false
"Art Collector"	"Took a stone statue with you in the cable car, for no reason at all."	statue achievement rule	false
"Clean Dog"	"Washed the dog."	clean dog achievement rule	false
"Clown Dog"	"Put some lipstick on the dog."	clown dog achievement rule	false
"First Guess"	"Figured out the answer to the Master's question on the first try."	--	false
"Full Belly"	"Fed the dog."	full belly achievement rule	false
"Not a Drop"	"Changed the fish into a tornado without getting wet."	--	false
"Ride with a Friend"	"Took the dog with you in the cable car to the mountain top."	loyal friend achievement rule	false
"Veterinarian"	"Cured the dog."	veterinarian achievement rule	false
"Wet Dog"	"Managed to get the dog wet."	--	false

This is the animal rescue achievement rule:
	if a statue is in the right dumbwaiter and the dog is not in the left dumbwaiter and the player can see the dog:
		rule succeeds.
	
This is the statue achievement rule:
	if a statue is in the cable car:
		rule succeeds.
	
This is the clean dog achievement rule:
	if the player can see the clean dog:
		rule succeeds.
	
This is the clown dog achievement rule:
	if the dog is lipsticked and the player can see the dog:
		rule succeeds.
	
This is the full belly achievement rule:
	if the dog is satisfied:
		rule succeeds.
	
This is the loyal friend achievement rule:
	if the dog is in the cable car and the cable car is in the Mountain top:
		rule succeeds.
	
This is the veterinarian achievement rule:
	if the dog is well:
		rule succeeds.
	

Book 8 - Hints

[The hint system is dead simple: Each report rule checks if the player has done the next step required to advance in the game, and if not, shows a hint towards how to achieve that goal. "Stop the action" prevents the rules from printing multiple hints at the same time.]

Hinting is an action out of world.

Understand "hint" and "hints" as hinting.

Report hinting for the first time:
	say "The HINT command gives you more and more explicit tips on how to solve the puzzles every time you use it. Try to avoid using it unless you're really stuck.
	
The hint system does not include hints for any optional puzzles.
	
Type HINT again for your first tip.";
	stop the action.

Report hinting:
	if the Engine room is unvisited or the Hiking path is unvisited:
		say "[one of]Explore the map: u[or]There are locations that you haven't visited yet. U[stopping]se compass directions like EAST and SOUTH to move around. If your system supports a status line (a black bar on the top of the screen) it shows the directions of unvisited locations in capitalized letters.";
		stop the action.
		
Report hinting:
	if the flute is unfamiliar: 
		say "[one of]You need to get rid of the dog.[or]When you first try to open the gate, you're given a hint of what to do.[or]You need to find a quiet place to meditate.[or]Command MEDITATE in a location that is quiet.[or]Go to the hiking path and command MEDITATE.[stopping]";
		stop the action.
		
Report hinting:
	if the Garden is unvisited:
		say "[one of]Meditation reveals things that can be changed into other things.[or]This time meditation revealed that a dog can be changed into a flute.[or]Command CHANGE DOG INTO FLUTE at the hotel gates.[or]When the dog has been turned into a flute, you can enter the garden.[or]Command CHANGE DOG INTO FLUTE and then ENTER GATES at the hotel gates.[stopping]";
		stop the action.
		
Report hinting:
	if the Upstairs corridor is unvisited:
		say "[one of]You can now explore the hotel.[or]There are locations that you haven't visited yet. Read the location descriptions carefully to see what exits are available. Don't worry about locked doors for now.[or][if the Hotel lobby is unvisited]You can enter the hotel by going SOUTH in the garden.[otherwise]You can go UP from the hotel lobby.[end if][stopping]";
		stop the action.
		
Report hinting:
	if the fish is unseen:
		say "[one of]Remember to EXAMINE everything mentioned in location descriptions.[or]The important thing you haven't examined is in the garden.[or]Go to the garden and EXAMINE POND.[stopping]";
		stop the action.
		
Report hinting:
	if the tornado is unfamiliar:
		say "[one of]Remember how meditating revealed deep secrets of the universe?[or]You need to have seen something before you can get a revelation about it.[or]Now that you've explored the map some more, MEDITATE again in a quiet place.[stopping]";
		stop the action.
		
Report hinting:
	if the fish is in the koi pond:
		say "[one of]Meditating revealed more useful information.[or]You can now turn the fish into a tornado.[or]Go to the garden and CHANGE FISH INTO TORNADO.[stopping]";
		stop the action.
		
Report hinting:
	if the key is in the koi pond:
		say "[one of]The tornado left something behind.[or]There's a key in the pond.[or]Go to the garden and TAKE KEY.[stopping]";
		stop the action.
		
Report hinting:
	if the door 102 is locked and the Hotel room is unvisited:
		say "[one of]There's something written on the key.[or]It appears the key fits to a door that leads to room 102.[or]Go upstairs and UNLOCK DOOR 102.[stopping]";
		stop the action.
		
Report hinting:
	if the Hotel room is unvisited:
		say "[one of]The room door is now unlocked and you can enter it.[or]Go upstairs and ENTER ROOM 102.[stopping]";
		stop the action.
		
Report hinting:
	if the sanitary napkin is not handled:
		say "[one of]There are important items in the hotel room.[or]You'll need the sanitary napkin.[or]Go to the hotel room and TAKE SANITARY NAPKIN.[stopping]";
		stop the action.
		
Report hinting:
	if the umbrella is unfamiliar:
		say "You need to MEDITATE again to gain insight on the nature of the universe.";
		stop the action.
		
Report hinting:
	if the doorknob is attached:
		say "[one of]A doorknob can be turned into an umbrella.[or]Getting rid of a doorknob would be a handy way to get through locked doors.[or]Where are there locked doors?[or]The hotel rooms have handles, not knobs.[or]There's a locked door in the lobby.[or]Go to the hotel lobby and TURN DOORKNOB INTO UMBRELLA.[stopping]";
		stop the action.
		
Report hinting:
	if the umbrella is attached:
		say "[one of]The doorknob has been replaced by an umbrella.[or]The door is still locked because the umbrella is holding the locking mechanism in place.[or]You need to take the umbrella out of the way.[or]Go to the hotel lobby and TAKE UMBRELLA.[stopping]";
		stop the action.
		
Report hinting:
	if the Dining hall is unvisited:
		say "[one of]You can now go through the door in the hotel lobby.[or]Go to the hotel lobby and go EAST.[stopping]";
		stop the action.
		
Report hinting:
	if the player is not carrying the flute:
		say "[one of]You need the flute now.[or][if the dog is somewhere]You need to change the dog into the flute and pick up the flute.[otherwise]Go to [the location of the flute] and pick up the flute.[end if][stopping]";
		stop the action.
		
Report hinting:
	if the right dumbwaiter is lowered and the bottle of gin is not handled:
		say "[one of]Have you noticed the dumbwaiters in the dining hall?[or]There could be something useful in the lowered dumbwaiter.[or]You need to get enough weight in the left dumbwaiter so that it will bring up the right one.[or]A grid door blocks the left dumbwaiter so you can't put anything big there directly.[or]The dumbwaiter door is jammed and there's no way to open it. You'll have to think of something else.[or]The door blocking the dumbwaiter is a grid door, that is, metal bars make a mesh in front of it. You can still put small enough things inside the dumbwaiter through the holes in the mesh.[or]Anything you can put in the dumbwaiter through the grid door has to be so small that it's not heavy enough to push the dumbwaiter down.[or]The dog would be big enough, but it certainly doesn't fit through the dumbwaiter door. Or does it?[or]The flute fits inside the dumbwaiter.[or]PUT FLUTE IN LEFT DUMBWAITER, then CHANGE FLUTE INTO DOG.[stopping]";
		stop the action.
		
Report hinting:
	if the bottle of gin is not handled:
		say "Now that the right dumbwaiter is up, you can TAKE THE BOTTLE.";
		stop the action.
		
Report hinting:
	if the diesel generator is dirty:
		say "[one of]The generator that runs the cableway must be cleaned for it to work.[or]You now have everything needed to clean the generator.[or]You need some tissue to rub the generator clean and a cleaning solution to wet the tissue.[or]Go to the engine room. POUR GIN ON SANITARY NAPKIN. CLEAN GENERATOR WITH SANITARY NAPKIN.[stopping]";
		stop the action.
		
Report hinting:
	if the diesel generator is switched off:
		say "You can now SWITCH ON DIESEL GENERATOR in the engine room.";
		stop the action.
		
Report hinting:
	if the monkey wrench is unfamiliar or (the glove is part of the toppled wardrobe and the cantaloupe is unfamiliar):
		say "Have you remembered to MEDITATE recently?";
		stop the action.
		
Report hinting:
	if the glove is not part of the toppled wardrobe and the cantaloupe is unfamiliar:
		say "[one of]There is an object somewhere that you should examine further.[or]The object you should examine is in the hotel lobby.[or]Go to the hotel lobby and EXAMINE WARDROBE.[stopping]";
		stop the action.
		
Report hinting:
	if the glove is part of the toppled wardrobe and the cantaloupe is familiar:
		say "You can now go to the hotel lobby and CHANGE GLOVE INTO CANTALOUPE.";
		stop the action.
		
Report hinting:
	if the glove is not handled:
		say "[one of]Even though the cantaloupe is only half a cantaloupe, the glove should still be good enough.[or]CHANGE CANTALOUPE INTO GLOVE. TAKE GLOVE.[stopping]";
		stop the action.
		
Report hinting:
	if the cable car is locked:
		say "[one of]You should now be able to unblock the cable car door.[or]The cable car is attached to an iron bar and the iron bar is attached to the platform with bolts.[or]Change the sanitary napkin into a monkey wrench.[or]Go to the cable car platform and LOOSEN BOLTS WITH WRENCH.[stopping]";
		stop the action.
		
Report hinting:
	if the player is not in the cable car:
		say "[one of]The cableway is running and the cable car door is unlocked. You're ready to go.[or]Go to the cable car platform and ENTER CABLE CAR.[stopping]";
		stop the action.
		
Report hinting:
	if the location is not the Mountain top:
		say "[one of]The control panel in the cable car makes it go.[or]PULL LEVER.[stopping]";
		stop the action.
		
Report hinting:
	if the location is the Mountain top:
		say "[one of]You're there! Just step out the car.[or]GO OUTSIDE.[stopping]";
		stop the action.
	

Volume 3 - World

Book 1 - Intro

When play begins (this is the intro text rule):
	say "Several weeks of travel have brought [us] to Mount Shanshan. The last ride [we] was able to get was a goods truck to a small village at the base of the mountain. Then it was a long hike up the mountain along badly maintained roads and footpaths.
	
The road ends here at an abandoned cable car platform. The cableway leads directly to [our] destination. [We] must get it running, somehow."


Book 2 - Protagonist

The description of yourself is "[We] [are] weary from the travel, but [our] goal is so close there's no time to rest now."

Understand "you" and "yourself" as yourself.

Yourself is clean.

Instead of searching yourself:
	try taking inventory.
	
Instead of smelling yourself:
	say "The long journey has certainly left its mark on the personal hygiene department, but luckily there's no-one here to notice."
	
Instead of listening to yourself:
	say "That is solid advice [we] should remember more often."
	
Instead of sleeping:
	try examining yourself.


Book 3 - Map

Part 1 - Rooms

Chapter 1 - Cable car platform

The Cable-car platform is a room. "A rickety wooden platform is built on the edge of a cliff to serve as an station for a cable car ride up to the mountain. It overlooks a beautiful waterfall rumbling below.[if the diesel generator is switched on] The cableway is moving.[end if]

The road leads back east and the cableway's engine is in a shack just to the south."

The printed name of the Cable-car platform is "Cable car platform". [* The room's name is hyphenated to avoid clashes with the cable car object.]

Instead of meditating in the Cable-car platform when the player is not in the cable car or the cable car is open:
	say "The rumbling of the waterfall makes it impossible to meditate here."
	
Instead of listening to the Cable-car platform:
	try listening to the waterfall.
	
Instead of going nowhere from the Cable-car platform when the noun is west or the noun is southwest or the noun is northwest:
	say "That direction is blocked by the cliff edge."
	
Instead of going inside when the location is the Cable-car platform:
	say "(inside the cable car)[command clarification break]";
	try entering the cable car.
	

Section 1 - Cable car

A cable car is a container in platform. It is huge, closed, transparent, enterable, fixed in place. The cable car can be locked or unlocked. It is locked. "A cable car is docked to the platform." The description is "The cable car is large enough to comfortably fit about four passengers. The red paint coating is peeling away in large flakes and rust is corroding the body."

Understand "door" and "window" and "windows" as the cable car.

After examining the cable car when the cable car is locked:
	say "An iron bar attaches the car to the platform and at the same time locks the door."

Instead of entering or opening the locked cable car:
	say "The iron bar blocks the door from opening."
	
Before entering the closed cable car:
	say "(first opening the cable car door)[command clarification break]";
	silently try opening the cable car;
	if the cable car is closed:
		stop the action.

Instead of switching on the cable car:
	say "The cable car doesn't have a motor of its own. [We] need to get the cableway running."
	
Instead of pushing or pulling the cable car:
	say "[if the cable car is locked]The iron bar blocks the car from moving.[otherwise]The cable car swings minutely."
	
Instead of touching the cable car:
	say "The car's rusty chassis feels rough under touch."
	
Before going when the player is in the cable car and (the noun is east or the noun is south):
	say "(first leaving the cable car)[command clarification break]";
	if the cable car is closed:
		silently try opening the cable car;
	silently try exiting.
	
Instead of searching the cable car when the player is in the cable car: [i.e. >LOOK THROUGH WINDOW]
	say "[if the location is the Cable-car platform][We] can see the cable car platform on one side and the waterfall on the other[otherwise][We] have arrived at the mountain top[end if]. On the platform there's [the list of portable things in the Cable-car platform]."
	

Section 2 - Iron bar

A iron bar is part of the cable car. The description is "The iron bar is attached with bolts to the platform. It runs in front of the cable car door, locking it and keeping the car in place."

Definition: the iron bar is fixed if the cable car is locked.

Check taking the iron bar:
	say "The iron bar is attached to the cable car and to the platform with large bolts." instead.

Instead of taking off the iron bar: [* This action is actually "taking off" as in removing worn clothing, but "remove" and "take off" are reasonable commands to anticipate.]
	try taking the iron bar.

Instead of attacking or pulling or pushing or turning or opening the iron bar:
	say "It's attached with large bolts. It can't be removed without tools." instead.
	
Check cutting the iron bar:
	say "The only thing that could cut the iron bar would be a blowtorch." instead.
	
Instead of loosening the iron bar with something:
	try loosening the bolts with the second noun.
	
Instead of unlocking the iron bar with the monkey wrench:
	say "(by loosening the bolts with the monkey wrench)[command clarification break]";
	try loosening the bolts with the monkey wrench.
	

Section 3 - Bolts

The bolts are part of the iron bar. The bolts are plural-named. The description is "Large bolts attach the iron bar to the platform." 

Understand "large" and "bolt" and "nut" and "screw" and "screws" as the bolts.

Check loosening the bolts with something:
	say "[The second noun] [aren't] a suitable tool for loosening the bolts." instead.
	
Instead of loosening the bolts with the monkey wrench when the player has the glove:
	if the player is not wearing the glove:
		say "(first wearing the glove)[command clarification break]";
		now the player wears the glove;
	say "With the gloved hand holding the nuts opposite the bolts in place [we] [are] able to unscrew the bolts and free the car.";
	now the cable car is unlocked;
	remove the bolts from play;
	remove the iron bar from play.

Check loosening the bolts with the monkey wrench when the player does not have the glove:
	say "[first time][We] put the monkey wrench on a bolt, adjust it to fit and turn. The bolt snaps with a cloud of rust flakes and starts to turn free. [only]The nut on the other side turns with the bolt. [We] try to hold the nut still but can't get a good grip; [we] need a glove or something."  instead.
	
Check turning the bolts:
	say "[We] need a proper tool to loosen the bolts." instead.
	
Instead of turning the bolts when the player carries the monkey wrench:
	say "(with the monkey wrench)[command clarification break]";
	try loosening the bolts with the monkey wrench.

Instead of pulling or pushing or opening or taking or taking off the bolts:
	try turning the bolts.
	
Instead of cutting the bolts:
	try cutting the iron bar.
	
Instead of unlocking the bolts with:
	say "(loosening the bolts with [the second noun])[command clarification break]";
	try loosening the bolts with the second noun.

Test bolts with "test room/get napkin/meditate/gonear bolts".


Section 4 - Shack

The shack is scenery in the Cable-car platform. The description is "The shack houses the engine that runs the cableway."

The shack is huge.

Instead of entering the shack:
	try going south.
	
Check opening the shack:
	say "[We] can just walk in." instead.


Section 5 - Car controls

The control panel is in the cable car. It is fixed in place. The initial appearance is "[description of the control panel]".

Understand "controls" and "lever" as the control panel.

The description of the control panel is "[if the player is in the cable car]A control panel has been set to the wall opposite the door. It has a lever that most likely gets the thing moving.[otherwise]It's hard to see through the dirty windows but it seems like there's a simple control panel inside."

Instead of pulling or pushing or switching on the control panel when the diesel generator is switched off:
	say "Nothing happens. [We] must get the engine that moves the cableway running first."
	
Instead of pulling or pushing or switching on the control panel:
	say "The mechanism on top of the car latches on to the cableway and the car jolts on moving.
	
After a brief but scenic ride the car stops.";
	now the cable car is closed;
	now the cable car is in the Mountain top;
	now the control panel is scenery;
	try looking.
	
Instead of pulling or pushing or switching on the control panel when the cable car is in the Mountain top:
	say "[We] [are] not going to go back now that [we] finally got here."
	
Instead of turning the control panel:
	say "There are no knobs, only a lever."
	
Before exiting when the player is in the cable car and the cable car is closed:
	say "(first opening the cable car door)[command clarification break]";
	now the cable car is open.
	
Instead of going outside when the player is in the cable car:
	try exiting.


Section 6 - Platform

The wooden platform is scenery in the Cable-car platform. The description is "The wooden platform serves as a docking and embarkment area for the cable car."

Instead of smelling the wooden platform:
	say "It smells of old wood."


Chapter 2 - Engine room

The Engine room is south of Cable-car platform. The description is "The wooden shack houses a large diesel generator that moves the cableway. The shack's walls are rotten and patchy. The exit leads back out to the north."

Instead of meditating in the Engine room:
	say "The noise from the waterfall is somewhat muffled here, but it's still too loud to meditate."
	
Instead of meditating in the Engine room when the diesel generator is switched on:
	say "The diesel generator is far too loud to meditate here."

Instead of exiting when the location is the Engine room:
	try going north.


Section 1 - Diesel generator

The diesel generator is a dirty device in the Engine room. "[if switched on]The diesel generator is running loudly, turning the cableway.[otherwise]The diesel generator looks like it hasn't been used in quite some while." The diesel generator is fixed in place.

Understand "engine" and "cylinder" and "cylinders" and "machine" as the diesel generator.
	
Check switching on the dirty diesel generator:
	say "The engine coughs a few times but refuses to start. [one of]A quick troubleshooting indicates that t[or]T[stopping]he cylinders are so dirty that the engine can't run. They need to be cleaned first." instead.

Check washing the clean diesel generator with:
	say "It's quite clean already." instead.
	
Check washing the diesel generator with the gin:
	say "The gin by itself wouldn't be enough to clean the cylinders. [We] need something to rub it clean with." instead.

Check washing the diesel generator with:
	say "[The second noun] [aren't] suitable for cleaning the cylinders with." instead.
	
Check washing the dirty diesel generator with the dry sanitary napkin:
	say "The sanitary napkin would be perfect for cleaning the cylinders, but the grit is too sturdily stuck. [We] need something to soften it first." instead.
	
Check washing the dirty diesel generator with the watered sanitary napkin:
	say "The dirt is stuck to the parts too hard. [We] need something stronger than water to clean it." instead.
	
Check washing the clean diesel generator with the sanitary napkin:
	say "[We] already did that. The generator looks fine." instead.
	
Instead of washing the diesel generator with the gin when the player is carrying the sanitary napkin:
	say "[We] pour the gin on the cylinders and with the help of the sanitary napkin rub the moving parts clean. After spending some considerable amount of additional tinkering the generator starts to look like it could work again.";
	remove the gin from play;
	clean the generator.
	
Instead of watering the diesel generator with the gin:
	say "(washing the diesel generator with the gin)[command clarification break]";
	try washing the diesel generator with the gin.
	
Instead of washing the diesel generator with the alcohol-soaked sanitary napkin:
	say "Cleaning the generator is hard work, but after a while the moving parts look clean enough. After spending some considerable amount of additional tinkering the generator starts to look like it could work again.";
	clean the generator.
	
To clean the generator:
	now the sanitary napkin is dirty;
	now the sanitary napkin is dry;
	now the diesel generator is clean.

Instead of listening to the generator when the diesel generator is switched on:
	say "The generator is running with considerable noise."
	
After switching on the diesel generator:
	say "The generator makes some suspicious noises but then comes to life. The cableway starts moving again."

After switching off the diesel generator:
	say "The generator shuts down and the cableway stops."

Check repairing the dirty diesel generator:
	say "It isn't as much broken as it is dirty." instead.
	
Check repairing the clean diesel generator when the diesel generator is switched off:
	say "It should be working now, just need to switch it on." instead.

Check repairing the clean diesel generator when the diesel generator is switched on:
	say "It's running, so it's obviously in no need of fixing." instead.


Section 2 - Walls

The shack walls are scenery in the Engine room. The description is "Light is shining through the wall boards." 

The shack walls are plural-named.

Understand "wall" and "boards" as the shack walls.


Chapter 3 - Hotel gates

The Hotel gates are east of Cable-car platform. "[We] [are] at the gates of an old country-style mansion that has at some point served as a hotel. At the moment there are no signs of it being in use. The garden has overgrown, there are no cars about and the building itself is in a dilapidated state.

The hotel gates are to the north, the cable car platform to the west, and the hiking path leading back down the mountain is to the east."

Before going to the Hotel gates for the first time:
	say "[We] walk the road back to an old hotel [we] passed on the way here."

After deciding the scope of the player when the location is the Hotel gates: [* The two things the player can see through the gates in the other room are the dog and the flute. Here we put them in scope so that the player can interact with them.]
	if the dog is in the Garden:
		place the dog in scope;
	if the flute is in the Garden:
		place the flute in scope.
		
Rule for reaching inside Garden: [* Trying to do something through the gate that requires touch is automatically blocked. The only exception is feeding the dog through the gate, otherwise we'll show a message depending on whether the gate is open or not.]
	if the current action is giving something to the dog:
		allow access;
	if the gate-door is closed:
		say "[if the location of the noun is the Garden][The noun][otherwise][The second noun][end if] [are] in the garden behind the gate, beyond [our] reach.";
	otherwise:
		say "[We] [have] to go closer, into the garden to the north.";
	deny access.
	
Every turn when the location is the Hotel gates (this is the mark things seen through the gates rule): [* The Epistemology extension marks things seen only when the player is in the same location with them, so we have to do that manually when the player can see the dog or the flute through the gate.]
	now the dog is seen;
	if the flute is in the Garden:
		now the flute is seen.
	
After looking in the Hotel gates when the angry dog is in the Garden:
	say "An angry dog is barking at [us] behind the gate."
	
Instead of listening to the location when the player can see the angry dog:
	say "All [we] hear is the dog barking."


Section 1 - Gates

The gate-door is a scenery door. The gate-door is north of Hotel gates and south of Garden. The printed name of gate-door is "gate". The description of the gate-door is "Large iron gates block the entrance to the hotel. They don't seem to be locked."

Understand "gate" and "gates" as the gate-door.

Check opening the gate-door when the player can see the barking dog:
	say "It might not be wise to open the gate when the angry dog is on the other side[first time][if the flute is unfamiliar].
	
[We] need to do some thinking[end if][only].[paragraph break]";
	if the flute is unfamiliar:
		instruct about "meditating";
	stop the action.
	
After examining the barking dog when the flute is unfamiliar for the first time:
	say "There must be a way in.[paragraph break]";
	instruct about "meditating".
	
Instead of pushing or pulling the gate-door:
	try opening the gate-door.
	
Check climbing the gate-door:
	say "That seems rather unnecessary, considering the gate isn't locked." instead.
	
Check locking the gate-door with something:
	say "The gate doesn't have a lock." instead.

Check unlocking the gate-door with something:
	say "The gate is not locked." instead.
	

Chapter 4 - Garden

The Garden is a room. "Weeds have taken over the garden, which seems to have been designed in a distinctly Japanese style. It must have been very beautiful in its heyday.

The hotel entrance is to the north and the gates to the south."

Instead of going inside from the Garden:
	try going north.

Test garden with "e/e/meditate/w/change dog/n/get flute".


Section 1 - Koi pond

The koi pond is a container. The koi pond is in the Garden. "In the center of the garden is a murky pond." The description is "[if full]The pond is full of muddy water, but [we] can see a fish, probably a koi, swimming around in it.[otherwise]There's some water still left in the pond.[end if]".

The koi pond is fixed in place.
The koi pond can be full or empty. The koi pond is full.

The printed name of the koi pond is "pond water". [* The object's name could also be "pond water", but the change was made so late that I didn't want to change every instance of it in the source text.]

The koi pond is privately-named. [* This makes sure "koi" used alone refers to the fish only.]
Understand "pond" and "koi pond" and "pool"  and "koi pool" as the koi pond.
Understand "murky" and "water" as the koi pond.

Instead of drinking or tasting the koi pond:
	say "The water looks too dirty to be safe to drink."

Before examining the koi pond for the first time:
	move the fish to the koi pond;
	now the fish is seen.
	
Check watering something with the koi pond:
	say "There's no need to wet [the noun]." instead.
	
Does the player mean watering something with the koi pond:
	it is very likely.
	
Does the player mean washing something with the koi pond:
	it is very likely.

Check entering the koi pond:
	say "It's not a swimming pool." instead.
	
Instead of searching the koi pond:
	try examining the koi pond.
	
Instead of inserting something into the koi pond:
	say "(washing [the noun] in the pond)[command clarification break]";
	try washing the noun with the koi pond.
	
Check taking the koi pond:
	say "[We] can't just carry it around." instead.
	

Section 2 - Fish

The fish is a scenery thing. The description is "The koi swims around in the pond, looking a bit lonely."

The fish equals the tornado. The tornado is secondary.

Understand "koi" as the fish.

Instead of taking the fish:
	say "The fish is too fast for [us] and slips away at every attempt to catch."
	
Instead of changing the fish into the familiar tornado:
	say "The fish starts to sparkle under the water. It soon disappears and a tall water spout forms in its place. The spout makes it out of the pond and manages to travel a meter or two before dissipating and releasing the water as a rain on the garden[if the player is carrying the open umbrella]. Thankfully [we] have the umbrella and [we]['re] spared of getting wet[otherwise], getting [our] clothes wet[end if][if the dog is in the garden]. The dog looks at [us] angrily and shakes his fur dry[end if][if the dirty dog is in the garden]. Too bad it wasn't enough water to clean him[end if].
	
[We] look in the now almost empty pond and see a glint of metal. There seems to be a key stuck in the mud. Some hotel guest must have dropped it there by accident.[paragraph break]";
	if the player is carrying the open umbrella:
		award the "Not a Drop" achievement;
	if the dog is in garden:
		award the "Wet Dog" achievement;
	remove the fish from play;
	now the koi pond is empty;
	move the room key to the koi pond.
	
Instead of eating or tasting the fish:
	say "[We] would have to catch it, kill it, gut it, and find a way to cook it. That's just too much work."
	
Check smelling the fish:
	say "[We] can't smell it when it's below the surface." instead.
	
Instead of pulling or pushing or turning the fish:
	say "[We] can't do that."
	
Check playing the fish:
	say "The fish doesn't seem very playful." instead.
	
First check watering the fish with:
	say "It's quite wet already." instead.
	
Check touching the fish:
	say "The fish is too fast for [us] to touch." instead.
	

Section 3 - Room key

The room key is a small thing. "A key is stuck in the mud on the bottom of the pond." The description is "A wooden key fob is attached to the key. Water has turned it almost illegible but [we] can still make out the number '102'."

Understand "fob" and "wooden" as the room key.

Does the player mean unlocking something with the room key: 
	it is likely.
	
Does the player mean unlocking a door with the room key: 
	it is very likely.

Does the player mean locking something with the room key: 
	it is likely.

Test key with "test garden/x pond/meditate/turn fish into tornado/get key".


Section 4 - Weeds

The weeds are scenery in the Garden.

Understand "weed" as the weeds.

Instead of doing something with the weeds:
	say "The weeds aren't important."
	

Chapter 5 - Hiking path

The Hiking path is east of Hotel gates. "A scenic hiking path leads back down the mountain. [We] know it all too well, having walked it up here in the first place. The way back to the hotel is to the west."

Instead of going nowhere in the Hiking path:
	say "It is a lovely route, but [our] goal is in another direction."
	
[Remind the player that they can keep meditating after exploring. If the fish or the glove are known it means the player has explored enough to have seen them, but if their counterparts are unknown it means they haven't meditated since seeing them.]
Every turn when the player is in the Hiking path and (the fish is known or the glove is known) and the tornado is unknown and the cantaloupe is unknown:
	instruct about "repeat meditating".
	

Section 1 - Statues

A statue is a kind of thing. Understand "statue" and "statues" and "stone" as a statue. The description of a statue is always "The statue is not very tall and is carved from solid black stone.[if not handled] It's set here by the path as a decoration for passersby.[end if] This one depicts a [word number 1 in the printed name of the item described]."

A dragon statue is a statue. The dragon statue is in the Hiking path.
A lion statue is a statue. The lion statue is in the Hiking path.

The plural of a statue is notinuse. [* >X STATUES and so on should trigger disambiguation, not a "you can't use multiple nouns" error. Changing the plural of the kind removes the parser's grouping behavior and since the plural form is not used anywhere else we can set it to anything. (Note that "notinuse" is not an Inform keyword, it's just a random word. It could be anything else.)]

Before listing nondescript items when the location is the Hiking path and two statues are in the Hiking path and all statues are not handled:
	say "Two small stone statues depicting a lion and a dragon are greeting visitors on both sides of the path.";
	now all statues are not marked for listing.

Check pushing a statue when the noun is in the Hiking path:
	say "It would be easy to topple the statue, but [we] have no reason to do so."

After taking a statue for the first time:
	say "[We] lift [the noun] and hold it with both hands. It looked small, but it weighs a ton."

[The statues are too heavy to hold for longer than one turn. These rules enforce that and some special cases.]
Every turn when the player is carrying a statue (called the burden) and the current action is not taking a statue:
	say "[The burden] gets too heavy to hold and [we] have to drop it.";
	silently try dropping the burden.
	
Before taking a statue when the player is carrying a statue (called the burden):
	if the burden is not the noun:
		say "(first dropping [the burden])[command clarification break]";
		silently try dropping the burden.
		
Check going up when the location is the Hotel lobby and the player is carrying a statue:
	say "There's no way [we] lug the statue all the way up the stairs." instead.
	

Section 2 - Path

The path-scenery is scenery in the Hiking path. The printed name of path-scenery is "path". The description is "[the description of the Hiking path]".

Understand "path" and "road" and "route" and "hiking" as the path-scenery.

Instead of getting off the path:
	say "[We] have no intention to go wandering in the woods."


Chapter 6 - Hotel lobby

The Hotel lobby is north of Garden. "[first time]The view in the hotel lobby confirms that the establishment has been deserted for a long time. [only]The lobby has an abandoned reception desk, some sofas and dead house plants. There's a layer of dust everywhere.

There's a staircase to the north leading up and a [if the dining-hall door is closed]closed [end if]door leading east[if the dining hall is visited] to the dining hall[end if]."

Instead of going north when the location is the Hotel lobby:
	try going up.
	
Instead of exiting when the player is in the Hotel lobby:
	try going south.
	

Section 1 - Wardrobe

The toppled wardrobe is in the Hotel lobby. "A large wardrobe for coats has fallen over near the entrance." It is fixed in place. The description is "A wardrobe, presumably meant for storing casual visitors['] coats, has fallen over.[if the glove is part of the toppled wardrobe][paragraph break]A single leather glove has been pinned under the top corner of the wardrobe."

The wardrobe is huge.

Before examining the wardrobe for the first time:
	now the glove is part of the toppled wardrobe;
	now the glove is seen.
	
Instead of looking under the wardrobe when the glove is part of the wardrobe:
	say "A glove is pinned under the wardrobe."

Instead of opening the wardrobe:
	say "It's fallen over on its door. [We] can't open it."
	
Instead of entering the wardrobe:
	say "It's fallen over on its door and there's no way to enter it. Not that there would be any reason to do so."


Section 2 - Glove

The glove is a thing. The description is "[if the glove is part of the wardrobe]The brown leather glove is pinned under the toppled wardrobe.[otherwise]A part of the glove is cut off, but most of it is still intact. Wearing it won't be very fashionable, though."

The glove equals the cantaloupe. The glove is small and wearable.

Understand "brown" and "leather" as the glove.

Definition: the glove is pinned if it is part of the wardrobe.
Definition: the glove is loose if it is not pinned.

Check pulling the pinned glove:
	say "[We] give the glove a couple of good yanks but the wardrobe is too heavy and the glove doesn't move at all." instead.
	
Check taking the pinned glove:
	say "The glove is pinned under the wardrobe. [We] can't get it loose." instead.
	
Check cutting the pinned glove when the player does not carry the scissors:
	say "[We] don't have a suitable tool." instead.

Instead of cutting the pinned glove with the scissors:
	say 	"[We] carefully cut the glove loose. [We] didn't need to cut much, it's still perfectly usable as a glove.";
	now the player is carrying the glove.

Instead of cutting the pinned glove when the player has the scissors:
	say "(with the scissors)[command clarification break]";
	try cutting the glove with the scissors.

After smelling the glove:
	say "It smells like old leather."
	

Section 3 - Cantaloupe

The cantaloupe is a secondary thing. "The glove under the wardrobe has turned into a half a cantaloupe." The description is "It's half a cantaloupe."

Understand "half" and "canteloupe" and "cantaloup" and "cantalope" and "melon" and "fruit" and "food" as the cantaloupe.

Instead of changing the pinned glove into the familiar cantaloupe:
	say "[We] concentrate and focus on changing the glove. There's more resistance than usual, but finally the glove gives in. A cantaloupe appears in its place and half of it is immediately squashed under the wardrobe.";
	now the description of the cantaloupe is "The other half of the cantaloupe has been crushed by a wardrobe, after it had already been toppled. Deep.";
	now the cantaloupe is in the Hotel lobby;
	now the wardrobe is scenery.
	
Check eating the cantaloupe:
	say "Better not eat it. It looks like it has gone bad." instead.
	
Instead of tasting the cantaloupe:
	try eating the cantaloupe.
	
After smelling the cantaloupe:
	say "It smells sweet and rancid at the same time."  


Section 4 - Reception desk

The reception desk is scenery in the Hotel lobby. The description is "There's no-one behind the desk."

Instead of doing something other than examining or searching or looking under with the reception desk:
	say "It's not important."
	
Instead of searching or looking under the reception desk:
	say "There's nothing of use on or under the desk."


Section 5 - Staircase

The staircase is a scenery door. The staircase is up of Hotel lobby. The staircase is open, not openable. The description is "The staircase is creaky, but sturdy enough to carry [our] weight."

Understand "stairs" as the staircase.

Instead of climbing the staircase:
	try entering the staircase.
	

Section 6 - House plants

The dead house plants are in the Hotel lobby. The dead house plants are scenery and plural-named. The description is "The leaves have fallen off the plants and are now only dead branches. They're beyond resuscitation."

Understand "plant" and "houseplants" and "leaves" and "leaf" and "brances" and "branch" as the dead house plants.

Instead of doing anything other than examining with the dead house plants:
	say "The plants are not important."
	

Section 7 - Sofa

The sofa is a supporter in the Hotel lobby. It is enterable, huge, scenery and plural-named. The description is "The sofas weren't fashionable to begin with, but now they look doubly sad with a thick layer of dust on them."

Understand "couch" and "couches" and "sofas" as the sofa.

After entering the sofa:
	say "A cloud of dust rises into the air when [we] sit down."

Does the player mean entering the sofa:
	it is likely.
	

Section 8 - Dining hall door

The dining-hall door is a scenery door. The dining-hall door is east of Hotel lobby and west of the Dining hall. The dining-hall door is locked. The printed name of the dining-hall door is "door".

Check of opening the locked dining-hall door:
	say "[We] try the doorknob, but the door is locked." instead.
	
Instead of pushing or pulling the dining-hall door:
	try opening the dining-hall door.
	
Before opening the locked dining-hall door when the umbrella is attached:
	say "[We] pull on the umbrella, but it comes loose.";
	remove the umbrella. [* "To remove the umbrella" phrase is defined with the umbrella.]


Section 9 - Doorknob

The doorknob is part of the dining-hall door. The doorknob equals the umbrella. The description of the doorknob is "[if the doorknob is attached]The doorknob is a device for opening and closing the door.[otherwise]The knob used to be a part of the dining hall door."

Understand "knob" and "door knob" as the doorknob.

Definition: the doorknob is attached if it is part of the dining-hall door.

Instead of turning or pushing or pulling the attached doorknob:
	try opening the dining-hall door.
	
Check taking the attached doorknob:
	say "It's firmly attached to the door." instead.
	
After changing the doorknob into the attached umbrella: [* Testing for "attached doorknob" wouldn't work because at this stage it's not attached anymore. It has been replaced by the umbrella which in turn is attached to the door.]
	say "The doorknob sparkles and turns into an umbrella. The umbrella is now sticking out the door where the knob used to be."


Section 10 - Umbrella

The umbrella is secondary. The description of the umbrella is "[if the umbrella is attached]The umbrella is sticking out the door[otherwise]The umbrella has bright blue and red colors. It's [end if][if the umbrella is not attached and the umbrella is closed]closed[otherwise if the umbrella is not attached]open[end if]."

The umbrella can be open or closed. The umbrella is closed.
The umbrella can be openable. The umbrella is openable.

Definition: the umbrella is attached if it is part of the dining-hall door.

Check opening the attached umbrella:
	say "[We] can't open the umbrella when it's stuck in the door." instead.

To implicitly close the umbrella:
	say "(first closing the umbrella)[command clarification break]";
	silently try closing the umbrella.

Before entering the unlocked cable car when the umbrella is open:
	implicitly close the umbrella.
	
Before going north from the Garden when the umbrella is open:
	implicitly close the umbrella.
	
Rule for printing inventory details of the open umbrella:
	say " (open)";
	make no decision. [* Saying "make no decision" lets the the rule that prints the "(which equals doorknob)" text run next.]
	
Instead of taking or pulling the attached umbrella:
	say "[We] pull the umbrella out of the hole where the doorknob used to be.";
	remove the umbrella.
	
To remove the umbrella:
	say "[line break]The door's lock mechanism has nothing to support it anymore and falls apart. The door should be unlocked now.";
	now the player is carrying the umbrella;
	now the dining-hall door is unlocked.
	
Check turning the attached umbrella:
	say "It turns out the umbrella doesn't function as a doorknob." instead.
	
Check pushing the attached umbrella:
	say "It doesn't go in any further."


Chapter 7 - Dining hall

The Dining hall is a room. "A large dining hall full of empty tables is a sad sight. Some rays of light filter in through the dirty windows.

There's a pair of dumbwaiters on the farthest wall[if the crank is not loose] and a hand crank in the space between them[end if]."

Test dining with "test key/n/meditate/change doorknob/e".


Section 1 - Dumbwaiters

A dumbwaiter is a kind of container.
A dumbwaiter can be raised or lowered.
A dumbwaiter is always scenery.

Understand "pair" and "pair of" and "elevator" and "elevators" and "compartment" and "box" and "lift" and "lifts" and "dumbwaiters" as a dumbwaiter.

Understand "revealed" as a dumbwaiter when the item described is raised.

Definition: a dumbwaiter is stuck if the right dumbwaiter is lowered and the right dumbwaiter is empty.

Before examining a dumbwaiter:
	say "The dumbwaiters are an old elevator system for lifting food from the kitchen and then lowering dirty dishes back. They are small wooden compartments running inside the wall and supported by a rope.";
	if the left dumbwaiter is stuck:
		say "[line break]The single crank on the wall suggest[if the crank is loose]ed[otherwise]s[end if] that they are connected with a common rope and pulley system and lowering one will raise the other.";
	if the noun is lowered: [don't list contents]
		if the noun is the right dumbwaiter and the right dumbwaiter is stuck:
			say "[line break]There might be something in the dumbwaiter, but it's lowered beyond reach so it's impossible to know for sure.";
		otherwise:
			say "[line break][The noun] is lowered beyond reach.";
		stop the action.

Before doing something with a thing (called the item) when the item is in a lowered dumbwaiter (called the box):
	say "[The item] [are] in [the box], which is out of [our] reach at the moment.";
	stop the action.
	
A dumbwaiter called the left dumbwaiter is in the Dining hall. It is raised. 

After examining the left dumbwaiter:
	say "There's a closed grid door in front of the compartment."

Check entering a dumbwaiter:
	say "The dumbwaiters are too small for [us] to fit in." instead.
	
Check inserting something into a lowered dumbwaiter:
	say "[The second noun] is lowered down beyond reach." instead.
	
Check inserting a big thing into the left dumbwaiter:
	say "[The noun] [are] too big to fit through the grating." instead.

A dumbwaiter called the right dumbwaiter is in the Dining hall. It is lowered.

Instead of changing the flute into the dog when the flute is in the left dumbwaiter and the lion statue is not in the right dumbwaiter and the dragon statue is not in the right dumbwaiter:
	say "The flute sparkles and turns back into the dog. The dog seems a bit confused, but before he can orient himself his weight pushes the dumbwaiter down and the right dumbwaiter rises. There's a sausage on a plate and a bottle in the revealed compartment.
	
[We] can hear the dog barking somewhere below.";
	remove the flute from play;
	now the dog is in the left dumbwaiter;
	now the left dumbwaiter is lowered;
	now the right dumbwaiter is raised;
	now the plate is in the right dumbwaiter;
	now the bottle of gin is in the right dumbwaiter;
	now the sausage is seen.
	
Check pulling a dumbwaiter: [* Mainly for >RAISE DUMBWAITER.]
	say "[if the crank is loose][We] see no obvious way to operate the dumbwaiters manually.[otherwise]The crank on the wall seems to be the mechanism for operating the dumbwaiters." instead.

Check inserting a statue into the raised right dumbwaiter when something is in the right dumbwaiter:
	say "The statue doesn't fit in the dumbwaiter when there's something else in there." instead.
	
After inserting a statue into the raised right dumbwaiter:
	say "[We] put the statue inside the right dumbwaiter and its weight pushes the dumbwaiter down, raising the left one. The dog in the left dumbwaiter [if the dog is angry]starts barking the moment he sees [us][otherwise]sits there patiently[end if].";
	now the right dumbwaiter is lowered;
	now the left dumbwaiter is raised.

Instead of opening the left dumbwaiter:
	try opening the grid door.
	
Does the player mean inserting something into a raised dumbwaiter:
	it is likely.
	
Instead of taking a small thing when the noun is in the left dumbwaiter and the angry dog is in the left dumbwaiter: [* It's simplest if this is an instead rule, even though it's not semantically quite correct. We can't use an after rule and "when the noun is in the dumbwaiter" clause because the noun is no longer inside the dumbwaiter at that point.]
	say "[We] distract the dog with [our] left hand and quickly pick up [the noun] from the dumbwaiter.";
	now the player is carrying the noun.
	
Check taking a big thing when the noun is in the left dumbwaiter:
	say "[The noun] doesn't fit through the grid door." instead. 
	

Section 2 - Dumbwaiter door

The grid door is a part of the left dumbwaiter. The grid door can be open or closed. The grid door is closed. The description is "The grid door blocks the left dumbwaiter's [if the left dumbwaiter is raised]compartment[otherwise]elevator shaft[end if]. The holes in the grid are large enough to put something small into the elevator, but nothing very big will fit through."

Instead of opening or pulling or pushing or turning or attacking the grid door:
	say "The door is rusted stuck. It's unlikely that [we] can get it open."
	
Does the player mean opening the grid door:
	it is likely.


Section 3 - Dumbwaiter crank

The crank is scenery in the Dining hall. The initial appearance is "The broken crank is on the floor where [we] dropped it." [* The initial appearance will not be shown while the crank is scenery. When the crank comes loose and is placed directly in the room it's shown in the room description.]

The description of the crank is "[if loose]The crank was apparently used to raise and lower dumbwaiters in the dining hall. Now it's broken.[otherwise]The crank is placed so that it's evidently used to raise and lower the dumbwaiters."

Definition: The crank is loose if it is not fixed in place.

Instead of turning the fixed in place crank:
	say "The crank seems to be stuck and after applying some more force it snaps off into [our] hand. [We] place it down and curse [our] bad luck.";
	now the crank is not scenery;
	now the crank is not fixed in place.
	
Instead of turning the loose crank:
	say "The crank is broken. It will never turn anything again."


Section 4 - Dumbwaiter rope

The rope is scenery in the Dining hall. The description is "Ropes are tied to on top of both dumbwaiter compartments. They rise up to behind the wall where there must be some kind of pulley system." 

Understand "ropes" as the rope.

Check cutting the rope:
	say "Cutting the rope would break the dumbwaiter system and [we] don't want to do that." instead.
	
Check pulling the rope:
	say "[We] try to raise the dumbwaiter by pulling on the rope, but [we] just can't get enough force into it." instead.
	
Check climbing the rope:
	say "There's not enough space in the wall cavity for climbing." instead.
	
Check taking the rope:
	say "It's attached to the dumbwaiter system." instead.


Section 5 - Chopstick

The chopstick is in the left dumbwaiter. The description is "A single wooden chopstick. It's old and dusty, but looks unused." [* The chopstick's main function is to serve as a hint that it's possible to put things in the dumbwaiter through the grating. The downside is that the player might think that the dumbwaiter's only purpose is to hold the chopstick.]

Understand "chop" and "stick" as the chopstick.

The chopstick is small.

After taking the chopstick for the first time:
	say "[We] put a finger through one of the holes in the grid door, manage to reach the chopstick and pull it out."


Section 6 - Bottle of gin

The bottle of gin is a thing. The description is "There's still some gin left in the bottom of the bottle."

Understand "alcohol" and "booze" and "spirit" as the bottle of gin.

Check watering something with the bottle of gin:
	say "Better not waste what little is left of the gin." instead.

Does the player mean watering something with the bottle of gin:
	it is likely.
	
Instead of putting the bottle of gin on when the second noun is not a container and the second noun is not a supporter:
	try watering the second noun with the gin.

Instead of inserting the bottle of gin into when the second noun is not a container and the second noun is not a supporter:
	try watering the second noun with the gin.
	
Check drinking the bottle of gin:
	say "No, [we] must keep [our] senses sharp." instead.
	
Instead of tasting the bottle of gin:
	try drinking the bottle of gin.
	
Instead of eating the bottle of gin:
	say "(drink gin)[command clarification break]";
	try drinking the bottle of gin.
	

Section 7 - Plate

The plate is a portable supporter. The description is "The plate is tastefully decorated with a flower theme."


Section 8 - Sausage

The sausage is a thing on the plate. The sausage equals the scissors. The sausage is small.

Understand "salami" as the sausage. 
Understand "food" as the sausage.

The description is "[if edible]The sausage looks, if not exactly fresh, but edible enough.[otherwise]It's some kind of long salami-style sausage. Salt has preserved it comparably well, but it's still rancid enough to not be edible."

Check eating the inedible sausage:
	say "It's way past its best before date." instead.
	
Check eating the edible sausage:
	say "It's tempting, but shifu had [us] follow a vegetarian diet and a sudden move back to eating meat would probably upset [our] stomach." instead.
	
Instead of tasting the sausage:
	try eating the sausage.
	
Check giving the sausage to the fish:
	say "[We]['re] not much of a biologist, but [we]['re] quite sure that fish don't eat sausages." instead.
	
Check washing the inedible sausage with the koi pond:
	say "Washing the sausage itself wouldn't make it any more edible. It's gone bad." instead.
	
[Rules concerning feeding the sausage to the dog are in the dog chapter.]


Section 9 - Scissors

The scissors are secondary, small and plural-named. The description of the scissors is "The scissors are long and thin. [if the scissors are clean]They're not exactly shining, but in decent shape nevertheless[otherwise]They're quite dirty[end if]."

The indefinite article of the scissors is "a pair of".

Understand "pair of" as the scissors.

To clean the scissors:
	now the scissors are clean;
	now the sausage is clean;
	now the sausage is edible.

Check washing the scissors with:
	say "[The second noun] isn't suitable for cleaning the scissors with." instead.
	
Check washing the scissors with the sanitary napkin:
	say "It's too dry to use for cleaning." instead.
	
Instead of washing the dirty scissors with the koi pond:
	say "[We] take some water from the pond and scrub the scissors clean. Some of the dirt is too stubbornly stuck, but most of it comes off.";
	clean the scissors.
	
Instead of washing the dirty scissors with the sanitary napkin when the sanitary napkin is watered or the sanitary napkin is alcohol-soaked:
	say "[We] scrub the scissors clean, or as clean as [we] can, with the sanitary napkin.";
	clean the scissors.
	

Section 10 - Tables

The dining tables are supporters in the dining hall. The description is "Mahogany dining tables and chairs, enough to seat maybe 50 people, fill the dining hall."

The dining tables are scenery, plural-named and huge.

Understand "table" as the dining tables.


Section 11 - Chairs

The dining chairs are supporters in the dining hall. The description is "[The description of the dining tables]".

The chairs are scenery.

Understand "chair" as the chairs.

Instead of entering the chairs:
	say "No point. There's no service anymore."
	
Check taking the chairs:
	say "No point in lugging them around." instead.


Section 12 - Windows

The dining-hall windows are scenery in the Dining hall. The printed name is "windows". The description is "Some rays of light filter through the dirty windows, illuminating the dust particles floating in the air."

The dining-hall windows are plural-named.

Understand "dirty" and "light" as the dining-hall windows.

Instead of opening or pulling or pushing the dining-hall windows:
	say "Most of the windows are not the kind that open. Those that are can't be opened anymore thanks to dirt and rust."

Check closing the dining-hall windows:
	say "They're already closed." instead.
	
Check entering the dining-hall windows:
	say "They're not open." instead.
	
Check rubbing the dining-hall windows:
	say "Cleaning the windows might bring in some extra light, but [we] can already see just fine." instead.

Check searching the windows: [>LOOK THROUGH]
	say "Through the dirt [we] can see the garden." instead.


Chapter 8 - Upstairs corridor

The Upstairs corridor is up of staircase. "This is the corridor where the hotel's guest rooms are. There are seven doors in total[if door 102 is unlocked], of which [we]['ve] unlocked door 102[end if]. To the south the staircase leads back down."

Instead of going south when the location is the Upstairs corridor:
	try going down.
	
Instead of going nowhere when the location is the Upstairs corridor:
	try going inside.
		
Check going inside from the Upstairs corridor when the door 102 is locked:
	say "[We] need to choose a door to enter, or go down back to the lobby." instead.

Before going inside from the Upstairs corridor when the door 102 is unlocked and the door 102 is closed:
	say "(first opening door 102)[command clarification break]";
	silently try opening door 102.


Section 1 - Room doors

A room-door is a kind of container. A room-door is always locked. A room-door is always proper-named and scenery. The description of a room-door is always "The doors are made of brown wood and are practically indistinguishable from each other.[if the item described is locked] This door is locked." A room-door is always in the Upstairs corridor.

Understand "doors" as a room-door.
Understand "room" as a room-door.

The plural of a room-door is notinuse. [* Force disambiguation when the player refers to multiple doors.]

The door 101 is a room-door.
The door 102 is a room-door. The room key unlocks door 102.
The door 103 is a room-door.
The door 104 is a room-door.
The door 105 is a room-door.
The door 106 is a room-door.
The door 107 is a room-door.

The current door number is a number that varies. The current door number is 101.

Rule for printing the name of a room-door while asking which do you mean: [* This is a simple hack to get the room numbers in correct order when the parser asks which one the player means. Instead of trying to order the doors themselves, we'll just print the numbers consecutively regardless of what their actual name is.]
	if the current door number is 108:
		now the current door number is 101;
	say "door [current door number]";
	increment the current door number.
	
Instead of opening a room-door when the door 102 is locked and the player is not carrying the room key for the first time:
	say "The door seems to be locked. Brief testing confirms that the same is true for every door here."
	
Instead of entering a locked room-door:
	try opening the noun.
	
Instead of entering an unlocked room-door:
	try going inside.


Section 2 - Room door on the inside

The room door is a door. The room door is scenery. The room door is outside of Hotel room. Through it is the Upstairs corridor. The room door is open and unlocked.

Check locking the room door with the room key:
	say "[We] would rather not lock [ourselves] in. With some bad luck the key might break inside the lock." instead. [* The key can't fit two doors at the same time without extra extensions and this is such a minor detail that it's easiest to handle it by just blocking the action.]
	

Section 3 - No doorknobs

[It's likely that people might try the doorknob->umbrella thing here.]

A no-doorknob is scenery. It is in the Upstairs corridor. The printed name of no-doorknob is "doorknobs".

Understand "doorknob" and "doorknobs" and "door knob/knobs" and "knob/knobs" as the no-doorknob.

Instead of doing anything with the no-doorknob:
	say "The doors here have handles, not knobs."
	
Does the player mean doing anything to the no-doorknob:
	it is very unlikely.


Chapter 9 - Hotel room

The Hotel room is inside from the Upstairs corridor. "The hotel room is spartan, with only the most necessary furniture. The scene through the window is beautiful, though. There's a direct view to the waterfall [we] saw earlier."

Instead of exiting when the location is the Hotel room:
	try going outside.

Test room with "test key/n/n/unlock 102 with key/w".
	

Section 1 - Bedside table

The bedside table is in the Hotel room. The description is "There's a small table next to the bed."

The bedside table is fixed in place and huge. 

Check opening the bedside table:
	say "It doesn't have any drawers." instead.
	
Check entering the bedside table:
	say "It's too small to support [our] weight." instead.


Section 2 - Sanitary napkin

The sanitary napkin is on the bedside table. The sanitary napkin equals the monkey wrench. The description of the sanitary napkin is "The sanitary napkin is, thankfully, unused."

Understand "pad" and "towel" and "maxi" as the sanitary napkin.

The sanitary napkin is clean and small. The sanitary napkin can be dry, watered, or alcohol-soaked. The sanitary napkin is dry.

Instead of watering the dry sanitary napkin with the koi pond:
	say "There's still enough water in the pond to wet the sanitary napkin. It's now soaked with muddy pond water.";
	now the sanitary napkin is watered.
	
Instead of watering the sanitary napkin with the bottle of gin:
	say "[We] [if the sanitary napkin is watered]squeeze the water out of the sanitary napkin and [end if]pour what's left of the gin on [if the sanitary napkin is watered]it[otherwise]the sanitary napkin[end if]. It soaks it all up.";
	now the sanitary napkin is alcohol-soaked;
	remove the bottle of gin from play.
	
Check watering the watered sanitary napkin with the koi pond:
	say "The sanitary napkin is already wet." instead.

Check watering the alcohol-soaked sanitary napkin with the koi pond:
	say "Better not to. The water would just wash out the alcohol." instead.
	
After examining a watered sanitary napkin:
	say "The sanitary napkin is wet with water."

After examining an alcohol-soaked sanitary napkin:
	say "The sanitary napkin is soaked in gin."
	
Instead of inserting the sanitary napkin into the koi pond:
	say "(watering [the noun] in the pond)[command clarification break]";
	try watering the sanitary napkin with the koi pond.
	
Does the player mean washing something with the sanitary napkin when the sanitary napkin is not dry:
	it is likely.
	

Section 3 - Monkey wrench

The monkey wrench is clean and secondary. The description of the monkey wrench is "It's a large adjustable wrench[if watered]. It's slightly wet.[otherwise if alcohol-soaked]. It smells strongly of alcohol.[otherwise if dirty], covered in grease."

Definition: the monkey wrench is watered if the sanitary napkin is watered.
Definition: the monkey wrench is alcohol-soaked if the sanitary napkin is alcohol-soaked.

Check loosening something with the monkey wrench:
	say "[The noun] [aren't] something with which the monkey wrench would be useful." instead.
	
Check loosening the monkey wrench with the monkey wrench:
	say "That would clearly be impossible."
	
Does the player mean loosening something that is not the monkey wrench with the monkey wrench:
	it is likely.
	

Section 4 - Lipstick

The lipstick is on the bedside table. The indefinite article of the lipstick is "a tube of". The description is "It's a tube of red lipstick, a bit too bright shade for [our] tastes."

The lipstick is small. 

Understand "tube" and "tube of" as the lipstick.

Check applying the lipstick to yourself:
	say "Shifu would not approve of material vanity. And using someone else's lipstick somehow repulses [us]." instead.
	
Instead of wearing the lipstick:
	try applying the lipstick to yourself.
	
Instead putting lipstick on:
	say "(applying the lipstick to [the second noun])[command clarification break]";
	try applying the lipstick to the second noun.
	
Check opening the lipstick:
	say "[We] don't need to open it, [we] can just apply it if necessary." instead.
	
Check applying the lipstick to something:
	say "There's no real reason to smear the lipstick on [the second noun]." instead.
	
Check applying the lipstick to the lipstick:
	say "That's nonsense." instead.
	
Instead of applying the lipstick to the flute when the flute is not lipsticked:
	say "[We] put some lipstick on the flute's mouthpiece.";
	now the dog is lipsticked.
	
Check applying the lipstick to a lipsticked thing:
	say "There's already lipstick on [the second noun]." instead.
	
Check applying the lipstick to the angry dog:
	say "[We] are attached to [our] hand and would like to keep it that way." instead.
	
Check applying the lipstick to the tame dog:
	say "The dog doesn't stay still enough to put the lipstick on it." instead.
	

Section 5 - Bed

The bed is scenery in the Hotel room. The description is "The bed is made and a layer of dust is on the covers." The bed is huge.

Understand "covers" and "cover" as the bed.

Instead of entering the bed:
	say "There's no time to sleep now."


Section 6 - Window

The room window is scenery in the Hotel room. The description is "There's a view of the waterfall through the window."

The room window can be open or closed. The room window is closed. The room window can be openable. The room window is openable.

Instead of searching the window:
	try examining the window.

After opening the room window:
	say "[We] open the window. Fresh air flows into the room."


Chapter 10 - Mountain top

The Mountain top is a room. "The cable car has reached its destination."

After exiting when the cable car is in the mountain top:
	say "[We] step out the cable car and see the shrine a short way from the platform. To [our] surprise the Master is sitting cross-legged in front of the shrine.
	
'Shifu,' [we] greet and bow deep.
	
'Welcome, apprentice,' she says. 'Have you learned the Pattern?'";
	say the questions;
	now the command prompt is "? ".
	
First guess is a truth state that varies. First guess is true.

To say the questions:
	say "[line break] 1) Everything has both good and evil in them[line break]
2) Things can be turned into their exact opposites[line break]
3) Reality is an illusion[line break]
4) There is no pattern[line break]
5) I don't know the answer[paragraph break]";

After reading a command when the player is in the Mountain top:
	if the player's command matches "1":
		say "'It seems to me', [we] say, 'that there's good and evil in everything. Like, there was uh... a tornado in a fish and...'
		
'That is not the Pattern and you know it,' the Master says.";
		say the questions;
		now first guess is false;
	otherwise if the player's command matches "2":
		say "'Well,' [we] say, 'things can be turned into their opposites, you see... a dog is... the opposite of a flute... and uh... a doorknob is pretty much the opposite of an umbrella and... That's not it, is it?'
		
She shakes her head.";
		say the questions;
		now first guess is false;
	otherwise if the player's command matches "3":
		say "She swings her cane faster than [we] can react and hits [us] hard on [our] left shin.
		
'Did that feel like an illusion? What is the Pattern?'";
		say the questions;
		now first guess is false;
	otherwise if the player's command matches "4":
		end the story finally; [* "End the story" doesn't do anything immediately. The story ends only at the end of the turn. In this case the phrase must be used here so that it will suppress the "command ACHIEVEMENTS to see your achievements" tip in the achievement printing rule.]
		if first guess is true:
			award the "First Guess" achievement;
		say "'I really don't know,' [we] say. 'I turned a dog into a flute, and a fish into a tornado, and a sanitary pad into a monkey wrench, and I just can't see what the pattern is. There's nothing that connects them, it's as if it's all completely random. Anything can be changed into anything and...'
		
The Master closes her eyes and nods.

Understanding comes to [us]. 'Anything can be changed into anything.'

At that moment [we] [are] enlightened.";
		if all the achievements are awarded: [* This phrase is provided by the Achievements extension.]
			say "[line break][We] raise [our] hands to feel the new power running through [us]. [We] see and understand possibilities everywhere. [We] spot a tree stump and change it into a violin. A butterfly flies by; [we] sparkle it into a soccer ball. A tree branch becomes a briefcase.
			
'Apprentice,' the Master says. 'Control your power. Without self-control...'

[We] interrupt her by changing her staff into a snake. She throws it out of her hands. 'I am not the apprentice anymore,' [we] spit. 

There's a look of fear in her eyes. 'Xia, this is not what I trained you for!'

[We] grin like a Cheshire cat. She starts to sparkle.";
		follow the shutdown rules; [* Usually the story ends at the end of the current turn, but because we have "reject the player's command" the turn never ends normally. We have to manually trigger the shutdown rules later.]
	otherwise if the player's command matches "5":
		say "She closes her eyes. 'You [italic type]do[roman type] know the answer. Try again.'";
		say the questions;
		now first guess is false;
	otherwise: 
		say "[italic type][bracket]Please answer with a number between 1 and 5[close bracket][roman type][line break]";
	reject the player's command.
	
After listing final achievements when all the achievements are not awarded:
	say "Unlock all achievements for a bonus extended ending."	


Part 2 - Regions

The hotel interior is a region. The Hotel lobby, the Upstairs corridor, the Hotel room, and the Dining hall are in the hotel interior.


Chapter 1 - Backdrops

Section 1 - Dust

The dust is a backdrop. The description is "There's a layer of dust on every surface."

The dust is in the hotel interior.

Instead of taking the dust:
	say "A good portion of the dust is already sticking to [our] clothes and hair."
	
After smelling the dust:
	say "Inhaling the dust only gave [us] a coughing fit."
	
Instead of pulling or pushing or turning or rubbing the dust:
	say "[We] [are] not here to clean."


Section 2 - Waterfall

The waterfall is a backdrop. The waterfall is in the Cable-car platform. The waterfall is in the Hotel room. The description of the waterfall is "The waterfall rumbles down the mountainside and raises a cloud of mist where it hits the water."

Understand "view" and "scene" and "scenery" and "water" and "cloud" and "mist" as the waterfall.

The waterfall is clean and huge.

Instead of doing something other than examining or listening with the waterfall:
	say "The waterfall is too far away."
	
Instead of watering something with the waterfall:
	say "The waterfall is too far away."
	
After listening to the waterfall:
	say "The rumbling of the watefall is almost deafening."
	
Instead of listening when the waterfall is in the location:
	try listening to the waterfall.
	

Section 3 - Hotel facade

The hotel-facade is a backdrop. The hotel-facade is in the Hotel gates. The hotel-facade is in the Garden. The description of the hotel-facade is "The hotel looks deserted. The windows are dirty, moss is spreading on the roof and vegetation is creeping up the walls."

The printed name of the hotel-facade is "hotel". The hotel-facade is huge. 

Understand "hotel" as the hotel-facade.

Instead of entering the hotel-facade:
	try going north. [* Fortunately north is the correct direction for going towards the hotel in both locations the backdrop is present.]


Book 4 - The dog

Part 1 - Definition

The dog is an animal in the Garden.

The indefinite article of the dog is "the".

Rule for writing a paragraph about the tame dog:
	if the player is in the cable car and the dog is in the Cable-car platform:
		say "Through the cable car's window [we] can see the dog on the platform.";
	otherwise:
		say "[one of]The dog sits here, looking at [us] expectantly[or]The dog is sniffing the ground[or]The dog is walking around in circles[as decreasingly likely outcomes]."

The description of the dog is "The dog is big and [if the dog is angry]menacing[otherwise]looking at [us] wide-eyed[end if], a mutt or perhaps even a Chongqing.[if the angry dog is in the Garden] He's barking viciously behind the gates.[otherwise if the angry dog is in a dumbwaiter] [We] can still hear him barking below.[end if][if the dog is dirty] His short fur is filthy and largely covered in dirt.[otherwise] His fur looks, if not perfectly clean, at least much cleaner than what it used to be.[end if]"

The dog equals the flute. 

The dog can be lipsticked. The dog is not lipsticked.
The dog can be hungry or satisfied. The dog is hungry.

Definition: the dog is sick if the flute is blocked.
Definition: the dog is well if it is not sick.

Definition: the dog is barking if it is hungry.
Definition: the dog is angry if it is barking.
Definition: the dog is tame if it is satisfied.

After examining the dog when the dog is lipsticked:
	say "The dog's lips are smeared with lipstick, making him look extraordinarily silly."
	
Test dog with "e/e/meditate/w/change dog/n/get flute".


Part 2 - Actions

Instead of meditating when the player can see the barking dog:
	say "The barking of the dog makes it impossible to meditate here."
	
After changing the dog into the familiar flute for the first time:
	say "[We] clear [our] mind and concentrate on the dog, imagining its counterpart nature. The truth becomes obvious -- a dog is a flute, and a flute is a dog, and there is no difference between the two. Sparkles start flying from all over the dog as the Universe bends to accept the reality [we] have discovered.
	
The sparkling stops and where the dog used to stand, there's a small koudi flute lying on the grass."

To decide whether the dog is dangerous:
	if the dog is tame:
		decide no;
	if the location is the Hotel gates and the location of the flute is the Garden and the gate-door is closed:
		decide no;
	if the location is the Dining hall and the flute is in the left dumbwaiter:
		decide no;
	decide yes. [* Of course the dog is not a threat when he's not in the same room, but he won't be in scope in that case so we can ignore that case.]

Check changing the flute into the dog when the dog is dangerous:
	say "It might not be wise to bring the dog back when he's in such a bad mood and can readily attack [us]." instead.
	
After changing the flute into the angry dog:
	say "The flute sparkles and is soon changed back into the dog, who resumes barking after noticing [us]."
	
Check playing the angry dog:
	say "He doesn't look very playful at the moment." instead.
	
Check playing the tame dog:
	say "The dog might feel like playing, but [we] certainly don't." instead.
	
After smelling the dirty dog:
	say "Believe it or not, he's not smelling of roses." 
	
After smelling the clean dog:
	say "He smells like a slightly damp dog."
	
After listening to the angry dog:
	say "He's barking."
	
Check taking the dog:
	say "He's way too heavy to lift." instead.
	
Check throwing something at the dog:
	say "Better not." instead.

Check touching the angry dog:
	say "[We] would rather keep [our] fingers." instead.
	
After touching the tame dog:
	say "Good boy." 
	
Check washing the dirty dog with:
	say "It would be a lot of work to wash the dog[if the dog is angry] and he wouldn't let [us] do it anyway[end if]. [We] need to find another way if [we] want it cleaned." instead.
	
Check eating the dog:
	say "That's racist." instead.
	
Instead of throwing the chopstick at the dog:
	say "The dog catches the chopstick from air and shreds it to sawdust.";
	remove the chopstick from play.

A persuasion rule for asking the dog to try doing something:
	say 	"He seem to either not understand what [we]['re] saying or refuses to do so.";
	persuasion fails.


Part 3 - Following

Every turn when the dog is tame and the dog is somewhere (this is the dog moving rule):
	let the target be the location;
	let kennel be the location of the dog; [* Just a shortcut.]
	if the kennel is the target:
		make no decision;
	if (the kennel is the Upstairs corridor and the target is the Hotel lobby) or (the kennel is the Hotel lobby and the target is the Upstairs corridor): [* The dog doesn't climb the stairs. I don't remember why.]
		make no decision;
	let the way be the best route from the kennel to the location, using doors;
	if the way is not nothing and (the door way from the kennel is nothing or the door way from the kennel is open):
		try the dog going the way.
	
Last report going when the tame dog is in the location:
	say "The dog wags his tail, glad to see [us]."


Part 4 - Eating

Chapter 1 - Sausage

To decide whether the dog can reach the sausage:
	if the sausage is enclosed by the player: [* I.e. it is in the player's inventory.]
		decide no;
	if the dog is in the holder of the sausage:
		decide yes;
	if the dog is not in the location of the dog: [* "Dog is in the location of the dog" makes sure the dog isn't in the dumbwaiter for example.]
		decide no;
	if the location of the dog is the location of the sausage:
		decide yes;
	decide no.

Every turn when the dog can see the edible sausage and the dog can reach the sausage:
	if the player can see the dog: 
		say "The dog notices the sausage and then gobbles it up in one bite. He licks his lips happily.";
	feed the dog.
	
Every turn when the dog can see the edible sausage and not the dog can reach the sausage and the player can see the dog and the player is not carrying the sausage and the dog is not in the lowered left dumbwaiter and the current action is not changing into:
	say "The dog looks at the sausage and drools."

Check giving the inedible sausage to the dog:
	say "The dog sniffs the sausage, but turns his head away. It's in too bad shape for even the dog to eat." instead.
	
Instead of giving the edible sausage to the dog:
	say "[We]['re] barely able to get [our] fingers out the way as the dog snatches the sausage. He gulps it down hungrily and licks his lips happily.";
	feed the dog.

Instead of showing the sausage to the dog:
	try giving the sausage to the dog.
	
Instead of throwing the sausage at the dog:
	say "(giving the sausage to the dog)[command clarification break]";
	try giving the sausage to the dog.

To feed the dog:
	say line break;
	if the player can see the dog:
		say "The dog's mood seems to change. He doesn't bark anymore and looks at [us], panting.";
	otherwise:
		say "[We] can't hear the dog barking anymore. Maybe he found the sausage?"; [* Actually I don't think there can ever be a situation where this message would be displayed.]
	now the dog is satisfied;
	remove the sausage from play.

	
Chapter 2 - Cantaloupe

Check giving the cantaloupe to the dog:
	say "Unsurprisingly the dog doesn't care about the fruit." instead.
	
Instead of showing the cantaloupe to the dog:
	try giving the cantaloupe to the dog.
		

Part 5 - Environmental messages

The dog behavior rules is a rulebook. The dog behavior rules have default success.

To decide whether the dog is indoors: 
	if the location of the dog is in the hotel interior or the dog is in the cable car or the dog is in the Engine room:
		decide yes;
	decide no.
	
To decide whether the dog is outdoors:
	if the dog is indoors:
		decide no;
	decide yes.
	
A dog behavior rule when the dog can see the inedible sausage and (the holder of the dog is in the holder of the sausage or the dog is in the location of the dog) and a random chance of 1 in 2 succeeds:
	say "The dog sniffs the sausage but apparently judges it inedible.";
	rule succeeds.

A dog behavior rule when the player is carrying the edible sausage and a random chance of 1 in 2 succeeds:
	say "The dog sniffs at the sausage and drools."

A dog behavior rule when the dog is sick and the dog is indoors and a random chance of 1 in 5 succeeds:
	say "[one of]The dog winces audibly. He doesn't look too well.[or]The dog drags his butt across the floor.[as decreasingly likely outcomes]".
	
A dog behavior rule when the dog is sick and the dog is outdoors and a random chance of 1 in 5 succeeds:
	say "[We] spot the dog trying hard to poop, unsuccessfully. There must be something wrong with him."
	
A dog behavior rule when the dog is outdoors and a random chance of 1 in 3 succeeds:
	say "[one of]The dog digs the ground.[or]The dog finds something and sniffs the ground intensely before losing interest again.[or]The dog finds an interesting smell and rolls around on it.[or]The dog closes his eyes and sniffs the wind.[or]The dog marks a nearby bush.[or]A squirrel runs past and the dog darts after it. He returns soon after losing his prey.[or]The dog thinks he sees something and barks briefly but then seems to forget anything ever happened.[as decreasingly likely outcomes]".
	
A dog behavior rule when the dog is indoors and a random chance of 1 in 3 succeeds:
	say "[one of]The dog walks around, his long toenails tapping on the floor.[or]The dog sits down.[or]The dog lies down.[or]The dog sniffs something, inhales dust and coughs loudly.[or]The dog starts to lick the floor.[or]The dog finds an ant on the floor and starts pawing it until it's dead.[as decreasingly likely outcomes]"

Last every turn when the player can see the tame dog and the current action is not looking (this is the dog behavior stage rule):
	if a random chance of 1 in 2 succeeds:
		follow the dog behavior rulebook.


Part 6 - Flute

The flute is a small thing. "A flute lies on the grass near the gate." The flute is secondary and dirty. 
The flute can be blocked. The flute is blocked.

The description of the flute is "It's a small and thick koudi flute that used to be a dog. It's [if the flute is dirty]quite dirty and covered in grit[otherwise]fairly clean[end if]."

Understand "koudi" as the flute.
Understand "block" and "blockage" as the flute when the flute is blocked.

Definition: the flute is lipsticked if the dog is lipsticked.

Report examining the lipsticked flute:
	say "There's lipstick smeared on the mouthpiece."

The block playing rule does nothing if the noun is the flute.

Before playing the flute when the player is not holding the flute:
	carry out the implicitly taking activity with the flute;
	if the player is not holding the flute:
		stop the action.

Check playing the dirty flute:
	say "The flute is so dirty that [we] don't want to play it." instead.
	
Check playing the lipsticked flute:
	say "There's lipstick on the mouthpiece. Playing it now would only make a mess." instead.
	
Check playing the blocked flute:
	say "[first time]Remembering what it used to be, [we] reluctantly put the flute on [our] lips and blow. [only]The air escapes through the fingerholes. There must be a blockage inside the flute somewhere." instead.

Report playing the flute:
	say "The flute has a low, dark sound to it."
	
Instead of searching the blocked flute:
	say "There's something blocking the flute."
	
Check listening to the flute:
	say "No-one's playing it, so it doesn't make a sound." instead.
	
Check washing the dirty flute with something:
	say "[The second noun] wouldn't clean it." instead.
	
Before washing the flute with the koi pond when the flute is not carried:
	say "(first taking the flute)[command clarification break]";
	silently try taking the flute.
	
Instead of washing the dirty flute with the koi pond:
	say "[We] clean the flute the best [we] can using the water from the pond.";
	clean the flute.
	
Instead of washing the lipsticked flute with the koi pond:
	say "[We] rub the lipstick off the flute.";
	clean the flute.
	
To clean the flute:
	now the flute is clean;
	now the dog is not lipsticked;
	now the dog is clean.
	
Instead of watering the flute with the koi pond:
	try washing the flute with the koi pond.
	
Check rubbing the dirty flute:
	say "The dirt is hardened and stuck tight to the flute's surface. [We] need water to clean it." instead.
	
Check rubbing the lipsticked flute:
	say "Rubbing the lipstick only smears it more." instead.
	
Definition: a thing is thin if it is the chopstick or it is the scissors.
	
Instead of clearing the blocked flute with a thin thing:
	say "Using [the second noun], the wad of dirt that was blocking the flute pops cleanly out. That must be a relief to the dog as well.";
	now the flute is not blocked.
	
Check clearing the blocked flute with:
	say "[We] need something long and thin to clear the blockage." instead.
	
Check clearing the flute with when the flute is not blocked:
	say "[We]['ve] already cleared the blockage from the flute." instead.
	
Instead of inserting something into the flute:
	say "(clearing the flute with [the noun])[command clarification break]";
	try clearing the flute with the noun.

Instead of washing the blocked flute with a thin thing:
	say "(clearing the flute with [the second noun])[command clarification break]";
	try clearing the flute with the second noun.
	
Check clearing the flute with a thin thing:
	say "The blockage has already been cleared." instead.

After changing the flute into the clean dog for the first time:
	say "The flute sparkles and changes back into the dog, who looks a lot cleaner than the last time." 
	
After changing the flute into the lipsticked dog for the first time: [* If the flute is cleaned and smeared with lipstick at the same time, this and the previous rule won't be shown at the same time. It's a relatively minor flaw with a relatively complicated solution so we'll just leave it unfixed.]
	say "The flute sparkles and changes back into the dog. 
	
He has lipstick messily smeared all over its nose. [We] allow [ourselves] to smile briefly at the sight."

After changing the flute into the tame dog for the first time:
	say "[We] change the flute back into the dog. The dog looks a bit confused for a moment, but then [if the dog is in the holder of the player]walks calmly to [us] and starts to lick [our] hand[otherwise]sits down and starts looking at [us], panting[end if]." [* "In the holder of the player" basically means that the dog must be directly in the same space as the player. This is to change the response if the dog is in the dumbwaiter or behind the gate and can't "walk calmly to us".]
	
After changing the flute into the tame dog:
	say "The flute sparkles and changes back into the dog[first time]. The dog doesn't look like it realized what happened[only]."
	

Volume 4 - Debugging (not for release)

Book 1 - Object Response Tests

Include Object Response Tests by Juhana Leinonen.

[remove tests for actions that are disabled in this story]
When play begins:
	remove the test burning rule;
	remove the test kissing rule;
	remove the test buying rule;
	remove the test waving rule;
	remove the test setting to rule;
	remove the test swinging rule;
	remove the test squeezing rule;
	remove the test looking under rule;
	remove the test pushing to rule;
	remove the test rubbing rule;
	remove the test tasting rule.
	
This is the test applying to rule:
	let the target be a random visible thing that is not the noun;
	announce tests for "applying [the noun] to [the target]";
	try applying the noun to the target.
	
This is the test loosening with rule:
	let the tool be a thing;
	if the player is carrying the monkey wrench:
		now the tool is the monkey wrench;
	otherwise:
		now the tool is a random visible thing that is not the noun;
	announce tests for "loosening [the noun] with [the tool]";
	try loosening the noun with the tool.
	
This is the test playing rule:
	announce tests for "playing [the noun]";
	try playing the noun.
	
This is the test repairing rule:
	announce tests for "repairing [the noun]";
	try repairing the noun.
	
This is the test washing with rule:
	let the tool be a thing;
	if the player is carrying the sanitary napkin:
		now the tool is the sanitary napkin;
	otherwise:
		now the tool is a random visible thing that is not the noun;
	announce tests for "washing [the noun] with [the tool]";
	try washing the noun with the tool.
	
This is the test watering with rule:
	let the spring be a thing;
	if the player can see the koi pond:
		now the spring is the koi pond;
	otherwise if the player can see the bottle of gin:
		now the spring is the bottle of gin;
	otherwise:
		now the spring is a random visible thing that is not the noun;
	announce tests for "watering [the noun] with [the spring]";
	try watering the noun with the spring.


Table of analyzing actions (continued)
topic	testing rule
"applying to"	test applying to rule
"loosening with"	test loosening with rule	
"playing"	test playing rule
"repairing"	test repairing rule
"washing with"	test washing with rule
"watering with"	test watering with rule


Book 2 - Properties

First when play begins (this is the check revelation object integrity rule):
	repeat with item running through primary things:
		if the item equals a primary thing (called the counterpart):
			say "WARNING: [The item] equals [the counterpart] and neither of them are marked secondary."

Checking properties is an action out of world.

Understand "prop" as checking properties.

Carry out checking properties:
	say "Dirty things: [the list of dirty things].[paragraph break]";
	say "Clean things: [the list of clean things].[paragraph break]";
	say "Small things: [the list of small things].[paragraph break]";
	say "Big things: [the list of big things].[paragraph break]";
	say "Huge things: [the list of huge things].";
