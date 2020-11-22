(ns dactyl-keyboard.dactyl
  (:refer-clojure :exclude [use import])
  (:require [scad-clj.scad :refer :all]
            [scad-clj.model :refer :all]
            [dactyl-keyboard.util :refer :all]
            [unicode-math.core :refer :all]))

;;;;;;;;;;;;;;;;;
;; Switch Hole ;;
;;;;;;;;;;;;;;;;;

(def keyswitch-height 14.4) ;; Was 14.1, then 14.25
(def keyswitch-width 14.4)

(def sa-profile-key-height 12.7)

(def plate-thickness 4)
(def mount-width (+ keyswitch-width 3))
(def mount-height (+ keyswitch-height 3))

(def old-single-plate
  (let [top-wall (->> (cube (+ keyswitch-width 3) 1.5 plate-thickness)
                      (translate [0
                                  (+ (/ 1.5 2) (/ keyswitch-height 2))
                                  (/ plate-thickness 2)]))
        left-wall (->> (cube 1.5 (+ keyswitch-height 3) plate-thickness)
                       (translate [(+ (/ 1.5 2) (/ keyswitch-width 2))
                                   0
                                   (/ plate-thickness 2)]))
        side-nub (->> (binding [*fn* 30] (cylinder 1 2.75))
                      (rotate (/ π 2) [1 0 0])
                      (translate [(+ (/ keyswitch-width 2)) 0 1])
                      (hull (->> (cube 1.5 2.75 plate-thickness)
                                 (translate [(+ (/ 1.5 2) (/ keyswitch-width 2))
                                             0
                                             (/ plate-thickness 2)]))))
        plate-half (union top-wall left-wall (with-fn 100 side-nub))]
    (union plate-half
           (->> plate-half
                (mirror [1 0 0])
                (mirror [0 1 0])))))

(def alps-width 15.6)
(def alps-notch-width 15.5)
(def alps-notch-height 1)
(def alps-height 13)

(def single-plate
  (let [top-wall (->> (cube (+ keyswitch-width 3) 2.2 plate-thickness)
                      (translate [0
                                  (+ (/ 2.2 2) (/ alps-height 2))
                                  (/ plate-thickness 2)]))
        left-wall (union (->> (cube 1.5 (+ keyswitch-height 3) plate-thickness)
                              (translate [(+ (/ 1.5 2) (/ 15.6 2))
                                          0
                                          (/ plate-thickness 2)]))
                         (->> (cube 1.5 (+ keyswitch-height 3) 1.0)
                              (translate [(+ (/ 1.5 2) (/ alps-notch-width 2))
                                          0
                                          (- plate-thickness
                                             (/ alps-notch-height 2))]))
                         )
        plate-half (union top-wall left-wall)]
    (union plate-half
           (->> plate-half
                (mirror [1 0 0])
                (mirror [0 1 0])))))


;;;;;;;;;;;;;;;;
;; SA Keycaps ;;
;;;;;;;;;;;;;;;;

(def sa-length 18.25)
(def sa-double-length 37.5)
(def sa-cap {1 (let [bl2 (/ 18.5 2)
                     m (/ 17 2)
                     key-cap (hull (->> (polygon [[bl2 bl2] [bl2 (- bl2)] [(- bl2) (- bl2)] [(- bl2) bl2]])
                                        (extrude-linear {:height 0.1 :twist 0 :convexity 0})
                                        (translate [0 0 0.05]))
                                   (->> (polygon [[m m] [m (- m)] [(- m) (- m)] [(- m) m]])
                                        (extrude-linear {:height 0.1 :twist 0 :convexity 0})
                                        (translate [0 0 6]))
                                   (->> (polygon [[6 6] [6 -6] [-6 -6] [-6 6]])
                                        (extrude-linear {:height 0.1 :twist 0 :convexity 0})
                                        (translate [0 0 12])))]
                 (->> key-cap
                      (translate [0 0 (+ 5 plate-thickness)])
                      (color [220/255 163/255 163/255 1])))
             2 (let [bl2 (/ sa-double-length 2)
                     bw2 (/ 18.25 2)
                     key-cap (hull (->> (polygon [[bw2 bl2] [bw2 (- bl2)] [(- bw2) (- bl2)] [(- bw2) bl2]])
                                        (extrude-linear {:height 0.1 :twist 0 :convexity 0})
                                        (translate [0 0 0.05]))
                                   (->> (polygon [[6 16] [6 -16] [-6 -16] [-6 16]])
                                        (extrude-linear {:height 0.1 :twist 0 :convexity 0})
                                        (translate [0 0 12])))]
                 (->> key-cap
                      (translate [0 0 (+ 5 plate-thickness)])
                      (color [127/255 159/255 127/255 1])))
             1.5 (let [bl2 (/ 18.25 2)
                       bw2 (/ 28 2)
                       key-cap (hull (->> (polygon [[bw2 bl2] [bw2 (- bl2)] [(- bw2) (- bl2)] [(- bw2) bl2]])
                                          (extrude-linear {:height 0.1 :twist 0 :convexity 0})
                                          (translate [0 0 0.05]))
                                     (->> (polygon [[11 6] [-11 6] [-11 -6] [11 -6]])
                                          (extrude-linear {:height 0.1 :twist 0 :convexity 0})
                                          (translate [0 0 12])))]
                   (->> key-cap
                        (translate [0 0 (+ 5 plate-thickness)])
                        (color [240/255 223/255 175/255 1])))})

;;;;;;;;;;;;;;;;;;;;;;;;;
;; Placement Functions ;;
;;;;;;;;;;;;;;;;;;;;;;;;;

(def columns (range 0 6))
(def rows (range 0 5))

(def α (/ π 12))
(def β (/ π 36))
(def cap-top-height (+ plate-thickness sa-profile-key-height))
(def row-radius (+ (/ (/ (+ mount-height 1/2) 2)
                      (Math/sin (/ α 2)))
                   cap-top-height))
