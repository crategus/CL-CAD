(in-package :cl-cad)

(defun screen-drawer (w h)
  (draw-2d-space)
  (if (equal *osnap-grid* t)
      (draw-grid w h *grid-step*)
      nil)
  (parser w h)
  (draw-shadow))

(defun draw-2d-space ()
  (save)
  (set-source-rgb 
   (color-gtk-to-cairo (color-red (config-drawing-area-color *config*)))
   (color-gtk-to-cairo (color-green (config-drawing-area-color *config*)))
   (color-gtk-to-cairo (color-blue (config-drawing-area-color *config*))))
  (paint)
  (restore))

(defun draw-grid (w h step)
  (if (>= *scroll-units* 4)
      (progn
	(loop for a from (+ 0 *screen-units-y*) to h by (* *scroll-units* step)
	   do (horiz-grid a w))
	(loop for b from (+ 0 *screen-units-x*) to w by (* *scroll-units* step)
	   do (vert-grid b h))))
  (if (>= *scroll-units* 6)
      (loop for a from (+ 0 *screen-units-x*) to w by (* *scroll-units* (/ step 5))
	 do (loop for b from (+ 0 *screen-units-y*) to h by (* *scroll-units* (/ step 5))
	       do (grid a b)))))

(defun horiz-grid (a w)
  (save)
  (set-source-rgb 0 1 1)
  (set-line-width 0.5)
  (set-dash 0 '(5 5))
  (move-to 0 a)
  (line-to w a)
  (stroke)
  (restore))

(defun vert-grid (b h)
  (save)
  (set-source-rgb 0 1 1)
  (set-line-width 0.5)
  (set-dash 0 '(5 5))
  (move-to b 0)
  (line-to b h)
  (stroke)
  (restore))
	
(defun grid (x y)
  (save)
  (set-source-rgb 1 1 1)
  (set-line-width 0.5)
  (rectangle (- x 0.5) (- y 0.5) 1 1)
  (fill-path))