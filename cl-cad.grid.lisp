(in-package :cl-cad)

(defun draw-space ()
  (move-to (* *scroll-units* 200) (* *scroll-units* 10))
  (line-to (* *scroll-units* 100) (* *scroll-units* 10))
  (line-to (* *scroll-units* 100) (* *scroll-units* 400))
  (line-to (* *scroll-units* 700) (* *scroll-units* 400))
  (line-to (* *scroll-units* 700) (* *scroll-units* 10))
  (line-to (* *scroll-units* 300) (* *scroll-units* 10))
  (set-source-rgb 0.2 0.2 1)
  (set-line-width 4)
  (stroke)
  (rectangle (* *scroll-units* 110) (* *scroll-units* 50) (* *scroll-units* 105) (* *scroll-units* 345))
  (set-source-rgb 1 1 1)
  (fill-path)
  (rectangle (* *scroll-units* 420) (* *scroll-units* 15) (* *scroll-units* 150) (* *scroll-units* 50))
  (set-source-rgb 1 1 1)
  (fill-path)
  (rectangle (* *scroll-units* 320) (* *scroll-units* 15) (* *scroll-units* 80) (* *scroll-units* 80))
  (set-source-rgb 1 1 1)
  (fill-path)
  (rectangle (* *scroll-units* 500) (* *scroll-units* 300) (* *scroll-units* 195) (* *scroll-units* 95))
  (set-source-rgb 1 1 0.5)
  (fill-path)
  (rectangle (* *scroll-units* 600) (* *scroll-units* 100) (* *scroll-units* 95) (* *scroll-units* 295))
  (set-source-rgb 1 1 0.5)
  (fill-path))

(defun screen-drawer (w h)
  (draw-2d-space w h)
  (if (equal *osnap-grid* t)
      (draw-grid w h *grid-step*)
      nil)
  (parser w h)
  (draw-shadow))

(defun draw-2d-space (w h)
  (save)
  (set-source-rgb 
   (color-gtk-to-cairo (color-red (config-drawing-area-color *config*)))
   (color-gtk-to-cairo (color-green (config-drawing-area-color *config*)))
   (color-gtk-to-cairo (color-blue (config-drawing-area-color *config*))))
  (paint)
  (restore)
  (set-source-rgb 0 1 0)
  (move-to 10 (- h 10))
  (line-to 10 (- h 80))
  (stroke)
  (move-to 10 (- h 10))
  (line-to 90 (- h 10))
  (stroke)
  (move-to 6 (- h 85))
  (set-font-size 15)
  (set-source-rgb 0 0 1)
  (show-text "y")
  (move-to 95 (- h 6))
  (show-text "x")
  (stroke))

(defun draw-grid (w h step)
  (loop for a from 0 to h by step 
     do (horiz-grid a w))
  (loop for b from 0 to w by step
     do (vert-grid b h)))

(defun horiz-grid (a w)
  (save)
  (set-source-rgb 0 1 1)
  (set-line-width 0.5)
  (move-to 0 a)
  (line-to w a)
  (stroke))

(defun vert-grid (b h)
  (save)
  (move-to b 0)
  (line-to b h)
  (stroke))