(def column-radius (+ (/ (/ (+ mount-width 2.0) 2)
                         (Math/sin (/ β 2)))
                      cap-top-height))

(defn key-place [column row shape]
  (let [row-placed-shape (->> shape
                              (translate [0 0 (- row-radius)])
                              (rotate (* α (- 2 row)) [1 0 0])
                              (translate [0 0 row-radius]))
        column (if (>= column 5) (+ column (* (+ -4 column) 0.25)) column)
        column-offset (cond
                        (= column 2) [0 2.82 -3.0] ;;was moved -4.5
                        (>= column 4) [0 -5.8 5.64]
                        :else [0 0 0])
        column-angle (* β (- 2 column))
        placed-shape (->> row-placed-shape
                          (translate [0 0 (- column-radius)])
                          (rotate column-angle [0 1 0])
                          (translate [0 0 column-radius])
                          (translate column-offset))]
    (->> placed-shape
         (rotate (/ π 10) [0 1 0])
         (translate [0 0 22]))))

(defn case-place [column row shape]
  (let [row-placed-shape (->> shape
                              (translate [0 0 (- row-radius)])
                              (rotate (* α (- 2 row)) [1 0 0])
                              (translate [0 0 row-radius]))
        column (if (> column 4.5) (+ column (* (+ -4.5 column) 0.5)) column)
        column-offset [0 -4.35 5.64]
        column-angle (* β (- 2 column))
        placed-shape (->> row-placed-shape
                          (translate [0 0 (- column-radius)])
                          (rotate column-angle [0 1 0])
                          (translate [0 0 column-radius])
                          (translate column-offset))]
    (->> placed-shape
         (rotate (/ π 10) [0 1 0])
         (translate [0 0 22]))))

(def key-holes
  (apply union
         (for [column columns
               row rows
               :when (or (not= column 0)
                         (not= row 4))]
           (->> single-plate
                (key-place column row)))))

(def caps
  (apply union
         (for [column columns
               row rows
               :when (or (not= column 0)
                         (not= row 4))]
           (->> (sa-cap (if (= column 5) 1.5 1))
                (key-place column row)))))

;;;;;;;;;;;;;;;;;;;;
;; Web Connectors ;;
;;;;;;;;;;;;;;;;;;;;

(def web-thickness 3.5)
(def post-size 0.1)
(def web-post (->> (cube post-size post-size web-thickness)
                   (translate [0 0 (+ (/ web-thickness -2)
                                      plate-thickness)])))

(def post-adj (/ post-size 2))
(def web-post-tr (translate [(- (/ mount-width 2) post-adj) (- (/ mount-height 2) post-adj) 0] web-post))
(def web-post-tl (translate [(+ (/ mount-width -2) post-adj) (- (/ mount-height 2) post-adj) 0] web-post))
(def web-post-bl (translate [(+ (/ mount-width -2) post-adj) (+ (/ mount-height -2) post-adj) 0] web-post))
(def web-post-br (translate [(- (/ mount-width 2) post-adj) (+ (/ mount-height -2) post-adj) 0] web-post))

(def connectors
  (apply union
         (concat
          ;; Row connections
          (for [column (drop-last columns)
                row rows
                :when (or (not= column 0)
                          (not= row 4))]
            (triangle-hulls
             (key-place (inc column) row web-post-tl)
             (key-place column row web-post-tr)
             (key-place (inc column) row web-post-bl)
             (key-place column row web-post-br)))

          ;; Column connections
          (for [column columns
                row (drop-last rows)
                :when (or (not= column 0)
                          (not= row 3))]
            (triangle-hulls
             (key-place column row web-post-bl)
             (key-place column row web-post-br)
             (key-place column (inc row) web-post-tl)
             (key-place column (inc row) web-post-tr)))

          ;; Diagonal connections
          (for [column (drop-last columns)
                row (drop-last rows)
                :when (or (not= column 0)
                          (not= row 3))]
            (triangle-hulls
             (key-place column row web-post-br)
             (key-place column (inc row) web-post-tr)
             (key-place (inc column) row web-post-bl)
             (key-place (inc column) (inc row) web-post-tl))))))

;;;;;;;;;;;;
;; Thumbs ;;
;;;;;;;;;;;;

(defn thumb-place [column row shape]
  (let [cap-top-height (+ plate-thickness sa-profile-key-height)
        α (/ π 12)
        row-radius (+ (/ (/ (+ mount-height 1) 2)
                         (Math/sin (/ α 2)))
                      cap-top-height)
        β (/ π -36)
        column-radius (+ (/ (/ (+ mount-width 2) 2)
                            (Math/sin (/ β 2)))
                         cap-top-height)
        #_(+ (/ (/ (+ pillar-width 5) 2)
                            (Math/sin (/ β 2)))
                         cap-top-height)]
    (->> shape
         (translate [0 0 (- row-radius)])
         (rotate (* α row) [1 0 0])
         (translate [0 0 row-radius])
         (translate [0 0 (- column-radius)])
         (rotate (* column β) [0 1 0])
         (translate [0 0 column-radius])
         (translate [mount-width 0 0])
         (rotate (* π 3/16) [0 0 1])
         (rotate (/ π 12) [1 1 0])
         (rotate (/ π -8/3) [-1 1 0])
         (translate [-52 -45 39]))))

(defn thumb-2x-column [shape]
  (thumb-place 0 -1/2 shape))

(defn thumb-2x+1-column [shape]
  (union (thumb-place 1 -1/2 shape)
         (thumb-place 1 1 shape)))

(defn thumb-1x-column [shape]
  (union (thumb-place 2 -1 shape)
         (thumb-place 2 0 shape)
         (thumb-place 2 1 shape)))

