%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% maththesis.cls
%%%% version 2024.09
%%%% Original script by: Julius V. Benitez, Ph.D.
%%%% Updated by: Karlo S. Orge and Rey R. Cuenca
%%%% Department of Mathematics and Statistics
%%%% College of Science and Mathematics
%%%% MSU-Iligan Institute of Technology
%%%% 9200 Iligan City, Philippines
%%%% E-mail: karlo.orge@g.msuiit.edu.ph
%%%%         rey.cuenca@g.msuiit.edu.ph
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
%%%% WARNING: DO NOT ATTEMPT TO EDIT ANY PART OF
%%%% THIS FILE UNLESS YOU KNOW WHAT YOU'RE DOING.
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e} 
\ProvidesClass{maththesis}
\ProcessOptions\relax
\LoadClass[12pt]{report}
\RequirePackage{amssymb}
\RequirePackage[reqno]{amsmath} 
\RequirePackage{indentfirst}
\RequirePackage{ifthen}
\RequirePackage[thmmarks,amsmath]{ntheorem}
\RequirePackage{color}
\RequirePackage{array}
\RequirePackage{ragged2e}
\RequirePackage{graphicx}
\RequirePackage{colortbl}
\RequirePackage{tocbibind}
\RequirePackage{appendix}
\RequirePackage{calc}
\RequirePackage{float}
\RequirePackage[hidelinks,linktoc=all]{hyperref}
\RequirePackage{eso-pic}
\newcommand\BackgroundPic{%
	\put(0,0){%
		\parbox[b][\paperheight]{\paperwidth}{%
			\vfill
			\centering
			\includegraphics[width=\paperwidth,height=\paperheight,%
			keepaspectratio]{back}%
			\vfill
}}}

%PRESETS TO MINIMIZE HYPHENATION
\tolerance=1
\emergencystretch=\maxdimen
\hyphenpenalty=10000
\hbadness=10000

\setlength{\parindent}{.5in}
\raggedbottom
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Page layout
\setcounter{tocdepth}{3}
\setcounter{secnumdepth}{2}
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
\renewcommand
\listfigurename{LIST OF FIGURES}
\renewcommand
\listtablename{LIST OF TABLES}
\baselineskip=1.0\baselineskip
\renewcommand{\contentsname}{TABLE OF CONTENTS} 
\renewcommand{\bibname}{BIBLIOGRAPHY} 
\renewcommand{\section}{\@startsection{section}{1}{0pt}{2ex} {1ex}{\normalfont\bfseries}}
\renewcommand{\subsection}{\@startsection{subsection}{2}{0pt}{2ex}{1ex}{\normalfont\bfseries}}
\renewcommand{\subsubsection}{\@startsection{subsubsection}{3}{0pt}{2ex}{1ex}{\normalfont\bfseries}}
% - - - - - - - - - - - - - - - - - - - - - - - - - - - - - - -
% Chapter heading layout
\def\@makechapterhead#1{
	{\thispagestyle{empty}
		\centering
		\ifnum \c@secnumdepth >\m@ne
		\bfseries \MakeUppercase{\@chapapp}\ \thechapter
		\par\nobreak
		\vskip 20\p@    
		\fi
		\interlinepenalty\@M
		\bfseries #1\par\nobreak
		\vskip 30\p@
}}

\def\@makeschapterhead#1{
	{\thispagestyle{empty}
		\centering
		%    \large
		\interlinepenalty\@M
		\bfseries  #1\par\nobreak
		\vskip 30\p@
}}