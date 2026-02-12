% qmes-internship.cls
% 西北工业大学伦敦玛丽女王大学工程学院生产实习报告模板
% QMUL Engineering School, NPU - Internship Report Template
% 与Word模板完全一致

\NeedsTeXFormat{LaTeX2e}
\ProvidesClass{qmes-internship}[2026/02/11 QMES Internship Report Template]

\LoadClass[12pt,a4paper]{article}

% 基础宏包
\RequirePackage{graphicx}
\RequirePackage{fancyhdr}
\RequirePackage{geometry}
\RequirePackage{etoolbox}
\RequirePackage{array}
\RequirePackage{multirow}
\RequirePackage{booktabs}
\RequirePackage{setspace}
\RequirePackage{xcolor}
\RequirePackage{indentfirst}
\RequirePackage{lastpage}
\RequirePackage{enumitem}
\RequirePackage{titlesec}
\RequirePackage{tikz}
\RequirePackage{calc}

% 字体设置
\RequirePackage{fontspec}
\RequirePackage{xeCJK}

% 设置中文字体（使用黑体作为标题）
\setCJKmainfont{Noto Serif CJK SC}
\setCJKsansfont{Noto Sans CJK SC}

% 设置英文字体
\setmainfont{DejaVu Serif}

\RequirePackage[colorlinks,linkcolor=black,citecolor=black,urlcolor=black]{hyperref}

% 页面设置（与Word默认页边距一致）
\geometry{a4paper,left=25mm,right=25mm,top=25mm,bottom=25mm}

% 字号设置
\newcommand{\xiaowu}{\fontsize{10.5pt}{15.75pt}\selectfont}
\newcommand{\sihao}{\fontsize{14pt}{21pt}\selectfont}
\newcommand{\xiaosan}{\fontsize{15pt}{22.5pt}\selectfont}
\newcommand{\sanhao}{\fontsize{16pt}{24pt}\selectfont}
\newcommand{\xiaoer}{\fontsize{18pt}{27pt}\selectfont}
\newcommand{\erhao}{\fontsize{22pt}{33pt}\selectfont}
\newcommand{\yihao}{\fontsize{26pt}{39pt}\selectfont}

% 段落设置
\setlength{\parindent}{2em}
\linespread{1.5}

% 标题格式设置
\titleformat{\section}{\normalfont\bfseries\xiaosan}{\thesection、}{0pt}{}
\titleformat{\subsection}{\normalfont\bfseries\sihao}{\thesubsection}{0.5em}{}
\titleformat{\subsubsection}{\normalfont\bfseries\xiaowu}{\thesubsubsection}{0.5em}{}
\titlespacing*{\section}{0pt}{1em}{0.5em}
\titlespacing*{\subsection}{0pt}{0.5em}{0.3em}
\titlespacing*{\subsubsection}{0pt}{0.3em}{0.2em}

