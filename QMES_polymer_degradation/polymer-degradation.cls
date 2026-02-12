\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{polymer-degradation}[2025 Polymer Degradation Lab Report]

\LoadClass[12pt]{article}

\RequirePackage[top=2cm, bottom=2cm, left=2.5cm, right=2.5cm]{geometry}
\RequirePackage{fancyhdr}
\RequirePackage{lastpage}

% 字体设置
\RequirePackage{times}

\RequirePackage{amsmath}
\RequirePackage{amssymb}

\RequirePackage{graphicx}
\RequirePackage{float}

\RequirePackage{array}
\RequirePackage{booktabs}

\RequirePackage{xcolor}
\RequirePackage{enumitem}

\setlength{\parskip}{0.4em}
\setlength{\parindent}{0pt}

\newcommand{\experimenttitle}[1]{%
    \begin{center}
        \vspace{1em}
        {\Large\bfseries Experiment \text{\#}\@experimentnum\qquad\@experimentname}
        \vspace{0.5em}
    \end{center}
}


% 重定义maketitle
\renewcommand{\maketitle}{%
    \begin{center}
        {\LARGE\bfseries Lab Report for Polymer Degradation}
        
        \vspace{1em}
        
        \begin{tabular}{@{}p{0.3\textwidth}p{0.3\textwidth}p{0.3\textwidth}@{}}
            \textbf{Name:} \@name & \textbf{Student ID:} \@studentid & \textbf{Group Member:} \@groupmember \\
        \end{tabular}
        
        \vspace{0.5em}
        
        \begin{tabular}{@{}p{0.3\textwidth}p{0.3\textwidth}p{0.3\textwidth}@{}}
            \textbf{Score:} \@score & \textbf{Date:} \@date & \textbf{Tutor:} \@tutor \\
        \end{tabular}
    \end{center}
}

% 自定义字段
\def\@name{\relax}
\newcommand{\name}[1]{\def\@name{#1}}

\def\@studentid{\relax}
\newcommand{\studentid}[1]{\def\@studentid{#1}}

\def\@groupmember{\relax}
\newcommand{\groupmember}[1]{\def\@groupmember{#1}}

\def\@score{\relax}
\newcommand{\score}[1]{\def\@score{#1}}

\def\@tutor{\relax}
\newcommand{\tutor}[1]{\def\@tutor{#1}}

\def\@experiment{\relax}
\newcommand{\experimentnum}[1]{\def\@experimentnum{#1}}

\def\@experiment{\relax}
\newcommand{\experimentname}[1]{\def\@experimentname{#1}}
