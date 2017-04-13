(with-eval-after-load 'ox-latex
  (add-to-list 'org-latex-classes
               '("article-1"                          ;class-name
                 "\\documentclass{article}
\\usepackage[top=1in, bottom=1.in, left=2in, right=2in]{geometry}
 [PACKAGES]
 [EXTRA]" ;;header-string
                 ("\\section{%s}" . "\\section*{%s}")
                 ("\\subsection{%s}" . "\\subsection*a{%s}")
                 ("\\subsubsection{%s}" . "\\subsubsection*{%s}")
                 ("\\paragraph{%s}" . "\\paragraph*{%s}")
                 ("\\subparagraph{%s}" . "\\subparagraph*{%s}"))))