% 用户可定义的字段
\newcommand{\@projectname}{}
\newcommand{\projectname}[1]{\renewcommand{\@projectname}{#1}}
\newcommand{\@destination}{}
\newcommand{\destination}[1]{\renewcommand{\@destination}{#1}}
\newcommand{\@internshipstartdate}{}
\newcommand{\internshipstartdate}[1]{\renewcommand{\@internshipstartdate}{#1}}
\newcommand{\@internshipenddate}{}
\newcommand{\internshipenddate}[1]{\renewcommand{\@internshipenddate}{#1}}
\newcommand{\@studentname}{}
\newcommand{\studentname}[1]{\renewcommand{\@studentname}{#1}}
\newcommand{\@studentid}{}
\newcommand{\studentid}[1]{\renewcommand{\@studentid}{#1}}
\newcommand{\@grade}{}
\newcommand{\grade}[1]{\renewcommand{\@grade}{#1}}
\newcommand{\@class}{}
\newcommand{\class}[1]{\renewcommand{\@class}{#1}}
\newcommand{\@leadteacher}{}
\newcommand{\leadteacher}[1]{\renewcommand{\@leadteacher}{#1}}
\newcommand{\@leadteacherdept}{}
\newcommand{\leadteacherdept}[1]{\renewcommand{\@leadteacherdept}{#1}}
\newcommand{\@adviser}{}
\newcommand{\adviser}[1]{\renewcommand{\@adviser}{#1}}
\newcommand{\@adviserdept}{}
\newcommand{\adviserdept}[1]{\renewcommand{\@adviserdept}{#1}}
\newcommand{\@groupname}{}
\newcommand{\groupname}[1]{\renewcommand{\@groupname}{#1}}
\newcommand{\@groupmembers}{}
\newcommand{\groupmembers}[1]{\renewcommand{\@groupmembers}{#1}}
\newcommand{\@itinerary}{}
\newcommand{\itinerary}[1]{\renewcommand{\@itinerary}{#1}}

% 页眉页脚设置（正文页使用）
\setlength{\headheight}{15pt}
\pagestyle{fancy}
\fancyhf{}
\renewcommand{\headrulewidth}{0.4pt}
\fancyhead[C]{\small 西北工业大学伦敦玛丽女王大学工程学院生产实习报告}
\fancyfoot[C]{\thepage}
\fancypagestyle{plain}{\pagestyle{fancy}}

% ==================== 封面页（包含表单） ====================
\renewcommand{\maketitle}{%
    \thispagestyle{empty}
    \begin{tikzpicture}[remember picture, overlay]
        % 背景水印（学院院徽）
        \node[opacity=0.25, inner sep=0pt, anchor=south, yshift=2cm] at (current page.south) {
            \includegraphics[width=0.65\paperwidth]{figures/background.png}
        };
    \end{tikzpicture}
    
    \begin{center}
        
        % 两校校徽并排（西工大 + QMUL）
        \begin{tabular}{c@{\hspace{0.5cm}}c@{\hspace{0.5cm}}c}
            \includegraphics[height=1.8cm]{figures/logo1.png} & 
            \rule[-0.9cm]{0.9pt}{2cm} &
            \includegraphics[height=1.8cm]{figures/logo2.png}
        \end{tabular}
        
        \vspace{1.5cm}
        
        % 学校名称
        {\fontsize{22pt}{30pt}\selectfont\CJKfamily{sf}\bfseries 西北工业大学}
        
        \vspace{1cm}
        
        % 学院名称
        {\fontsize{22pt}{30pt}\selectfont\CJKfamily{sf}\bfseries 伦敦玛丽女王大学工程学院}
        
        \vspace{1.2cm}
        
        % 报告标题
        {\fontsize{36pt}{54pt}\selectfont\CJKfamily{sf}\bfseries 生产实习报告}
        
        \vspace{3.5cm}  % 增加标题下方的间距，为表单留出空间
        
        % ========== 压缩的表单内容 ==========
        \begin{minipage}{0.85\textwidth}
            \fontsize{12pt}{18pt}\selectfont\CJKfamily{sf}\bfseries
            \renewcommand{\arraystretch}{1.2}
            
            \begin{tabular}{@{}p{3.5cm}@{\hspace{0.5cm}}p{9cm}@{}}
                实习项目名称： & \underline{\makebox[9cm][l]{\@projectname}} \\[0.8em]
                目的地： & \underline{\makebox[9cm][l]{\@destination}} \\[0.8em]
                实习日期： & \underline{\makebox[3.5cm][l]{\@internshipstartdate}} \hspace{0.5cm}至\hspace{0.5cm} 
                            \underline{\makebox[3.5cm][l]{\@internshipenddate}} \\[0.8em]
                姓名： & \underline{\makebox[9cm][l]{\@studentname}} \\[0.8em]
                领队教师： & \underline{\makebox[9cm][l]{\@leadteacher}} \\[0.8em]
                指导教师： & \underline{\makebox[9cm][l]{\@adviser}}
            \end{tabular}
        \end{minipage}
        
        \vfill  % 将内容推到底部
        
    \end{center}
}

% ==================== 信息表页（第2页） ====================
\newcommand{\makeinfotable}{%
    \thispagestyle{empty}
    \begin{center}
        \renewcommand{\arraystretch}{2.0}
        \begin{tabular}{|>{\centering\arraybackslash\fontsize{14pt}{21pt}\selectfont\CJKfamily{sf}}p{3.5cm}|
                        >{\centering\arraybackslash\fontsize{14pt}{21pt}\selectfont}p{3cm}|
                        >{\centering\arraybackslash\fontsize{14pt}{21pt}\selectfont\CJKfamily{sf}}p{2.5cm}|
                        >{\centering\arraybackslash\fontsize{14pt}{21pt}\selectfont}p{4cm}|}
            \hline
            \textbf{实习项目名称} & \multicolumn{3}{c|}{\@projectname} \\
            \hline
            \textbf{起止时间} & \multicolumn{3}{c|}{\@internshipstartdate\ 至\ \@internshipenddate} \\
            \hline
            \textbf{目的地} & \multicolumn{3}{c|}{\@destination} \\
            \hline
            \textbf{姓名} & \@studentname & \textbf{学号} & \@studentid \\
            \hline
            \textbf{年级} & \@grade & \textbf{班级} & \@class \\
            \hline
            \multirow{2}{*}{\parbox{3cm}{\centering\textbf{领队教师}\\[0.3cm]}} 
                & \textbf{姓名} & \multicolumn{2}{c|}{\@leadteacher} \\
            \cline{2-4}
            & \textbf{所属部门} & \multicolumn{2}{c|}{\@leadteacherdept} \\
            \hline
            \multirow{2}{*}{\textbf{指导教师}} 
                & \textbf{姓名} & \multicolumn{2}{c|}{\@adviser} \\
            \cline{2-4}
            & \textbf{所属部门} & \multicolumn{2}{c|}{\@adviserdept} \\
            \hline
            \textbf{小组名称/} & \multicolumn{3}{c|}{\multirow{2}{*}{\@groupname\ / \@groupmembers}} \\
            \textbf{小组成员} & \multicolumn{3}{c|}{} \\
            \hline
            \textbf{实习行程} & \multicolumn{3}{l|}{
                \begin{minipage}[t]{8.5cm}
                    \fontsize{12pt}{24pt}\selectfont
                    \@itinerary

                \end{minipage}
            } \\
            \hline
        \end{tabular}
        
    \end{center}
    \newpage
}
