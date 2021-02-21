\NeedsTeXFormat {LaTeX2e}
\ProvidesClass {inrialetter}[2012/02/10 Letter class for INRIA]
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{article}}
\ProcessOptions
\LoadClass {article}

\RequirePackage [a4paper,vscale=0.85]{geometry}
\RequirePackage {graphicx}

\RequirePackage {color}
\definecolor {inriaRed}{RGB}{226,0,38}

\RequirePackage {ifxetex}
\ifxetex
\RequirePackage {fontspec}
\RequirePackage {xunicode}
\RequirePackage {xltxtra}
\else
\RequirePackage [utf8]{inputenc}
\fi

\setlength {\parskip}{0.5em plus0.1em minus0.1em}
\pagestyle {empty}

\newcommand {\theaddress}{Name \\ Address}
\newcommand {\thecri}{BORDEAUX–SUD-OUEST}
\newcommand {\theplace}{Bordeaux}
\newcommand {\thedate}{\today}
\newcommand {\theaddressee}{Name \\ Address}
\newcommand {\theopening}{Dear Madam or Sir,}
\newcommand {\thesubject}{\vspace {-5mm}}
\newcommand {\theclosing}{With best regards,}

\newcommand {\address}[1]{\renewcommand {\theaddress}{#1}}
\newcommand {\cri}[1]{\renewcommand {\thecri}{#1}}
\newcommand {\place}[1]{\renewcommand {\theplace}{#1}}
\renewcommand {\date}[1]{\renewcommand {\thedate}{#1}}
\newcommand {\addressee}[1]{\renewcommand {\theaddressee}{#1}}
\newcommand {\opening}[1]{\renewcommand {\theopening}{#1}}
\newcommand {\subject}[1]{\renewcommand {\thesubject}{#1}}
\newcommand {\closing}[1]{\renewcommand {\theclosing}{#1}}

\newenvironment {letter}
{
\hspace {-10mm}
\includegraphics[width=6cm]{5372.png}


\hspace* {\fill}
\begin {tabular}{l}%
   \theaddressee \\
   \\
   \theplace, \thedate
\end {tabular}

\vspace {5mm}
\noindent
\textbf {\thesubject}

\vspace {5mm}
\noindent
\theopening

}
{

\vspace {5mm}
\noindent
\theclosing

\ifxetex
\setmainfont [BoldFont=Exo-Bold,ItalicFont=Exo-Regular-Italic,BoldItalicFont=Exo-Bold-Italic]{Exo-Regular}
\setsansfont [BoldFont=Exo-Bold,ItalicFont=Exo-Regular-Italic,BoldItalicFont=Exo-Bold-Italic]{Exo-Regular}
\setmonofont [BoldFont=Exo-Bold,ItalicFont=Exo-Regular-Italic,BoldItalicFont=Exo-Bold-Italic]{Exo-Regular}
\else
\sffamily
\fi
\vfill
\noindent
\textcolor {inriaRed}{\textbf {{CENTRE DE RECHERCHE \\ \thecri\\}}
}%
\theaddress
}
