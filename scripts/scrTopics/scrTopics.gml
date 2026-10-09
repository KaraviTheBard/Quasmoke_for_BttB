global.topics = {};


#region JURA

global.topics[$ "Jura first"] = 
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	CHOICE("Oh hello... I don't remember seeing you in the village before, are you a traveler?",
		OPTION("Yeah", "Jura qs 1"),
		OPTION("*silence*", "Jura sil 1"))
];
global.topics[$ "Jura qs 1"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("Yup. What is this place anyway?"),
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Oh? Well it's the Wet Village of course. I suppose you can imagine why it's called that. With all the rain and stuff..."),
	GOTO("Jura favour")
]
global.topics[$ "Jura sil 1"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("..."),
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("The silent type huh? Well okay, just uh... let me know if you need something okay?"),
	GOTO("Jura favour")
]

global.topics[$ "Jura favour"] =
[
	CHOICE("Also, can I ask for a small favour?",
		OPTION("Sure", "Jura qs 2"),
		OPTION("*silence*", "Jura sil 2"),
		OPTION("Nah", "Jura nah favour"))
]
global.topics[$ "Jura qs 2"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("Yeah, sure. What is it?"),
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Well, my dad is out on a hunt right now and I'm worried about him, so if you were to see him... could you tell him to hurry home? Just that, nothing more."),
	TEXT("And hey, it's quite easy to spot him, he's a pretty big and strong guy."),
	GOTO("Jura 1 ending")
]
global.topics[$ "Jura sil 2"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("..."),
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("And you just continue to stare... how nice..."),
	GOTO("Jura 1 ending")
]
global.topics[$ "Jura nah favour"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("We literally just met, I ain't doin' nothing"),
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Oh. Ok... I guess that makes sense, uhm well sorry for being so straightforward."),
	TEXT("I'm just worried for my dad, he's out in the forest... ah! Sorry, just my ramblings"),
	GOTO("Jura 1 ending")
]

global.topics[$ "Jura 1 ending"] =
[
	TEXT("Well uh... good luck out there, I guess..."),

];


#region JURA GREETINGS

global.topics[$ "Jura gre 1"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Oh? You okay? You almost fell over..."),
]
global.topics[$ "Jura gre 2"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("You seem a little light headed, you sure you're okay?"),
]
global.topics[$ "Jura gre 3"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Hey, hope everything is alright..."),
]
global.topics[$ "Jura gre 4"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Have you seen anyone on your travels?"),
]
global.topics[$ "Jura gre 5"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Oh? Back in the village?"),
]
global.topics[$ "Jura gre 6"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Where's the little rascal..."),
]
global.topics[$ "Jura gre 7"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Oh dad please just come back..."),
]
global.topics[$ "Jura gre 8"] =
[
	SPEAKER("Jura", sJuraDWorried, PICTURE_SIDE.PRAVO),
	TEXT("Hope papa's okay..."),
]

#endregion JURA GREETINGS

#endregion JURA

#region VLASTA

global.topics[$ "Vlasta first"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	CHOICE("UGH! Damn it!",
		OPTION("Calm down", "Vlasta calm 1"),
		OPTION("Oi!", "Vlasta agro 1"))
];

global.topics[$ "Vlasta calm 1"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("Hey calm down, what's going on?"),
	GOTO("Vlasta what happened")

];
global.topics[$ "Vlasta agro 1"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("Oi, what's going on here?"),
	GOTO("Vlasta what happened")

];
global.topics[$ "Vlasta what happened"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("Some stupid kids made a mess of the road that leads to the playground..."),
	CHOICE("and because of the stupid rain, a tree toppled over and fell over the road...",
		OPTION("Help", "Vlasta calm 2"),
		OPTION("Make fun of", "Vlasta agro 2"))
];
global.topics[$ "Vlasta calm 2"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("I could help."),
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("Wait... you're actually volunteering yourself? Omg, thanks! Wow..."),
	TEXT("Guess there still are some respectable people out there, well come on, let's go!"),

];
global.topics[$ "Vlasta agro 2"] =
[
	SPEAKER("Player", sPlayerNeutral, PICTURE_SIDE.LEVO),
	TEXT("And you’re too weak and small to get through all that, right?"),
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("Gee, 7 year old's are usually like that prick."),
	TEXT("Now stop your stupid words and help me, will you?"),
	TEXT("Or I'll call my daddies to kick your butt! "),
];

#region VLASTA GREETINGS

global.topics[$ "Vlasta gre 1"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("What is it now?"),
]
global.topics[$ "Vlasta gre 2"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("Wanna play tag?"),
	TEXT("Actually nah, I don’t want to break a leg.")
]
global.topics[$ "Vlasta gre 3"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("Have you seen my brother?"),
	TEXT("He’s such a scaredy cat.")
]
global.topics[$ "Vlasta gre 4"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("My dad is the strongest of all people!"),
]
global.topics[$ "Vlasta gre 5"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("I want to be as strong as my dad one day!"),
]
global.topics[$ "Vlasta gre 6"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("What're you lookin' at?"),
	TEXT("I'm not afraid of you, ya know."),
	TEXT("Even if you are my elder."),
]
global.topics[$ "Vlasta gre 7"] =
[
	SPEAKER("Vlasta", sVlastaDNormal, PICTURE_SIDE.PRAVO),
	TEXT("Boys,"),
	TEXT("girls,"),
	TEXT("dogs,"),
	TEXT("elders,"),
	TEXT("there's nobody I won't fight!"),
]


#endregion VLASTA GREETINGS

#endregion VLASTA