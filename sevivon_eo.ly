\version "2.18.2"  % necessary for upgrading to future LilyPond versions.

% ===== endkonduko =======

% Andy Rosenbaum
% andyjrosenbaum@gmail.com

\header {
	title = "Sevivon' en Esperanto"
	subtitle = "(versio por ekster Israelo)"
	composer = "Tradicia kanto por Ĥanukao, la Juda festo de lumoj"
	arranger = "aranĝis Andreo ROSENBAUM, novembro 2017"
	date = "novembro 2017"
}

% =========== parto A =============

muzikoA = \relative f' {
	f8 f g4 | aes8 aes g4 | c8 c bes16( aes g) f | aes8 aes g4 |
	f8 f g4 | aes8 aes bes4 | c8 c c( c,) | f8 f f4 |
}

sevivonVortoj = \lyricmode { | Se -- vi -- von' | ŝov ŝov ŝov | }
festaMovVortoj = \lyricmode { | Ĥa -- nu -- ka -- a | fest -- a mov' | }
festaMovVortojDu = \lyricmode { | Ĥa -- nu -- ka' | fest -- a mov' | }

vortojA = {
	\sevivonVortoj \festaMovVortoj \festaMovVortojDu \sevivonVortoj
}

% =========== parto B =============

muzikoB = \relative f' {
	bes8 bes bes des | c c aes16( g) f8 | e e c e | f g aes16( g) f8 |
	bes8 bes bes des | c c aes16( g) f8 | e e c e | f f f r8 |
	
}

gxojaFestoVortoj = \lyricmode { | Por la land -- o | ĝo -- ja fest -- o | }
gxojaFestoVortojDu = \lyricmode { | Por la land -- o | ĝo -- ja fest' | }
miraklegoVortoj = \lyricmode { | Mi -- rakl -- eg' o -- | ka -- zis ti -- e | }

vortojB = \lyricmode { \gxojaFestoVortoj \miraklegoVortoj \miraklegoVortoj \gxojaFestoVortojDu }

% ==== ĉiom da la muziko =====

cxiomDaLaMuziko = {
<<
	{ \muzikoA \muzikoB }
	\addlyrics { \vortojA \vortojB }
>>
}

% === presi la .pdf kaj la .midi dosierojn ===

\score {
	\new Staff { \key f \minor \time 2/4 \cxiomDaLaMuziko }

	\layout {}
	\midi { \tempo 4 = 100 }
}