(defn thumb-layout [shape]
  (union
   (thumb-2x-column shape)
   (thumb-2x+1-column shape)
   (thumb-1x-column shape)))

(def double-plates
  (let [plate-height (/ (- sa-double-length mount-height) 2)
        top-plate (->> (cube mount-width plate-height web-thickness)
                       (translate [0 (/ (+ plate-height mount-height) 2)
                                   (- plate-thickness (/ web-thickness 2))]))
        stabilizer-cutout (union (->> (cube 14.2 3.5 web-thickness)
                                      (translate [0.5 12 (- plate-thickness (/ web-thickness 2))])
                                      (color [1 0 0 1/2]))
                                 (->> (cube 16 3.5 web-thickness)
                                      (translate [0.5 12 (- plate-thickness (/ web-thickness 2) 1.4)])
                                      (color [1 0 0 1/2])))
        top-plate (difference top-plate stabilizer-cutout)]
    (union top-plate (mirror [0 1 0] top-plate))))

(def thumbcaps
  (union
   (thumb-2x-column (sa-cap 2))
   (thumb-place 1 -1/2 (sa-cap 2))
   (thumb-place 1 1 (sa-cap 1))
   (thumb-1x-column (sa-cap 1))))

(def thumb-connectors
  (union
   (apply union
          (concat
           (for [column [2] row [1]]
             (triangle-hulls (thumb-place column row web-post-br)
                             (thumb-place column row web-post-tr)
                             (thumb-place (dec column) row web-post-bl)
                             (thumb-place (dec column) row web-post-tl)))
           (for [column [2] row [0 1]]
             (triangle-hulls
              (thumb-place column row web-post-bl)
              (thumb-place column row web-post-br)
              (thumb-place column (dec row) web-post-tl)
              (thumb-place column (dec row) web-post-tr)))))
   (let [plate-height (/ (- sa-double-length mount-height) 2)
         thumb-tl (->> web-post-tl
                       (translate [0 plate-height 0]))
         thumb-bl (->> web-post-bl
                       (translate [0 (- plate-height) 0]))
         thumb-tr (->> web-post-tr
                       (translate [0 plate-height 0]))
         thumb-br (->> web-post-br
                       (translate [0 (- plate-height) 0]))]
     (union

      ;;Connecting the two doubles
      (triangle-hulls (thumb-place 0 -1/2 thumb-tl)
                      (thumb-place 0 -1/2 thumb-bl)
                      (thumb-place 1 -1/2 thumb-tr)
                      (thumb-place 1 -1/2 thumb-br))

      ;;Connecting the double to the one above it
      (triangle-hulls (thumb-place 1 -1/2 thumb-tr)
                      (thumb-place 1 -1/2 thumb-tl)
                      (thumb-place 1 1 web-post-br)
                      (thumb-place 1 1 web-post-bl))

      ;;Connecting the 4 with the double in the bottom left
      (triangle-hulls (thumb-place 1 1 web-post-bl)
                      (thumb-place 1 -1/2 thumb-tl)
                      (thumb-place 2 1 web-post-br)
                      (thumb-place 2 0 web-post-tr))

      ;;Connecting the two singles with the middle double
      (hull (thumb-place 1 -1/2 thumb-tl)
            (thumb-place 1 -1/2 thumb-bl)
            (thumb-place 2 0 web-post-br)
            (thumb-place 2 -1 web-post-tr))
      (hull (thumb-place 1 -1/2 thumb-tl)
            (thumb-place 2 0 web-post-tr)
            (thumb-place 2 0 web-post-br))
      (hull (thumb-place 1 -1/2 thumb-bl)
            (thumb-place 2 -1 web-post-tr)
            (thumb-place 2 -1 web-post-br))

      ;;Connecting the thumb to everything
      (triangle-hulls (thumb-place 0 -1/2 thumb-br)
                      (key-place 1 4 web-post-bl)
                      (thumb-place 0 -1/2 thumb-tr)
                      (key-place 1 4 web-post-tl)
                      (key-place 1 3 web-post-bl)
                      (thumb-place 0 -1/2 thumb-tr)
                      (key-place 0 3 web-post-br)
                      (key-place 0 3 web-post-bl)
                      (thumb-place 0 -1/2 thumb-tr)
                      (thumb-place 0 -1/2 thumb-tl)
                      (key-place 0 3 web-post-bl)
                      (thumb-place 1 -1/2 thumb-tr)
                      (thumb-place 1 1 web-post-br)
                      (key-place 0 3 web-post-bl)
                      (key-place 0 3 web-post-tl)
                      (thumb-place 1 1 web-post-br)
                      (thumb-place 1 1 web-post-tr))
      (hull (thumb-place 0 -1/2 web-post-tr)
            (thumb-place 0 -1/2 thumb-tr)
            (key-place 1 4 web-post-bl)
            (key-place 1 4 web-post-tl))))))

(def thumb
  (union
   thumb-connectors
   (thumb-layout (rotate (/ π 2) [0 0 1] single-plate))
   (thumb-place 0 -1/2 double-plates)
   (thumb-place 1 -1/2 double-plates)))

;;;;;;;;;;
;; Case ;;
;;;;;;;;;;

;; In column units
(def right-wall-column (+ (last columns) 0.55))
(def left-wall-column (- (first columns) 1/2))
(def thumb-back-y 0.93)
(def thumb-right-wall (- -1/2 0.05))
(def thumb-front-row (+ -1 0.07))
(def thumb-left-wall-column (+ 5/2 0.05))
(def back-y 0.02)

(defn range-inclusive [start end step]
  (concat (range start end step) [end]))

(def wall-step 0.2)
(def wall-sphere-n 20) ;;Sphere resolution, lower for faster renders

(defn wall-sphere-at [coords]
  (->> (sphere 1)
       (translate coords)
       (with-fn wall-sphere-n)))

