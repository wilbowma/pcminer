#lang racket/base

(require
 html-parsing
 sxml/sxpath)

(define (get-year-table year)
  (car
   ((sxpath (format "//following-sibling::li[a[@name='~a']]/table[1]" year))
    (html->xexp (open-input-file "lics-pc.html")))))

(define (get-pc year)
  (define t (get-year-table year))
  ((sxpath "//h4[text()='Program Committee:']") t))

(get-pc "2017")
