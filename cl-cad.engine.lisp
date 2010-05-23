(in-package :cl-cad)

(defvar *current-draw* nil)

(defun add-file-properties (file-name subject author keywords comments hyperlink created modified)
  (push (list :title "file-properties" :file-name file-name :subject subject :author author :keywords keywords :comments comments :hyperlink hyperlink :created created :modified modified) *current-draw*))

(defun add-sheet-properties (format hpole vpole background-color metrics space)
  (push (list :title "sheet-properties" :format format :hpole hpole :vpole vpole :background-color background-color :metrics metrics :space space) *current-draw*))

(defun add-layer (layer-name line-type color-line weight printable view)
  (push (list :title "layer" :layer-name layer-name :line-type line-type :color-line color-line :weight weight :printable printable :view view) *current-draw*))

(defun add-line (layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
  (push (list :title "line" :layer layer :x1 x1 :y1 y1 :z1 z1 :x2 x2 :y2 y2 :z2 z2 :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

(defun add-circle (layer x1 y1 z1 radius line-type zoom-line color-line weight)
  (push (list :title "circle" :layer layer :x1 x1 :y1 y1 :z1 z1 :radius radius :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

(defun add-arc (layer x1 y1 z1 radius startangle endangle line-type zoom-line color-line weight)
  (push (list :title "arc" :layer layer :x1 x1 :y1 y1 :z1 z1 :radius radius :startangle startangle :endangle endangle :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

(defun add-continious (layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
  (push (list :title "continious" :layer layer :x1 x1 :y1 y1 :z1 z1 :x2 x2 :y2 y2 :z2 z2 :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

(defun add-ray (layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
  (push (list :title "ray" :layer layer :x1 x1 :y1 y1 :z1 z1 :x2 x2 :y2 y2 :z2 z2 :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

(defun add-text (layer x1 y1 z1 count style annotate alignment height angle compression mirror mirror-left line-type zoom-line color-line weight)
  (push (list :title "text" :layer layer :x1 x1 :y1 y1 :z1 z1 :count count :style style :annotate annotate :alignment alignment :height height :angle angle :compression compression :mirror mirror :mirror-left mirror-left :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

(defun add-mtext (layer x1 y1 z1 count style annotate alignment height angle interval zoom-line color-line weight)
  (push (list :title "mtext" :layer layer :x1 x1 :y1 y1 :z1 z1 :count count :style style :annotate annotate :alignment alignment :height height :angle angle :interval interval :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

(defun add-block (layer name-block x1 y1 z1 xscale yscale zscale count rotation)
  (push (list :title "block" :layer layer :name-block name-block :x1 x1 :y1 y1 :z1 z1 :xscale xscale :yscale yscale :zscale zscale :count count :rotation rotation) *current-draw*))

(defun add-point (layer x1 y1 z1 color-line style)
  (push (list :title "point" :layer layer :x1 x1 :y1 y1 :z1 z1 :color-line color-line :style style) *current-draw*))

(defun add-ellipse (layer x1 y1 z1 major-radius minor-radius radius-ratio start-angle end-angle color-line weight)
  (push (list :title "ellipse" :layer layer :x1 x1 :y1 y1 :z1 z1 :major-radius major-radius :minor-radius minor-radius :radius-ratio radius-ratio :start-angle start-angle :end-angle end-angle :color-line color-line :weight weight) *current-draw*))

(defun add-raster-image (layer x1 y1 z1 rotation-angle width height scale brightness contrast fade path show-image show-clipped transparency)
  (push (list :title "raster-image" :layer layer :x1 x1 :y1 y1 :z1 z1 :rotation-angle rotation-angle :width width :height height :scale scale :brightness brightness :contrast contrast :fade fade :path path :show-image show-image :show-clipped show-clipped :transparency transparency) *current-draw*))

;(defstruct file-properties file-name subject author keywords comments hyperlink created modified)
;(defstruct sheet-properties format hpole vpole background-color units space)
;(defstruct layer layer-name line-type color-line weight printable view)
;(defstruct line layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
;(defstruct circle layer x1 y1 z1 radius line-type zoom-line color-line weight)
;(defstruct arc layer x1 y1 z1 radius startangle endangle line-type zoom-line color-line weight)
;(defstruct continious layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
;(defstruct ray layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
;(defstruct text layer x1 y1 z1 count style annotate alignment height angle compression mirror mirror-left line-type zoom-line color-line weight)
;(defstruct mtext layer x1 y1 z1 count style annotate alignment height angle interval zoom-line color-line weight)
;(defstruct brick layer name-block x1 y1 z1 xscale yscale zscale count rotation)
;(defstruct point layer x1 y1 z1 color-line style)
;(defstruct ellipse layer x1 y1 z1 major-radius minor-radius radius-ratio start-angle end-angle color-line weight)
;(defstruct raster-image layer x1 y1 z1 rotation-angle width height scale brightness contrast fade path show-image show-clipped transparency)

;(defun add-sheet-properties (format hpole vpole background-color units space)
;  (push (make-sheet-properties :format format :hpole hpole :vpole vpole :background-color background-color :units units :space space) *current-draw*))

;(defun add-layer (layer-name line-type color-line weight printable view)
;  (push (make-layer :layer-name layer-name :line-type line-type :color-line color-line :weight weight :printable printable :view view) *current-draw*))

;(defun add-line (layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
;  (push (make-line :layer layer :x1 x1 :y1 y1 :z1 z1 :x2 x2 :y2 y2 :z2 z2 :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

;(defun add-circle (layer x1 y1 z1 radius line-type zoom-line color-line weight)
;  (push (make-circle :layer layer :x1 x1 :y1 y1 :z1 z1 :radius radius :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

;(defun add-arc (layer x1 y1 z1 radius startangle endangle line-type zoom-line color-line weight)
;  (push (make-arc :layer layer :x1 x1 :y1 y1 :z1 z1 :radius radius :startangle startangle :endangle endangle :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

;(defun add-continious (layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
;  (push (make-continious :layer layer :x1 x1 :y1 y1 :z1 z1 :x2 x2 :y2 y2 :z2 z2 :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

;(defun add-ray (layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight)
;  (push (make-ray :layer layer :x1 x1 :y1 y1 :z1 z1 :x2 x2 :y2 y2 :z2 z2 :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

;(defun add-text (layer x1 y1 z1 count style annotate alignment height angle compression mirror mirror-left line-type zoom-line color-line weight)
;  (push (make-text :layer layer :x1 x1 :y1 y1 :z1 z1 :count count :style style :annotate annotate :alignment alignment :height height :angle angle :compression compression :mirror mirror :mirror-left mirror-left :line-type line-type :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

;(defun add-mtext (layer x1 y1 z1 count style annotate alignment height angle interval zoom-line color-line weight)
;  (push (make-mtext :layer layer :x1 x1 :y1 y1 :z1 z1 :count count :style style :annotate annotate :alignment alignment :height height :angle angle :interval interval :zoom-line zoom-line :color-line color-line :weight weight) *current-draw*))

;(defun add-block (layer name-block x1 y1 z1 xscale yscale zscale count rotation)
;  (push (make-brick :layer layer :name-block name-block :x1 x1 :y1 y1 :z1 z1 :xscale xscale :yscale yscale :zscale zscale :count count :rotation rotation) *current-draw*))

;(defun add-point (layer x1 y1 z1 color-line)
;  (push (make-point :layer layer :x1 x1 :y1 y1 :z1 z1 :color-line color-line) *current-draw*))

;(defun add-ellipse (x1 y1 z1 major-radius minor-radius radius-ratio start-angle end-angle color-line weight)
;  (push (make-layer :x1 x1 :y1 y1 :z1 z1 :major-radius major-radius :minor-radius minor-radius :radius-ratio radius-ratio :start-angle start-angle :end-angle end-angle :color-line color-line :weight weight) *current-draw*))

;(defun add-raster-image (layer x1 y1 z1 rotation-angle width height scale brightness contrast fade path show-image show-clipped transparency)
;  (push (make-raster-image :layer layer :x1 x1 :y1 y1 :z1 z1 :rotation-angle rotation-angle :width width :height height :scale scale :brightness brightness :contrast contrast :fade fade :path path :show-image show-image :show-clipped show-clipped :transparency transparency) *current-draw*))

;(defclass file-properties ()
;  ((file-name :initarg :file-name)
;   (subject :initarg :subject)
;   (author :initarg :author)
;   (keywords :initarg :keywords)
;   (comments :initarg :hyperlink)
;   (created :initarg :modified)
;   (modified :initarg :modified)))

;(defclass sheet-properties ()
;  ((format :initarg :format)
;   (hpole :initarg :hpole)
;   (background-color :initarg :background-color)
;   (units :initarg :units)
;   (space :initarg :space)))

;(defclass layer ()
;  ((layer-name :initarg :layer-name)
;   (line-type :initarg :line-type)
;   (color-line :initarg :color-line)
;   (weight :initarg :weight)
;   (printable :initarg :printable)
;   (view :initarg :view)))

;(defclass line ()
;   ((layer :initarg :layer)
;    (x1 :initarg :x1)
;    (y1 :initarg :y1)
;    (z1 :initarg :z1)
;    (x2 :initarg :x2)
;    (y2 :initarg :y2)
;    (z2 :initarg :z2)
;    (line-type :initarg :line-type)
;    (zoom-line :initarg :zoom-line)
;    (color-line :initarg :color-line)
;    (weight :initarg :weight)))

;(defclass circle ()
;   ((layer :initarg :layer)
;    (x1 :initarg :x1)
;    (y1 :initarg :y1)
;    (z1 :initarg :z1)
;    (radius :initarg :radius)
;    (line-type :initarg :line-type)
;    (zoom-line :initarg :zoom-line)
;    (color-line :initarg :color-line)
;    (weight :initarg :weight)))

;(defclass arc ()
;   ((layer :initarg :layer)
;    (x1 :initarg :x1)
;    (y1 :initarg :y1)
;    (z1 :initarg :z1)
;    (radius :initarg :radius)
;    (startangle :initarg :startangle)
;    (endangle :initarg :endangle)
;    (line-type :initarg :line-type)
;    (zoom-line :initarg :zoom-line)
;    (color-line :initarg :color-line)
;    (weight :initarg :weight)))

;(defclass continious ()
;   ((layer :initarg :layer)
;    (x1 :initarg :x1)
;    (y1 :initarg :y1)
;    (z1 :initarg :z1)
;    (x2 :initarg :x2)
;    (y2 :initarg :y2)
;    (z2 :initarg :z2)
;    (line-type :initarg :line-type)
;    (zoom-line :initarg :zoom-line)
;    (color-line :initarg :color-line)
;    (weight :initarg :weight)))

;(defclass ray ()
;   ((layer :initarg :layer)
;    (x1 :initarg :x1)
;    (y1 :initarg :y1)
;    (z1 :initarg :z1)
;    (x2 :initarg :x2)
;    (y2 :initarg :y2)
;    (z2 :initarg :z2)
;    (line-type :initarg :line-type)
;    (zoom-line :initarg :zoom-line)
;    (color-line :initarg :color-line)
;    (weight :initarg :weight)))

;(defclass text ()
;  ((layer :initarg :layer)
;   (x1 :initarg :x1)
;   (y1 :initarg :y1)
;   (z1 :initarg :z1)
;   (count :initarg :count)
;   (style :initarg :style)
;   (annotate :initarg :annotate)
;   (alignment :initarg :alignment)
;   (height :initarg :height)
;   (angle :initarg :angle)
;   (compression :initarg :compression)
;   (mirror :initarg :mirror)
;   (mirror-left :initarg :mirror-left)))

;(defclass mtext ()
;  ((layer :initarg :layer)
;   (x1 :initarg :x1)
;   (y1 :initarg :y1)
;   (z1 :initarg :z1)
;   (count :initarg :count)
;   (style :initarg :style)
;   (annotate :initarg :annotate)
;   (alignment :initarg :alignment)
;   (height :initarg :height)
;   (angle :initarg :angle)
;   (interval :initarg :interval)))

;(defclass block ()
;  ((layer :initarg :layer)
;   (block-name :initarg :block-name)
;   (x1 :initarg :x1)
;   (y1 :initarg :y1)
;   (z1 :initarg :z1)
;   (xscale :initarg :xscale)
;   (yscale :initarg :yscale)
;   (zscale :initarg :zscale)
;   (count :initarg :count)
;   (rotation :initarg :rotation)))

;(defclass point ()
;  ((layer :initarg :layer)
;   (x1 :initarg :x1)
;   (y1 :initarg :y1)
;   (z1 :initarg :z1)
;   (color-line :initarg :color-line)
;   (style :initarg :style)))

;(defclass ellipse ()
;  ((layer :initarg :layer)
;   (x1 :initarg :x1)
;   (y1 :initarg :y1)
;   (z1 :initarg :z1)
;   (major-radius :initarg :major-radius)
;   (minor-radius :initarg :minor-radius)
;   (startangle :initarg :startangle)
;   (endangle :initarg :endangle)
;   (radius-ratio :initarg :radius-ratio)
;   (line-type :initarg :line-type)
;   (zoom-line :initarg :zoom-line)
;   (color-line :initarg :color-line)
;   (weight :initarg :weight)))

;(defstruct raster-image ()
;	   ((layer :initarg :layer)
;	    (x1 :initarg :x1)
;	    (y1 :initarg :y1)
;	    (z1 :initarg :z1)
;	    (rotation-angle :initarg :rotation-angle)
;	    (width :initarg :width)
;	    (height :initarg :height)
;	    (scale :initarg :scale)
;	    (brightness :initarg :brightness)
;	    (contrast :initarg :contrast)
;	    (fade :initarg :fade)
;	    (path :initarg :path)
;	    (show-image :initarg :show-image)
;	    (show-clipped :initarg :show-clipped)
;	    (transparency :initarg :transparency)))

(defun save-draw (filename)
	(with-open-file (out filename :direction :output :if-exists :supersede)
	(with-standard-io-syntax
		(print *current-draw* out))))

(defun open-draw (filename)
	(with-open-file (in filename)
	(with-standard-io-syntax
		(setf *current-draw* (read in)))))

(defun prompt-read (prompt)
	(format *query-io* "~a: " prompt)
	(force-output *query-io*)
	(read-line *query-io*))
	
(defun select (selector-fn)
  (remove-if-not selector-fn *current-draw*))

(defun delete-primitive (selector-fn)
  (setf *current-draw* (remove-if selector-fn *current-draw*)))

(defun make-comparisons-list (fields)
  (loop while fields
     collecting (make-comparison-expr (pop fields) (pop fields))))

(defun make-comparison-expr (field value)
  `(equal (getf cd ,field) ,value))

(defmacro where (&rest clauses)
  `#'(lambda (cd) (and ,@(make-comparisons-list clauses))))

(defun update (selector-fn &key title layer x1 y1 z1 x2 y2 z2 line-type zoom-line color-line weight style)
           (setf *current-draw*
               (mapcar
                #'(lambda (row)
                    (when (funcall selector-fn row)
                      (if title (setf (getf row :title) title))
                      (if layer (setf (getf row :layer) layer))
                      (if x1 (setf (getf row :x1) x1))
                      (if y1 (setf (getf row :y1) y1))
                      (if z1 (setf (getf row :z1) z1))
                      (if x2 (setf (getf row :x2) x2))
                      (if y2 (setf (getf row :y2) y2))
                      (if z2 (setf (getf row :z2) z2))
                      (if line-type (setf (getf row :line-type) line-type))
                      (if zoom-line (setf (getf row :zoom-line) zoom-line))
                      (if color-line (setf (getf row :color-line) color-line))
                      (if weight (setf (getf row :weight) weight))
                      (if style (setf (getf row :style) style)))
                row) *current-draw*)))

(defun update-properties (selector-fn &key file-name subject author keywords comments hyperlink created modified format hpole vpole background-color metrics space)
           (setf *current-draw*
               (mapcar
                #'(lambda (row)
                    (when (funcall selector-fn row)
                      (if file-name (setf (getf row :file-name) file-name))
                      (if subject (setf (getf row :subject) subject))
                      (if author (setf (getf row :author) author))
                      (if keywords (setf (getf row :keywords) keywords))
                      (if comments (setf (getf row :comments) comments))
                      (if hyperlink (setf (getf row :hyperlink) hyperlink))
                      (if created (setf (getf row :created) created))
                      (if modified (setf (getf row :modified) modified))
                      (if format (setf (getf row :format) format))
                      (if hpole (setf (getf row :hpole) hpole))
                      (if vpole (setf (getf row :vpole) vpole))
                      (if background-color (setf (getf row :background-color) background-color))
                      (if metrics (setf (getf row :metrics) metrics))
                      (if space (setf (getf row :space) space)))
                row) *current-draw*)))
;sample
;(update (where :title "title") :x1 1