(defn scale-to-range [start end x]
  (+ start (* (- end start) x)))

(defn wall-sphere-bottom [front-to-back-scale]
  (wall-sphere-at [0
                   (scale-to-range
                    (+ (/ mount-height -2) -3.5)
                    (+ (/ mount-height 2) 5.0)
                    front-to-back-scale)
                   -6]))

(defn wall-sphere-top [front-to-back-scale]
  (wall-sphere-at [0
                   (scale-to-range
                    (+ (/ mount-height -2) -3.5)
                    (+ (/ mount-height 2) 3.5)
                    front-to-back-scale)
                   10]))

(def wall-sphere-top-back (wall-sphere-top 1))
(def wall-sphere-bottom-back (wall-sphere-bottom 1))
(def wall-sphere-bottom-front (wall-sphere-bottom 0))
(def wall-sphere-top-front (wall-sphere-top 0))

(defn top-case-cover [place-fn sphere
                 x-start x-end
                 y-start y-end
                 step]
  (apply union
         (for [x (range-inclusive x-start (- x-end step) step)
               y (range-inclusive y-start (- y-end step) step)]
           (hull (place-fn x y sphere)
                 (place-fn (+ x step) y sphere)
                 (place-fn x (+ y step) sphere)
                 (place-fn (+ x step) (+ y step) sphere)))))

(defn curtain [& shapes]
  (hull
    shapes
    (translate [0 0 -100] (union shapes))))

(def front-wall
  (let [step wall-step ;;0.1
        wall-step 0.05 ;;0.05
        place case-place
        top-cover (fn [x-start x-end y-start y-end]
                    (top-case-cover place wall-sphere-top-front
                                    x-start x-end y-start y-end
                                    wall-step))]
    (union
     (apply union
            (for [x (range-inclusive 0.7 (- right-wall-column step) step)]
              (hull (place x 4 wall-sphere-top-front)
                    (place (+ x step) 4 wall-sphere-top-front)
                    (place x 4 wall-sphere-bottom-front)
                    (place (+ x step) 4 wall-sphere-bottom-front))))
     (apply union
            (for [x (range-inclusive 0.5 0.7 0.01)]
              (hull (place x 4 wall-sphere-top-front)
                    (place (+ x step) 4 wall-sphere-top-front)
                    (place 0.7 4 wall-sphere-bottom-front))))
     (top-cover 0.5 1.7 3.6 4)
     (top-cover 1.59 2.41 3.35 4) ;; was 3.32
     (top-cover 2.39 3.41 3.6 4)
     (apply union
            (for [x (range 2 5)]
              (union
               (hull (place (- x 1/2) 4 (translate [0 1 1] wall-sphere-bottom-front))
                     (place (+ x 1/2) 4 (translate [0 1 1] wall-sphere-bottom-front))
                     (key-place x 4 web-post-bl)
                     (key-place x 4 web-post-br))
               (hull (place (- x 1/2) 4 (translate [0 1 1] wall-sphere-bottom-front))
                     (key-place x 4 web-post-bl)
                     (key-place (- x 1) 4 web-post-br)))))
     (hull (place right-wall-column 4 (translate [0 1 1] wall-sphere-bottom-front))
           (place (- right-wall-column 1) 4 (translate [0 1 1] wall-sphere-bottom-front))
           (key-place 5 4 web-post-bl)
           (key-place 5 4 web-post-br))
     (hull (place (+ 4 1/2) 4 (translate [0 1 1] wall-sphere-bottom-front))
           (place (- right-wall-column 1) 4 (translate [0 1 1] wall-sphere-bottom-front))
           (key-place 4 4 web-post-br)
           (key-place 5 4 web-post-bl))
     (hull (place 0.7 4 (translate [0 1 1] wall-sphere-bottom-front))
           (place 1.7 4 (translate [0 1 1] wall-sphere-bottom-front))
           (key-place 1 4 web-post-bl)
           (key-place 1 4 web-post-br))
     ; Curtains (from bottom edge of walls to z=0):
     (apply union
            (for [x (range-inclusive 0.7 (- right-wall-column step) step)]
              (curtain
                (place x 4 (translate [-0.5 0.5 0.5] wall-sphere-bottom-front))
                (place (+ x step) 4 (translate [-0.5 0.5 0.5] wall-sphere-bottom-front))
                )))
     )))

