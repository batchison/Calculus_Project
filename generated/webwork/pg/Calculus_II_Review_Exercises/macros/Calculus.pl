#############################################################################
# This macro library supports WeBWorK problems from the PreTeXt project named
# Calculus II Review Exercises
#############################################################################


TEXT(
    MODES(
        HTML => '<div style="display:none;">' . general_math_ev3(<<'EOF') . '</div>',
\require{cancel}
\newcommand\blank[2]{\,\colorbox{gray}{$\phantom{\rule{#1pt}{#2pt}}$}\,}
\newcommand{\highlight}[1]{{\color{blue}{#1}}}
\newcommand{\ds}{\displaystyle}
\newcommand{\fp}{f\hskip.75pt '}
\newcommand{\fpp}{f\hskip.75pt ''}

\newcommand{\lz}[2]{\frac{d#1}{d#2}}
\newcommand{\lzn}[3]{\frac{d^{#1}#2}{d#3^{#1}}}
\newcommand{\lzo}[1]{\frac{d}{d#1}}
\newcommand{\lzoo}[2]{{\frac{d}{d#1}}{\left(#2\right)}}
\newcommand{\lzon}[2]{\frac{d^{#1}}{d#2^{#1}}}
\newcommand{\lzoa}[3]{\left.{\frac{d#1}{d#2}}\right|_{#3}}
\newcommand{\plz}[2]{\frac{\partial#1}{\partial#2}}
\newcommand{\plzoa}[3]{\left.{\frac{\partial#1}{\partial#2}}\right|_{#3}}

\newcommand{\inflim}[1][n]{\lim\limits_{#1 \to \infty}}

\newcommand{\primeskip}{\hskip.75pt }
\newcommand{\infser}[1][1]{\sum_{n=#1}^\infty}
\newcommand{\Fp}{F\hskip.75pt '}
\newcommand{\Fpp}{F\hskip.75pt ''}
\newcommand{\yp}{y\hskip.75pt '}
\newcommand{\gp}{g\hskip.75pt '}
\newcommand{\dx}{\Delta x}
\newcommand{\dy}{\Delta y}
\newcommand{\ddz}{\Delta z}
\newcommand{\thet}{\theta}
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newcommand{\vnorm}[1]{\left\lVert\vec #1\right\rVert}
\newcommand{\snorm}[1]{\left|\left|\,#1\,\right|\right|}
\newcommand{\la}{\left\langle}
\newcommand{\ra}{\right\rangle}
\newcommand{\dotp}[2]{\vec #1 \cdot \vec #2}
\newcommand{\proj}[2]{\text{proj}_{\,\vec #2}{\,\vec #1}}
\newcommand{\crossp}[2]{\vec #1 \times \vec #2}
\newcommand{\veci}{\vec i}
\newcommand{\vecj}{\vec j}
\newcommand{\veck}{\vec k}
\newcommand{\vecu}{\vec u}
\newcommand{\vecv}{\vec v}
\newcommand{\vecw}{\vec w}
\newcommand{\vecx}{\vec x}
\newcommand{\vecy}{\vec y}
\newcommand{\vrp}{\vec r\hskip0.75pt '}
\newcommand{\vrpp}{\vec r\hskip0.75pt ''}
\newcommand{\vsp}{\vec s\hskip0.75pt '}
\newcommand{\vrt}{\vec r(t)}
\newcommand{\vst}{\vec s(t)}
\newcommand{\vvt}{\vec v(t)}
\newcommand{\vat}{\vec a(t)}
\newcommand{\px}{\partial x}
\newcommand{\py}{\partial y}
\newcommand{\pz}{\partial z}
\newcommand{\pf}{\partial f}
\newcommand{\unittangent}{\vec{{}T}}
\newcommand{\unitnormal}{\vec{N}}
\newcommand{\unittangentprime}{\vec{{}T}\hskip0.75pt '}
\newcommand{\R}{mathbb{R}}
\newcommand{\mathN}{\mathbb{N}}
\newcommand{\surfaceS}{\mathcal{S}}
\newcommand{\zerooverzero}{\displaystyle \raisebox{8pt}{\text{``\ }}\frac{0}{0}\raisebox{8pt}{\textit{ ''}}}
\newcommand{\abs}[1]{\left\lvert #1\right\rvert}
\newcommand{\sech}{\operatorname{sech}}
\newcommand{\csch}{\operatorname{csch}}
\newcommand{\curl}{\operatorname{curl}}
\newcommand{\divv}{\operatorname{div}}
\newcommand{\Hess}{\operatorname{Hess}}
\newcommand{\amp}{&}
EOF
        TeX => '\ifdefined\ptxmacros\else ' . <<'EOF'
\require{cancel}
\newcommand\blank[2]{\,\colorbox{gray}{$\phantom{\rule{#1pt}{#2pt}}$}\,}
\newcommand{\highlight}[1]{{\color{blue}{#1}}}
\newcommand{\ds}{\displaystyle}
\newcommand{\fp}{f\hskip.75pt '}
\newcommand{\fpp}{f\hskip.75pt ''}

\newcommand{\lz}[2]{\frac{d#1}{d#2}}
\newcommand{\lzn}[3]{\frac{d^{#1}#2}{d#3^{#1}}}
\newcommand{\lzo}[1]{\frac{d}{d#1}}
\newcommand{\lzoo}[2]{{\frac{d}{d#1}}{\left(#2\right)}}
\newcommand{\lzon}[2]{\frac{d^{#1}}{d#2^{#1}}}
\newcommand{\lzoa}[3]{\left.{\frac{d#1}{d#2}}\right|_{#3}}
\newcommand{\plz}[2]{\frac{\partial#1}{\partial#2}}
\newcommand{\plzoa}[3]{\left.{\frac{\partial#1}{\partial#2}}\right|_{#3}}

\newcommand{\inflim}[1][n]{\lim\limits_{#1 \to \infty}}

\newcommand{\primeskip}{\hskip.75pt }
\newcommand{\infser}[1][1]{\sum_{n=#1}^\infty}
\newcommand{\Fp}{F\hskip.75pt '}
\newcommand{\Fpp}{F\hskip.75pt ''}
\newcommand{\yp}{y\hskip.75pt '}
\newcommand{\gp}{g\hskip.75pt '}
\newcommand{\dx}{\Delta x}
\newcommand{\dy}{\Delta y}
\newcommand{\ddz}{\Delta z}
\newcommand{\thet}{\theta}
\newcommand{\norm}[1]{\left\lVert#1\right\rVert}
\newcommand{\vnorm}[1]{\left\lVert\vec #1\right\rVert}
\newcommand{\snorm}[1]{\left|\left|\,#1\,\right|\right|}
\newcommand{\la}{\left\langle}
\newcommand{\ra}{\right\rangle}
\newcommand{\dotp}[2]{\vec #1 \cdot \vec #2}
\newcommand{\proj}[2]{\text{proj}_{\,\vec #2}{\,\vec #1}}
\newcommand{\crossp}[2]{\vec #1 \times \vec #2}
\newcommand{\veci}{\vec i}
\newcommand{\vecj}{\vec j}
\newcommand{\veck}{\vec k}
\newcommand{\vecu}{\vec u}
\newcommand{\vecv}{\vec v}
\newcommand{\vecw}{\vec w}
\newcommand{\vecx}{\vec x}
\newcommand{\vecy}{\vec y}
\newcommand{\vrp}{\vec r\hskip0.75pt '}
\newcommand{\vrpp}{\vec r\hskip0.75pt ''}
\newcommand{\vsp}{\vec s\hskip0.75pt '}
\newcommand{\vrt}{\vec r(t)}
\newcommand{\vst}{\vec s(t)}
\newcommand{\vvt}{\vec v(t)}
\newcommand{\vat}{\vec a(t)}
\newcommand{\px}{\partial x}
\newcommand{\py}{\partial y}
\newcommand{\pz}{\partial z}
\newcommand{\pf}{\partial f}
\newcommand{\unittangent}{\vec{{}T}}
\newcommand{\unitnormal}{\vec{N}}
\newcommand{\unittangentprime}{\vec{{}T}\hskip0.75pt '}
\newcommand{\R}{mathbb{R}}
\newcommand{\mathN}{\mathbb{N}}
\newcommand{\surfaceS}{\mathcal{S}}
\newcommand{\zerooverzero}{\displaystyle \raisebox{8pt}{\text{``\ }}\frac{0}{0}\raisebox{8pt}{\textit{ ''}}}
\newcommand{\abs}[1]{\left\lvert #1\right\rvert}
\newcommand{\sech}{\operatorname{sech}}
\newcommand{\csch}{\operatorname{csch}}
\newcommand{\curl}{\operatorname{curl}}
\newcommand{\divv}{\operatorname{div}}
\newcommand{\Hess}{\operatorname{Hess}}
\newcommand{\amp}{&}
\def\ptxmacros{}
EOF
. '\fi',
        PTX => ''
    )
);

# Return a string containing the latex-image-preamble contents.
# To be used by LaTeXImage objects as in:
# $image->addToPreamble(latexImagePreamble())

sub latexImagePreamble {
return <<'END_LATEX_IMAGE_PREAMBLE'
\usepackage[dvipsnames]{xcolor}
\usepackage{pgfplots}
\usepackage{tikz-cd}
\usetikzlibrary{positioning,matrix,arrows,arrows.meta}

\usetikzlibrary{shapes,decorations,shadows,fadings,plotmarks}
\usepgfplotslibrary{fillbetween,decorations.softclip,polar}

\usepackage{tkz-euclide}
%\usetkzobj{all}
%%% uncomment above line if on TeXLive 2017 or earlier %%%

\definecolor{magenta}{rgb}{0.79216,0.12156,0.48236} 
\colorlet{firstcolor}{blue}
\colorlet{secondcolor}{red}
\colorlet{thirdcolor}{magenta}
\colorlet{treestump}{brown}
\colorlet{treetop}{green!50!black}
\colorlet{yellowcolfill}{yellow}
\pgfplotsset{firstcurvestyle/.style={color=firstcolor,mark=none,thick,-,solid,fill=firstcolor!50,fill=none}}
\pgfplotsset{secondcurvestyle/.style={color=secondcolor,mark=none,thick,-,dashdotted,fill=secondcolor!50,fill=none}}
\pgfplotsset{thirdcurvestyle/.style={color=thirdcolor,mark=none,thick,-,dashdotdotted,fill=thirdcolor!50,fill=none}}
\pgfplotsset{areastyle/.style={fill,opacity=0.5,draw=none}}
\pgfplotsset{tangentline/.style={color=black,mark=none,thick,{Kite}-{Kite},solid}}
\pgfplotsset{tangentlineseg/.style={color=black,mark=none,thick,-,solid}}
\pgfplotsset{lineseg/.style={color=black,mark=none,solid}}
\pgfplotsset{normalline/.style={color=black,mark=none,thick,{Kite}-{Kite},dashed}}
\pgfplotsset{normallineseg/.style={color=black,mark=none,thick,-,dashed}}
\pgfplotsset{secantline/.style={color=black,mark=none,thin,{Kite}-{Kite},dashed}}
\pgfplotsset{secantlineseg/.style={color=black,mark=none,thin,-,dashed}}
\pgfplotsset{asymptote/.style={color=black,mark=none,thick,{Kite}-{Kite},dashed}}
\pgfplotsset{guideline/.style={color=black,mark=none,-}}
\pgfplotsset{symmetryline/.style={color=black,mark=none,-,dashed}}
\pgfplotsset{openinterval/.style={color=black,mark=none,ultra thick,shorten <=-2.4pt,shorten >=-2.4pt,{Parenthesis}-{Parenthesis}}}
\pgfplotsset{closedinterval/.style={color=black,mark=none,ultra thick,shorten <=-2.4pt,shorten >=-2.4pt,{Bracket}-{Bracket}}}

\pgfplotscreateplotcyclelist{curvestylelist}{%
  firstcurvestyle\\%
  secondcurvestyle\\%
  thirdcurvestyle\\%
}

%To disable arrows, edit these and the above lines accordingly
\pgfplotsset{leftarrow/.style={{Kite}-}}
\pgfplotsset{rightarrow/.style={-{Kite}}}

% Redefine these to be empty to turn off axis discontinuities
\pgfplotsset{xdiscontinuity/.style={axis x discontinuity=parallel}}
\pgfplotsset{ydiscontinuity/.style={axis y discontinuity=crunch}}

\pgfplotsset{hollowdot/.style={color=firstcolor,fill=white,only marks,mark=*}}
\pgfplotsset{soliddot/.style={color=firstcolor,fill=firstcolor,only marks,mark=*}}
\pgfplotsset{squaremark/.style={color=black,fill=black,only marks,mark size=6pt,mark=square*}}

\pgfplotsset{open/.style={shorten <=-2.4pt,shorten >=-2.4pt,{Circle[open]}-{Circle[open]}}}
\pgfplotsset{openclosed/.style={shorten <=-2.4pt,shorten >=-2.4pt,{Circle[open]}-{Circle}}}
\pgfplotsset{closed/.style={shorten <=-2.4pt,shorten >=-2.4pt,{Circle}-{Circle}}}
\pgfplotsset{closedopen/.style={shorten <=-2.4pt,shorten >=-2.4pt,{Circle}-{Circle[open]}}}
\pgfplotsset{infiniteopen/.style={shorten >=-2.4pt,{Kite}-{Circle[open]}}}
\pgfplotsset{openinfinite/.style={shorten <=-2.4pt,{Circle[open]}-{Kite}}}
\pgfplotsset{infiniteclosed/.style={shorten >=-2.4pt,{Kite}-{Circle}}}
\pgfplotsset{closedinfinite/.style={shorten <=-2.4pt,{Circle}-{Kite}}}
\pgfplotsset{infinite/.style={{Kite}-{Kite}}}
\pgfplotsset{infiniteleft/.style={{Kite}-}}
\pgfplotsset{infiniteright/.style={-{Kite}}}
\pgfplotsset{openleft/.style={shorten <=-2.4pt,{Circle[open]}-}}
\pgfplotsset{openright/.style={shorten >=-2.4pt,-{Circle[open]}}}
\pgfplotsset{closedleft/.style={shorten <=-2.4pt,{Circle}-}}
\pgfplotsset{closedright/.style={shorten >=-2.4pt,-{Circle}}}

\pgfplotsset{every axis/.append style = {
  cycle list name = curvestylelist,
  %tick label style = {font = \scriptsize},
  axis x line = middle,
  axis y line = middle,
  xlabel = {$x$},
  ylabel = {$y$},
  %x label style = {font = \scriptsize},
  %y label style = {font = \scriptsize},
  minor x tick num = 1,
  minor y tick num = 1,
  %width = {ifthenelse(.9\linewidth>240pt,240pt,.9\linewidth)},
  name=myplot,
}}

\pgfplotsset{numberline/.style = {
  xmin=-10,xmax=10,
  minor xtick={-11,-10,...,11},
  xtick={-10,-5,...,10},
  axis y line=none,
  every axis x label/.style={at={(current axis.right of origin)},anchor=west},
  y=15pt,
  axis lines=middle,
  enlarge x limits,
  xlabel={},
  grid=none,
  clip=false,
  axis background/.style={},
}}
%%temporary fix to get circles working right in TexLive 2019

\makeatletter
\def\pgfplots@install@path@replacements{%
    \ifpgfplots@path@replace@ellipse
        \let\tikz@do@circle=\pgfplots@path@@tikz@do@circle
        \let\tikz@do@ellipse=\pgfplots@path@@tikz@do@circle
        \expandafter\def\expandafter\pgfinterruptpicture\expandafter{\pgfinterruptpicture
            \let\tikz@do@circle=\pgfplots@path@@tikz@do@circle@orig
            \let\tikz@do@ellipse=\pgfplots@path@@tikz@do@ellipse@orig
        }%
    \fi
}%
\let\pgfplots@path@@tikz@do@circle@orig=\tikz@do@circle
\let\pgfplots@path@@tikz@do@ellipse@orig=\tikz@do@ellipse

\let\pgfplots@path@@tikz@do@circle@oldandbroken=\pgfplots@path@@tikz@do@circle
\def\pgfplots@path@@tikz@do@circle#1{\pgfplots@path@@tikz@do@circle@oldandbroken{#1}{#1}}
\def\pgfplots@path@@tikz@do@ellipse#1#2{\pgfplots@path@@tikz@do@circle@oldandbroken{#1}{#2}}
\makeatother

END_LATEX_IMAGE_PREAMBLE
}

1;
