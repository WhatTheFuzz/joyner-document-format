%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%
% TEX example created by Mr. Harper. %
%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%%

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{jdf}[2018/01/01 Joyner Document Format]

% Base format off article class.
\LoadClass[12pt,letterpaper]{article}

% --- Require following packages --- %
\RequirePackage[
driver=xetex,
margin=1.5in,
bottom=1.5in,
top=1.5in,
headheight=14.5pt]{geometry}  % Define margins and driver.
\RequirePackage[
tableposition=top,
figureposition=bottom,
font=footnotesize,
labelfont=bf]{caption}        % Set caption to correct size and location
\RequirePackage{graphicx}     % Support for graphics and pictures.
\RequirePackage{nameref}      % Allow cross referencing by section name.
\RequirePackage[hyphens]{url} % Break URLs by hypens to retain margins.
\RequirePackage{gensymb}      % Required for math symbols.
\RequirePackage{crimson}      % Set font to Crimson.
\RequirePackage{titlesec}     % For defining spacing between headers.
\RequirePackage{fancyhdr}     % Define the page header, with page numbers.
\RequirePackage{float}        % Used for Tables and Figures.
\RequirePackage{enumitem}     % Enumerated lists.
\RequirePackage{apacite}      % APA Citation format
\RequirePackage{lipsum}       % Generate text, unnecessary apart from the example


% --- Setup parameter indentation --- %
\setlength{\parindent}{0pt}
\setlength{\parskip}{6pt}

% --- For 1.15 spacing between text --- %
\renewcommand{\baselinestretch}{1.15}

% --- Define space between headers --- %
% Level 1
\titleformat{\section}
  {\normalfont\fontsize{18}{0}\bfseries}{\thesection}{1em}{}
% Level 2
\titleformat{\subsection}
  {\normalfont\fontsize{14}{0}\bfseries}{\thesection}{1em}{}
% Level 3
\titleformat{\subsubsection}
  {\normalfont\fontsize{12}{0}\bfseries}{\thesection}{1em}{}
% Level 4
\titleformat{\paragraph}
  {\normalfont\fontsize{12}{0}\bfseries\itshape}{\theparagraph}{1em}{}
% Level 5
\titleformat{\subparagraph}
  {\normalfont\fontsize{12}{0}\itshape}{\theparagraph}{1em}{}
% Level 6
\makeatletter
\newcounter{subsubparagraph}[subparagraph]
\renewcommand\thesubsubparagraph{%
  \thesubparagraph.\@arabic\c@subsubparagraph}
\newcommand\subsubparagraph{%
  \@startsection{subsubparagraph}    % counter
    {6}                              % level
    {\parindent}                     % indent
    {12pt} % beforeskip
    {6pt}                           % afterskip
    {\normalfont\fontsize{12}{0}}}
\newcommand\l@subsubparagraph{\@dottedtocline{6}{10em}{5em}}
\newcommand{\subsubparagraphmark}[1]{}
\makeatother
\titlespacing*{\section}{0pt}{12pt}{6pt}
\titlespacing*{\subsection}{0pt}{12pt}{6pt}
\titlespacing*{\subsubsection}{0pt}{12pt}{6pt}
\titlespacing*{\paragraph}{0pt}{12pt}{6pt}
\titlespacing*{\subparagraph}{0pt}{12pt}{6pt}
\titlespacing*{\subsubparagraph}{0pt}{12pt}{6pt}


% --- Set page number location --- %
\fancyhf{} % clear all header and footers
\renewcommand{\headrulewidth}{0pt} % remove the header rule
\rhead{\thepage}
\pagestyle{fancy}

% --- Overwrite Title --- %
\makeatletter
\renewcommand{\maketitle}{\bgroup
   \begin{center}
   \textbf{{\fontsize{18pt}{20}\selectfont \@title}}\\
   \vspace{10pt}
   {\fontsize{12pt}{0}\selectfont \@author}
   \end{center}
}
\makeatother

% --- Custom Quote --- %
\newenvironment{myquote}[1]%
  {\list{}{\leftmargin=#1\rightmargin=#1}\item[]}%
  {\endlist}

% --- Create Abstract --- %
\renewenvironment{abstract}
{\vspace*{-.5in}\fontsize{12pt}{12}\begin{myquote}{.5in}
\noindent \par{\bfseries \abstractname.}}
{\medskip\noindent
\end{myquote}
}
