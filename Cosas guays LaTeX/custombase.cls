\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{custombase}[2013/04/20 Base class]

% Si nos pasan la opción nochap, no ponemos número de capítulo en las secciones.
\DeclareOption{nochap}{\def\thesection{\arabic{section}}} 
\DeclareOption*{\PassOptionsToClass{\CurrentOption}{report}}
\ProcessOptions\relax

\LoadClass[12pt,a4paper,reqno]{report}

% Tipo de letra
\renewcommand*\familydefault{\sfdefault}

\RequirePackage[left=3cm,right=2cm,top=3cm,bottom=2cm]{geometry} % Márgenes
\RequirePackage{imakeidx} % Creación de índices
\RequirePackage{titling} % No tengo claro para qué es esto
\RequirePackage{fancyhdr} % Cabeceras de página
\RequirePackage{lastpage} % Módulo para añadir una referencia a la última página
\RequirePackage[spanish,es-noquoting,es-noshorthands]{babel} % Cadenas de LaTeX traducidas al español 
\RequirePackage{amsthm} % Paquete de matemáticas
\RequirePackage{framed} % Marcos 
\RequirePackage{mdframed} % Más marcos
\RequirePackage{exmath} % Nuestro querido paquete de utilidades
\RequirePackage{hyperref} % Para que salgan enlaces en la tabla de contenidos y el glosario
\RequirePackage{wrapfig} % Figuras flotantes
\RequirePackage{MathUnicode} % Paquete para poder poner caracteres griegos y demás cosas raras.
\RequirePackage{listings} % Para poner código.

% Números en las subsecciones
\setcounter{secnumdepth}{3}
\def\thechapter{\Roman{chapter}}

% Ajustes para los enlaces
\hypersetup{
	hyperindex,
    colorlinks,
    citecolor=black,
    filecolor=black,
    linkcolor=black,
    urlcolor=black
}

%%%%% Listings UTF8 %%%%%
\lstset{literate=%
{á}{{\'a}}1
{é}{{\'e}}1
{í}{{\'i}}1
{ó}{{\'o}}1
{ú}{{\'u}}1
{Á}{{\'A}}1
{É}{{\'E}}1
{Í}{{\'I}}1
{É}{{\'O}}1
{Ú}{{\'U}}1
}

