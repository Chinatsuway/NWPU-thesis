% qmes-polymer-properties.cls
\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qmes-polymer-properties}[2025/12/06 Polymer Properties Template]

\LoadClass[12pt,a4paper]{article}
\RequirePackage{times}
\RequirePackage{mathptmx}
\RequirePackage{helvet}
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{datetime}
\RequirePackage{titling}
\RequirePackage{etoolbox}
\RequirePackage{array}
\RequirePackage{lastpage}
\RequirePackage{geometry}  
\RequirePackage{shellesc}
\RequirePackage{newtxtext}
\RequirePackage{newtxmath}
\RequirePackage{xcolor}
\RequirePackage{multirow}
\RequirePackage{listings}
\RequirePackage{indentfirst}
\RequirePackage[super,square]{natbib}
\RequirePackage{parskip}

\RequirePackage{caption}
\captionsetup[table]{font=small} % Set captions to small size
\captionsetup[lstlisting]{font=small}
\captionsetup[figure]{font=small}


\RequirePackage[colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref}

\geometry{a4paper,left=25mm,right=20mm,top=25mm,bottom=25mm}

\renewcommand{\headrulewidth}{0pt}

% 用户可定义的字段
\newcommand{\@studentname}{}
\newcommand{\studentname}[1]{\renewcommand{\@studentname}{#1}}
\newcommand{\@studentid}{}
\newcommand{\studentid}[1]{\renewcommand{\@studentid}{#1}}

\definecolor{codegreen}{rgb}{0,0.6,0}
\definecolor{codegray}{rgb}{0.5,0.5,0.5}
\definecolor{codepurple}{rgb}{0.58,0,0.82}
\definecolor{backcolour}{rgb}{0.95,0.95,0.96}

% Configure listings package
\lstset{
    basicstyle=\ttfamily\small,
    backgroundcolor=\color{backcolour},
    commentstyle=\color{codegreen},
    keywordstyle=\color{magenta},
    numberstyle=\tiny\color{codegray},
    stringstyle=\color{codepurple},
    numbers=left,
    stepnumber=1,
    numbersep=5pt,
    showspaces=false,
    showstringspaces=false,
    showtabs=false,
    tabsize=2,
    frame=single,
    rulecolor=\color{codegray},
    breaklines=true,
    postbreak=\mbox{\textcolor{red}{$\hookrightarrow$}\space},
    columns=fullflexible,
    keepspaces=true,
    xleftmargin=15pt,
    framexleftmargin=15pt,
    breaklines=true,
    extendedchars=false
}

% Code import command
\newcommand{\includecode}[2][]{%
    \lstinputlisting[#1]{#2}%
}

\setlength{\footskip}{15pt}
\pagestyle{fancy}
\fancyhf{}
\fancyfoot[R]{\thepage{} of \pageref{LastPage}}
\fancypagestyle{plain}{\pagestyle{fancy}}

\setlength{\voffset}{-10mm}                        
\setlength{\footskip}{10mm}

\renewcommand{\maketitle}{
    \thispagestyle{fancy}
    
    \begin{center}
        {\LARGE \bfseries LABORATORY REPORT \par}
        \vspace{0.25cm}
        
        \ifdefempty{\@studentname}{}{
            Name: \@studentname \\
        }
        \vspace{0.15cm}
        \ifdefempty{\@studentid}{}{
            Student ID: \@studentid \\
        }
        \vspace{0.15cm}        
        {\LARGE \@title \par}
    \end{center}
    
    \vspace{0.3cm} % 标题与学生信息之间的间隔
}

\makeatletter\renewenvironment{thebibliography}[1]
    {\section{References}  % 空标题
    \@mkboth{}{}  % 清空页眉标记      
    \list{\@biblabel{\@arabic\c@enumiv}}%           
        {\settowidth\labelwidth{\@biblabel{#1}}
        \leftmargin\labelwidth
        \advance\leftmargin\labelsep           
        \@openbib@code            
        \usecounter{enumiv}%            
        \let\p@enumiv\@empty            
        \renewcommand\theenumiv{\@arabic\c@enumiv}}%      
    \sloppy      
    \clubpenalty4000      
    \@clubpenalty \clubpenalty      
    \widowpenalty4000%      
    \sfcode`\.\@m}     
    {\def\@noitemerr       
    {\@latex@warning{Empty `thebibliography' environment}}%      
    \endlist}
\makeatother