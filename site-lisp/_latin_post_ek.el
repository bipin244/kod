;;;;;;;;;;;;;;;;;;;;;;;;;
(quail-define-package
 "turkish-postfix" "Latin-5" "TR<" t
 "
" nil t nil nil nil nil nil nil nil nil t)

(quail-define-rules
;; ("A;" ?�)
;; ("a;" ?�)
 ("C;" ?Ç)
 ("c;" ?ç)
 ("G;" ?Ğ)
 ("g;" ?ğ)
 ("I;" ?İ)
 ("i;" ?ı)
 ("a;" ?â)
 ("O;" ?Ö)
 ("o;" ?ö)
 ("S;" ?Ş)
 ("s;" ?ş)
 ("U;" ?Ü)
 ("u;" ?ü)
;; ("U^" ?�)
;; ("u^" ?�)

 ("A;;" ["A;"])
 ("a;;" ["a;"])
 ("C;;" ["C;"])
 ("c;;" ["c;"])
 ("G;;" ["G;"])
 ("g;;" ["g;"])
 ("I;;" ["I;"])
 ("i;;" ["i;"])
 ("O;;" ["O;"])
 ("o;;" ["o;"])
 ("S;;" ["S;"])
 ("s;;" ["s;"])
 ("U;;" ["U;"])
 ("u;;" ["u;"])
 ("U^^" ["U^"])
 ("u^^" ["u^"])
 )