(def back-wall
  (let [step wall-step
        wall-sphere-top-backtep 0.05
        place case-place
        front-top-cover (fn [x-start x-end y-start y-end]
                          (apply union
                                 (for [x (range-inclusive x-start (- x-end wall-sphere-top-backtep) wall-sphere-top-backtep)
                                       y (range-inclusive y-start (- y-end wall-sphere-top-backtep) wall-sphere-top-backtep)]
                                   (hull (place x y wall-sphere-top-back)
                                         (place (+ x wall-sphere-top-backtep) y wall-sphere-top-back)
                                         (place x (+ y wall-sphere-top-backtep) wall-sphere-top-back)
                                         (place (+ x wall-sphere-top-backtep) (+ y wall-sphere-top-backtep) wall-sphere-top-back)))))]
    (union
     (apply union
            (for [x (range-inclusive left-wall-column (- right-wall-column step) step)]
              (hull (place x back-y wall-sphere-top-back)
                    (place (+ x step) back-y wall-sphere-top-back)
                    (place x back-y wall-sphere-bottom-back)
                    (place (+ x step) back-y wall-sphere-bottom-back))))
     (front-top-cover 1.56 2.44 back-y 0.1)
     (front-top-cover 3.56 4.44 back-y 0.13)
     (front-top-cover 4.3 right-wall-column back-y 0.13)


     (hull (place left-wall-column 0 (translate [1 -1 1] wall-sphere-bottom-back))
           (place (+ left-wall-column 1) 0  (translate [0 -1 1] wall-sphere-bottom-back))
           (key-place 0 0 web-post-tl)
           (key-place 0 0 web-post-tr))

     (hull (place 5 0 (translate [0 -1 1] wall-sphere-bottom-back))
           (place right-wall-column 0 (translate [0 -1 1] wall-sphere-bottom-back))
           (key-place 5 0 web-post-tl)
           (key-place 5 0 web-post-tr))

     (apply union
            (for [x (range 1 5)]
              (union
               (hull (place (- x 1/2) 0 (translate [0 -1 1] wall-sphere-bottom-back))
                     (place (+ x 1/2) 0 (translate [0 -1 1] wall-sphere-bottom-back))
                     (key-place x 0 web-post-tl)
                     (key-place x 0 web-post-tr))
               (hull (place (- x 1/2) 0 (translate [0 -1 1] wall-sphere-bottom-back))
                     (key-place x 0 web-post-tl)
                     (key-place (- x 1) 0 web-post-tr)))))
     (hull (place (- 5 1/2) 0 (translate [0 -1 1] wall-sphere-bottom-back))
           (place 5 0 (translate [0 -1 1] wall-sphere-bottom-back))
           (key-place 4 0 web-post-tr)
           (key-place 5 0 web-post-tl))

     ; Curtains (from bottom edge of walls to z=0):
     (curtain
       (place left-wall-column 0 (translate [0.5 -0.75 0.5] wall-sphere-bottom-back))
       (place (+ left-wall-column 1) 0  (translate [0 -0.75 0.5] wall-sphere-bottom-back)))
     (curtain
       (place 5 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back))
       (place right-wall-column 0 (translate [-0.5 -0.75 0.5] wall-sphere-bottom-back)))
     (apply union
            (for [x (range 1 5)]
              (union
                (curtain
                  (place (- x 1/2) 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back))
                  (place (+ x 1/2) 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back))))))
     (curtain
       (place (- 5 1/2) 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back))
       (place 5 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back)))
     )))

(def right-wall
  (let [place case-place]
    (union
      (apply union
             (map (partial apply hull)
                  (partition 2 1
                             (for [scale (range-inclusive 0 1 0.01)]
                               (let [x (scale-to-range 4 0.02 scale)]
                                 (hull (place right-wall-column x (wall-sphere-top scale))
                                       (place right-wall-column x (wall-sphere-bottom scale))))))))

      (apply union
             (concat
               (for [x (range 0 5)]
                 (union
                   (hull (place right-wall-column x (translate [-1 0 1] (wall-sphere-bottom 1/2)))
                         (key-place 5 x web-post-br)
                         (key-place 5 x web-post-tr))))
               (for [x (range 0 4)]
                 (union
                   (hull (place right-wall-column x (translate [-1 0 1] (wall-sphere-bottom 1/2)))
                         (place right-wall-column (inc x) (translate [-1 0 1] (wall-sphere-bottom 1/2)))
                         (key-place 5 x web-post-br)
                         (key-place 5 (inc x) web-post-tr))))
               [(union
                  (hull (place right-wall-column 0 (translate [-1 0 1] (wall-sphere-bottom 1/2)))
                        (place right-wall-column 0.02 (translate [-1 -1 1] (wall-sphere-bottom 1)))
                        (key-place 5 0 web-post-tr))
                  (hull (place right-wall-column 4 (translate [-1 0 1] (wall-sphere-bottom 1/2)))
                        (place right-wall-column 4 (translate [-1 1 1] (wall-sphere-bottom 0)))
                        (key-place 5 4 web-post-br)))]))
      ; Curtains (from bottom edge of walls to z=0):
      (apply union
             (concat
               (for [x (range 0 4)]
                 (union
                   (curtain
                     (place right-wall-column x (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2)))
                     (place right-wall-column (inc x) (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2))))
                   ))
               [(union
                  (curtain
                    (place right-wall-column 0 (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2)))
                    (place right-wall-column 0.02 (translate [-0.5 -0.5 0.5] (wall-sphere-bottom 1))))
                  (curtain
                    (place right-wall-column 4 (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2)))
                    (place right-wall-column 4 (translate [-0.5 0.5 0.5] (wall-sphere-bottom 0))))
                  )]))
     )))

(def left-wall
  (let [place case-place]
    (union
     (apply union
            (for [x (range-inclusive -1 (- 1.6666 wall-step) wall-step)]
              (hull (place left-wall-column x wall-sphere-top-front)
                    (place left-wall-column (+ x wall-step) wall-sphere-top-front)
                    (place left-wall-column x wall-sphere-bottom-front)
                    (place left-wall-column (+ x wall-step) wall-sphere-bottom-front))))
     (hull (place left-wall-column -1 wall-sphere-top-front)
           (place left-wall-column -1 wall-sphere-bottom-front)
           (place left-wall-column 0.02 wall-sphere-top-back)
           (place left-wall-column 0.02 wall-sphere-bottom-back))
     (hull (place left-wall-column 0 (translate [1 -1 1] wall-sphere-bottom-back))
           (place left-wall-column 1 (translate [1 0 1] wall-sphere-bottom-back))
           (key-place 0 0 web-post-tl)
           (key-place 0 0 web-post-bl))
     (hull (place left-wall-column 1 (translate [1 0 1] wall-sphere-bottom-back))
           (place left-wall-column 2 (translate [1 0 1] wall-sphere-bottom-back))
           (key-place 0 0 web-post-bl)
           (key-place 0 1 web-post-bl))
     (hull (place left-wall-column 2 (translate [1 0 1] wall-sphere-bottom-back))
           (place left-wall-column 1.6666  (translate [1 0 1] wall-sphere-bottom-front))
           (key-place 0 1 web-post-bl)
           (key-place 0 2 web-post-bl))
     (hull (place left-wall-column 1.6666  (translate [1 0 1] wall-sphere-bottom-front))
           (key-place 0 2 web-post-bl)
           (key-place 0 3 web-post-tl))
     (hull (place left-wall-column 1.6666  (translate [1 0 1] wall-sphere-bottom-front))
           (thumb-place 1 1 web-post-tr)
           (key-place 0 3 web-post-tl))
     (hull (place left-wall-column 1.6666 (translate [1 0 1] wall-sphere-bottom-front))
           (thumb-place 1 1 web-post-tr)
           (thumb-place 1/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back)))
     ; Curtains (from bottom edge of walls to z=0):
     (curtain
       (place left-wall-column 0 (translate [0.5 -0.75 0.5] wall-sphere-bottom-back))
       (place left-wall-column 1 (translate [0.5 0 0.5] wall-sphere-bottom-back)))
     (curtain
       (place left-wall-column 1 (translate [0.5 0 0.5] wall-sphere-bottom-back))
       (place left-wall-column 2 (translate [0.5 0 0.5] wall-sphere-bottom-back)))
     (curtain
       (place left-wall-column 2 (translate [0.5 0 0.5] wall-sphere-bottom-back))
       (place left-wall-column 1.6666  (translate [0.5 0 0.5] wall-sphere-bottom-front)))
     )))

