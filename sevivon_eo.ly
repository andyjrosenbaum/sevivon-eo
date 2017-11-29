\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

\header {
	title = "Sevivon (Esperanto, ekster Israelo)"
	composer = "Tradicia kanto por Ĥanukao, la Juda festo de lumoj"
	arranger = "aranĝis Andreo ROSENBAUM, novembro 2017"
	date = "novembro 2017"
}

musicA = \relative f' {
	f8 f g4 | aes8 aes g4 | c8 c bes16( aes g) f | aes8 aes g4 |
	f8 f g4 | aes8 aes bes4 | c8 c c( c,) | f8 f f4 |
}

sevivonWords = \lyricmode { | Se -- vi -- von' | ŝov ŝov ŝov | }
festaMovWords = \lyricmode { | Ĥa -- nu -- ka -- a | fest -- a mov' | }
festaMovWordsShort = \lyricmode { | Ĥa -- nu -- ka' | fest -- a mov' | }

wordsA = {
	\sevivonWords \festaMovWords \festaMovWordsShort \sevivonWords
}

partA = {
<<
	{ \musicA }
	\addlyrics { \wordsA }
>>
}


\score {
	\new Staff { \key f \minor \time 2/4 
	{ \partA } }

\layout {}
\midi { \tempo 4 = 100 }
}