(def thumb-back-wall
  (let [step wall-step
        top-step 0.05
        front-top-cover (fn [x-start x-end y-start y-end]
                          (apply union
                                 (for [x (range-inclusive x-start (- x-end top-step) top-step)
                                       y (range-inclusive y-start (- y-end top-step) top-step)]
                                   (hull (thumb-place x y wall-sphere-top-back)
                                         (thumb-place (+ x top-step) y wall-sphere-top-back)
                                         (thumb-place x (+ y top-step) wall-sphere-top-back)
                                         (thumb-place (+ x top-step) (+ y top-step) wall-sphere-top-back)))))
        back-y thumb-back-y]
    (union
     (apply union
            (for [x (range-inclusive 1/2 (- (+ 5/2 0.05) step) step)]
              (hull (thumb-place x back-y wall-sphere-top-back)
                    (thumb-place (+ x step) back-y wall-sphere-top-back)
                    (thumb-place x back-y wall-sphere-bottom-back)
                    (thumb-place (+ x step) back-y wall-sphere-bottom-back))))
     (hull
       (thumb-place 1/2 back-y wall-sphere-top-back)
       (thumb-place 1/2 back-y wall-sphere-bottom-back)
       (case-place left-wall-column 1.6666 wall-sphere-top-front))
     (hull
       (thumb-place 1/2 back-y wall-sphere-bottom-back)
       (case-place left-wall-column 1.6666 wall-sphere-top-front)
       (case-place left-wall-column 1.6666 wall-sphere-bottom-front))
     (hull
      (thumb-place 1/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back))
      (thumb-place 1 1 web-post-tr)
      (thumb-place 3/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back))
      (thumb-place 1 1 web-post-tl))
     (hull
      (thumb-place (+ 5/2 0.05) thumb-back-y (translate [1 -1 1] wall-sphere-bottom-back))
      (thumb-place 3/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back))
      (thumb-place 1 1 web-post-tl)
      (thumb-place 2 1 web-post-tl))
     ; Curtains (from bottom edge of walls to z=0):
     (curtain
       (thumb-place 1/2 back-y wall-sphere-bottom-back)
       (case-place left-wall-column 1.6666 (translate [0.5 0 0.5] wall-sphere-bottom-front)))
     (curtain
       (thumb-place 1/2 back-y wall-sphere-bottom-back)
       (thumb-place 3/2 thumb-back-y wall-sphere-bottom-back))
     (curtain
       (thumb-place (+ 5/2 0.05) thumb-back-y wall-sphere-bottom-back)
       (thumb-place 3/2 thumb-back-y wall-sphere-bottom-back))
     )))

(def thumb-left-wall
  (let [step wall-step
        place thumb-place]
    (union
     (apply union
            (for [x (range-inclusive (+ -1 0.07) (- 1.95 step) step)]
              (hull (place thumb-left-wall-column x wall-sphere-top-front)
                    (place thumb-left-wall-column (+ x step) wall-sphere-top-front)
                    (place thumb-left-wall-column x wall-sphere-bottom-front)
                    (place thumb-left-wall-column (+ x step) wall-sphere-bottom-front))))
     (hull (place thumb-left-wall-column 1.95 wall-sphere-top-front)
           (place thumb-left-wall-column 1.95 wall-sphere-bottom-front)
           (place thumb-left-wall-column thumb-back-y wall-sphere-top-back)
           (place thumb-left-wall-column thumb-back-y wall-sphere-bottom-back))

     (hull
      (thumb-place thumb-left-wall-column thumb-back-y (translate [1 -1 1] wall-sphere-bottom-back))
      (thumb-place thumb-left-wall-column 0 (translate [1 0 1] wall-sphere-bottom-back))
      (thumb-place 2 1 web-post-tl)
      (thumb-place 2 1 web-post-bl))
     (hull
      (thumb-place thumb-left-wall-column 0 (translate [1 0 1] wall-sphere-bottom-back))
      (thumb-place 2 0 web-post-tl)
      (thumb-place 2 1 web-post-bl))
     (hull
      (thumb-place thumb-left-wall-column 0 (translate [1 0 1] wall-sphere-bottom-back))
      (thumb-place thumb-left-wall-column -1 (translate [1 0 1] wall-sphere-bottom-back))
      (thumb-place 2 0 web-post-tl)
      (thumb-place 2 0 web-post-bl))
     (hull
      (thumb-place thumb-left-wall-column -1 (translate [1 0 1] wall-sphere-bottom-back))
      (thumb-place 2 -1 web-post-tl)
      (thumb-place 2 0 web-post-bl))
     (hull
      (thumb-place thumb-left-wall-column -1 (translate [1 0 1] wall-sphere-bottom-back))
      (thumb-place thumb-left-wall-column (+ -1 0.07) (translate [1 1 1] wall-sphere-bottom-front))
      (thumb-place 2 -1 web-post-tl)
      (thumb-place 2 -1 web-post-bl))
     ; Curtains (from bottom edge of walls to z=0):
     (curtain
       (thumb-place thumb-left-wall-column thumb-back-y wall-sphere-bottom-back)
       (thumb-place thumb-left-wall-column 0 wall-sphere-bottom-back))
     (curtain
       (thumb-place thumb-left-wall-column 0 wall-sphere-bottom-back)
       (thumb-place thumb-left-wall-column -1 wall-sphere-bottom-back))
     (curtain
       (thumb-place thumb-left-wall-column -1 wall-sphere-bottom-back)
       (thumb-place thumb-left-wall-column (+ -1 0.07) wall-sphere-bottom-front))
     )))

(def thumb-front-wall
  (let [step wall-step ;;0.1
        wall-sphere-top-fronttep 0.05 ;;0.05
        place thumb-place
        plate-height (/ (- sa-double-length mount-height) 2)
        thumb-tl (->> web-post-tl
                      (translate [0 plate-height 0]))
        thumb-bl (->> web-post-bl
                      (translate [0 (- plate-height) 0]))
        thumb-tr (->> web-post-tr
                      (translate [-0 plate-height 0]))
        thumb-br (->> web-post-br
                      (translate [-0 (- plate-height) 0]))]
    (union
     (apply union
            (for [x (range-inclusive thumb-right-wall (- (+ 5/2 0.05) step) step)]
              (hull (place x thumb-front-row wall-sphere-top-front)
                    (place (+ x step) thumb-front-row wall-sphere-top-front)
                    (place x thumb-front-row wall-sphere-bottom-front)
                    (place (+ x step) thumb-front-row wall-sphere-bottom-front))))

     (hull (place thumb-right-wall thumb-front-row wall-sphere-top-front)
           (place thumb-right-wall thumb-front-row wall-sphere-bottom-front)
           (case-place 0.5 4 wall-sphere-top-front))
     (hull (place thumb-right-wall thumb-front-row wall-sphere-bottom-front)
           (case-place 0.5 4 wall-sphere-top-front)
           (case-place 0.7 4 wall-sphere-bottom-front))

     (hull (place thumb-right-wall thumb-front-row wall-sphere-bottom-front)
           (key-place 1 4 web-post-bl)
           (place 0 -1/2 thumb-br)
           (place 0 -1/2 web-post-br)
           (case-place 0.7 4 wall-sphere-bottom-front))

     (hull (place (+ 5/2 0.05) thumb-front-row (translate [1 1 1] wall-sphere-bottom-front))
           (place (+ 3/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place 2 -1 web-post-bl)
           (place 2 -1 web-post-br))

     (hull (place thumb-right-wall thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place (+ 1/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place 0 -1/2 thumb-bl)
           (place 0 -1/2 thumb-br))
     (hull (place (+ 1/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place (+ 3/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place 0 -1/2 thumb-bl)
           (place 1 -1/2 thumb-bl)
           (place 1 -1/2 thumb-br)
           (place 2 -1 web-post-br))
     ; Curtains (from bottom edge of walls to z=0):
     (curtain
       (place (+ 5/2 0.05) thumb-front-row wall-sphere-bottom-front)
       (place (+ 3/2 0.05) thumb-front-row (translate [0 1 0.5] wall-sphere-bottom-front)))
     (curtain
       (place (+ 1/2 0.05) thumb-front-row (translate [0 1.5 0.5] wall-sphere-bottom-front))
       (place (+ 3/2 0.05) thumb-front-row (translate [0 1 0.5] wall-sphere-bottom-front)))
     (curtain
       (case-place 0.7 4 (translate [1 0 1.5] wall-sphere-bottom-front))
       (place (+ 1/2 0.05) thumb-front-row (translate [0 1.5 0.5] wall-sphere-bottom-front)))
     )))

(def new-case
  (union front-wall
         right-wall
         back-wall
         left-wall
         thumb-back-wall
         thumb-left-wall
         thumb-front-wall))

(def new-case-trimmed
  (difference
    new-case
    (->> (cube 1000 1000 100) (translate [0 0 -50]))))

;;;;;;;;;;;;;;;;;;;;;;;;;;;
;; Boards and Connectors ;;
;;;;;;;;;;;;;;;;;;;;;;;;;;;

(def trrs-diameter 7.85)
(def trrs-radius (/ trrs-diameter 2))
(def trrs-hole-depth 13)

(def trrs-hole (->> (union (cylinder trrs-radius trrs-hole-depth)
                           (->> (cube trrs-diameter (+ trrs-radius 5) trrs-hole-depth)
                                (translate [0 (/ (+ trrs-radius 5) 2) 0])))
                    (rotate (/ π 2.9) [0 1 0])
                    (translate [(+ (/ mount-height -4) 4) 0 (- -20 trrs-radius)])
                    (with-fn 50)))

(def trrs-hole-just-circle
  (->> (cylinder trrs-radius trrs-hole-depth)
       (rotate (/ π 2.9) [0 1 0])
       (translate [(+ (/ mount-height -4) 4) 0 (- -20 trrs-radius)])
       (with-fn 50)
       (key-place 0 3/2)))

(def trrs-box-hole (->> (cube 14 14 7 )
                        (translate [0 1 -3.5])))

(def trrs-cutout
  (->> (union trrs-hole
              trrs-box-hole)
       (key-place 1/2 0)))


(def usb-c-plug-dimensions [12.4 6.3 25])
(def usb-c-jack-dimensions [8.94 3.26 7.6])

; Or, rather, "the shape of a USB-C plug or jack" - the hull of two similar cylinders
(defn elongated-cylinder [[width height length]]
  (let [cylinder-offset (/ (- width height) 2)]
    (binding [*fs* 1]
      (hull
        (translate [cylinder-offset 0 (/ length 2)] (cylinder (/ height 2) length))
        (translate [(- cylinder-offset) 0 (/ length 2)] (cylinder (/ height 2) length))))))

(def usb-c-plug (color [0.1 0.1 0.1] (elongated-cylinder usb-c-plug-dimensions)))
(def usb-c-jack (elongated-cylinder usb-c-jack-dimensions))


(defn board-shape-bare [[x y z]]
  (translate [0 0 (/ z 2)] (color [0.14 0.2 0.1] (cube x y z))))

(defn board-cutout-bare [[x y z]]
  (board-shape-bare [x y z]))

(def mount-post
  (difference
    (binding [*fs* 1] (translate [0 0 -2.5] (cylinder (* 0.75 2.54) 5)))
    (binding [*fs* 0.5] (translate [0 0 -1.5] (cylinder 0.75 3)))))

(defn board-mount-bare [[x y z]]
  (difference
    (union
      (translate [(/ x 2) (/ (+ y 0.375) 2) 0] mount-post)
      (translate [(/ x -2) (/ (+ y 0.375) 2) 0] mount-post)
      (translate [0 (- (/ y -2) 1) (- z 2.5)] (cube 5 5 (+ 5 (* 2 z)))))
    (board-cutout-bare [x y z])))

(defn board-shape-with-usb-c [[x y z]]
  (let [usb-offset (+ z (/ (nth usb-c-jack-dimensions 1) 2))]
    (union
      (translate [0 0 (/ z 2)] (color [0.14 0.2 0.1] (cube x y z)))
      (translate [0 (/ y 2) usb-offset] (rotate (/ π 2) [1 0 0] usb-c-jack))
      )))

(defn board-cutout-with-usb-c [[x y z]]
  (let [usb-offset (+ z (/ (nth usb-c-jack-dimensions 1) 2))]
    (union
      (board-shape-with-usb-c [x y z])
      (translate [0 (/ y 2) usb-offset] (rotate (/ π -2) [1 0 0] usb-c-plug))
      )))

(def mount-post
  (difference
    (binding [*fs* 1] (translate [0 0 -2.5] (cylinder (* 0.75 2.54) 5)))
    (binding [*fs* 0.5] (translate [0 0 -1.5] (cylinder 0.75 3)))))

(defn board-mount-with-usb-c [[x y z]]
  (difference
    (union
      (translate [(/ (- x 5.08) 2) (/ (- y 5.08) 2) 0] mount-post)
      (translate [(/ (- x 5.08) -2) (/ (- y 5.08) 2) 0] mount-post)
      (translate [0 (- (/ y -2) 1) (- z 2.5)] (cube 5 5 (+ 5 (* 2 z)))))
    (board-cutout-with-usb-c [x y z])))

; I know the Teensy and Pro Micro aren't USB-C, but it's an approximation that should suffice for Micro USB as well.
(def board-teensy [18 30.5 1.6])
(def board-shape-teensy (board-shape-with-usb-c board-teensy))
(def board-cutout-teensy (board-cutout-with-usb-c board-teensy))
(def board-mount-teensy (board-mount-with-usb-c board-teensy))

(def board-pro-micro [18 33.1 1.6])
(def board-shape-pro-micro (board-shape-with-usb-c board-pro-micro))
(def board-cutout-pro-micro (board-cutout-with-usb-c board-pro-micro))
(def board-mount-pro-micro (board-mount-with-usb-c board-pro-micro))

(def board-proton-c [18 50.88 1.6])
(def board-shape-proton-c (board-shape-with-usb-c board-proton-c))
(def board-cutout-proton-c (board-cutout-with-usb-c board-proton-c))
(def board-mount-proton-c (board-mount-with-usb-c board-proton-c))

(def board-pro-mini [18 33.1 1.6])
(def board-shape-pro-mini (board-shape-bare board-pro-mini))
(def board-cutout-pro-mini (board-cutout-bare board-pro-mini))
(def board-mount-pro-mini (board-mount-bare board-pro-mini))

(def board-position [-13 47 15])

(defn placed-board [shape]
  (->> shape
       (rotate (/ π 2) [1 0 0])
       (rotate (/ π -2) [0 1 0])
       (translate board-position)))

;;;;;;;;;;;;;;;;;;
;; Final Export ;;
;;;;;;;;;;;;;;;;;;

(def dactyl-top-right
  (difference
   (union key-holes
          connectors
          thumb
          new-case-trimmed
          (placed-board board-mount-proton-c))
   trrs-hole-just-circle
   (placed-board board-cutout-proton-c)))

(def dactyl-top-left
  (mirror [-1 0 0]
          (difference
           (union key-holes
                  connectors
                  thumb
                  new-case-trimmed
                  (placed-board board-mount-proton-c))
           trrs-hole-just-circle
           (placed-board board-cutout-proton-c))))

(spit "things/switch-hole.scad"
      (write-scad single-plate))

(spit "things/alps-holes.scad"
      (write-scad (union connectors key-holes)))

(spit "things/dactyl-top-right.scad"
      (write-scad dactyl-top-right))

(spit "things/dactyl-top-left.scad"
      (write-scad dactyl-top-left))

(spit "things/dactyl-top-left-with-teensy.scad"
      (write-scad (mirror [-1 0 0] dactyl-top-right)))

(spit "things/dactyl-top-right-preview.scad"
      (write-scad (union
                    (color [0.1 0.1 0.1] dactyl-top-right)
                    caps
                    thumbcaps
                    (placed-board board-shape-proton-c)
                    )))
