(ns dactyl-keyboard.dactyl
  (:refer-clojure :exclude [use import])
  (:require [scad-clj.scad :refer :all]
            [scad-clj.model :refer :all]
            [dactyl-keyboard.util :refer :all]
            [unicode-math.core :refer :all]))

;;;;;;;;;;;;;;;;;
;; Switch Hole ;;
;;;;;;;;;;;;;;;;;

(def keyswitch-height 14.0) ;; Was 14.1, then 14.25, then 14.4
(def keyswitch-width 14.0)
(def keyswitch-depth 5.08) ; From the base of the switch to the mounting plate face

(def sa-profile-key-height 12.7)

(def plate-thickness 4)
(def notch-plate-thickness 1.3) ; The thickness of the plate at the notches where the switch's clips are located
(def notch-width 5)
(def notch-depth 0.5)
(def backplate-thickness 1.25)
(def backplate-orientation π)
(def mount-width (+ keyswitch-width 3))
(def mount-height (+ keyswitch-height 3))

(def cherry-single-plate
  (let [top-wall (->> (difference
                        (cube (+ keyswitch-width 3) 1.5 plate-thickness)
                        (->> (cube notch-width (* notch-depth 2) plate-thickness)  ; Notch for switch clips
                             (translate [0 -0.75 (- notch-plate-thickness)]))
                        )
                      (translate [0
                                  (+ (/ 1.5 2) (/ keyswitch-height 2))
                                  (/ plate-thickness 2)]))
        left-wall (->> (cube 1.5 (+ keyswitch-height 3) plate-thickness)
                       (translate [(+ (/ 1.5 2) (/ keyswitch-width 2))
                                   0
                                   (/ plate-thickness 2)]))
        plate-half (union top-wall left-wall)]
    (union plate-half
           (->> plate-half
                (mirror [1 0 0])
                (mirror [0 1 0])))))

(def alps-width 15.6)
(def alps-notch-width 15.5)
(def alps-notch-height 1)
(def alps-height 13)

(def alps-single-plate
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

(def cherry-backplate
  (rotate backplate-orientation [0 0 1]
    (difference
      (cube (+ keyswitch-width 3) (+ keyswitch-height 3) backplate-thickness)
      (binding [*fs* 0.5]
        (union
          (cylinder 1.9939 (+ backplate-thickness 1))
          (translate [5.08 0 0] (cylinder 0.8509 (+ backplate-thickness 1)))
          (translate [-5.08 0 0] (cylinder 0.8509 (+ backplate-thickness 1)))
          (translate [-3.81 2.54 0] (cylinder 1.5 (+ backplate-thickness 1)))
          (translate [2.54 5.08 0] (cylinder 1.5 (+ backplate-thickness 1)))
          (translate [1.27 -5.08 0] (cylinder 0.4953 (+ backplate-thickness 1)))
          (translate [-1.27 -5.08 0] (cylinder 0.4953 (+ backplate-thickness 1)))
          (translate [3.81 -5.08 0] (cylinder 0.4953 (+ backplate-thickness 1)))
          (translate [-3.81 -5.08 0] (cylinder 0.4953 (+ backplate-thickness 1))))))))

(def cherry-socket-walls
  (let [height (- keyswitch-depth plate-thickness)
        top-wall (->> (cube (+ keyswitch-width 3) 1.5 height)
                      (translate [0
                                  (+ (/ 1.5 2) (/ keyswitch-height 2))
                                  (/ height -2)]))
        left-wall (->> (cube 1.5 (+ keyswitch-height 3) height)
                       (translate [(+ (/ 1.5 2) (/ keyswitch-width 2))
                                   0
                                   (/ height -2)]))
        walls-half (union top-wall left-wall)]
    (union walls-half
           (->> walls-half
                (mirror [1 0 0])
                (mirror [0 1 0])))))

(def cherry-plate-with-key-mount
  (union
    cherry-single-plate
    cherry-socket-walls))

(def cherry-plate-with-key-mount-and-backplate
  (union
    cherry-plate-with-key-mount
    (translate [0 0 (- plate-thickness keyswitch-depth (/ backplate-thickness 2))] cherry-backplate)))

; Set this to your chosen key mount design
(def single-plate cherry-plate-with-key-mount)


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

(def web-thickness keyswitch-depth)
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
         (rotate (* π 5/32) [0 0 1])
         (rotate (/ π 12) [1 1 0])
         (rotate (/ π -11/6) [-1 1 0])
         (translate [-46 -39 48]))))

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

(def thumb-switch-clearance 12)  ;;Clearance for the depth of the switch - only needed for the bottom right 2x key and the top right 1x key

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
                       (translate [0 (- plate-height) 0]))
         web-post-tr-clearance (->> web-post-tr
                       (translate [0 0 (- web-thickness thumb-switch-clearance)]))
         web-post-br-clearance (->> web-post-br
                       (translate [0 0 (- web-thickness thumb-switch-clearance)]))
         thumb-tl-clearance (->> thumb-tl
                       (translate [0 0 (- web-thickness thumb-switch-clearance)]))
         thumb-tr-clearance (->> thumb-tr
                       (translate [0 0 (- web-thickness thumb-switch-clearance)]))
         thumb-br-clearance (->> thumb-br
                       (translate [0 0 (- web-thickness thumb-switch-clearance)]))]
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
      (triangle-hulls (thumb-place 0 -1/2 thumb-br-clearance)
                      (key-place 1 4 web-post-bl)
                      (thumb-place 0 -1/2 thumb-tr-clearance)
                      (key-place 1 4 web-post-tl)
                      (key-place 1 3 web-post-bl)
                      (thumb-place 0 -1/2 thumb-tr-clearance)
                      (key-place 0 3 web-post-br)
                      (key-place 0 3 web-post-bl)
                      (thumb-place 0 -1/2 thumb-tr-clearance)
                      (thumb-place 0 -1/2 thumb-tl-clearance)
                      (key-place 0 3 web-post-bl)
                      (thumb-place 1 -1/2 thumb-tr-clearance)
                      (thumb-place 1 1 web-post-br-clearance)
                      (key-place 0 3 web-post-bl)
                      (key-place 0 3 web-post-tl)
                      (thumb-place 1 1 web-post-br-clearance)
                      (thumb-place 1 1 web-post-tr-clearance))
      (hull (thumb-place 0 -1/2 thumb-tr-clearance)
            (thumb-place 0 -1/2 thumb-tr)
            (thumb-place 0 -1/2 thumb-tl)
            (thumb-place 0 -1/2 thumb-tl-clearance))
      (hull (thumb-place 0 -1/2 thumb-tr)
            (thumb-place 0 -1/2 thumb-tr-clearance)
            (thumb-place 0 -1/2 thumb-br-clearance)
            (thumb-place 0 -1/2 thumb-br))
      (hull (thumb-place 0 -1/2 thumb-tl)
            (thumb-place 0 -1/2 thumb-tl-clearance)
            (thumb-place 1 1 web-post-br-clearance)
            (thumb-place 1 1 web-post-br))
      (hull (thumb-place 1 1 web-post-tr)
            (thumb-place 1 1 web-post-tr-clearance)
            (thumb-place 1 1 web-post-br-clearance)
            (thumb-place 1 1 web-post-br))))))

(def thumb
  (union
   thumb-connectors
   (thumb-layout single-plate)
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

(defn curtain [offset & shapes]
  (hull
    shapes
    (translate offset (union shapes))))

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
              (curtain [0 0 -100]
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
     (curtain [0 25 -100]
       (place left-wall-column 0 (translate [0.5 -0.75 0.5] wall-sphere-bottom-back))
       (place (+ left-wall-column 1) 0  (translate [0 -0.75 0.5] wall-sphere-bottom-back)))
     (hull
       (place left-wall-column 0 (translate [0.5 -0.75 0.5] wall-sphere-bottom-back))
       (translate [0 0 -100] (place left-wall-column 0 (translate [0.5 -0.75 0.5] wall-sphere-bottom-back)))
       (translate [0 25 -100] (place left-wall-column 0 (translate [0.5 -0.75 0.5] wall-sphere-bottom-back))))
     (curtain [0 25 -100]
       (place 5 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back))
       (place right-wall-column 0 (translate [-0.5 -0.75 0.5] wall-sphere-bottom-back)))
     (hull
       (place right-wall-column 0 (translate [-0.5 -0.75 0.5] wall-sphere-bottom-back))
       (translate [0 0 -100] (place right-wall-column 0 (translate [-0.5 -0.75 0.5] wall-sphere-bottom-back)))
       (translate [0 25 -100] (place right-wall-column 0 (translate [-0.5 -0.75 0.5] wall-sphere-bottom-back))))
     (apply union
            (for [x (range 1 5)]
              (union
                (curtain [0 25 -100]
                  (place (- x 1/2) 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back))
                  (place (+ x 1/2) 0 (translate [0 -0.75 0.5] wall-sphere-bottom-back))))))
     (curtain [0 25 -100]
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
                   (curtain [0 0 -100]
                     (place right-wall-column x (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2)))
                     (place right-wall-column (inc x) (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2))))
                   ))
               [(union
                  (curtain [0 0 -100]
                    (place right-wall-column 0 (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2)))
                    (place right-wall-column 0.02 (translate [-0.5 -0.5 0.5] (wall-sphere-bottom 1))))
                  (curtain [0 0 -100]
                    (place right-wall-column 4 (translate [-0.5 0 0.5] (wall-sphere-bottom 1/2)))
                    (place right-wall-column 4 (translate [-0.5 0.5 0.5] (wall-sphere-bottom 0))))
                  )]))
     )))

(def left-wall
  (let [place case-place
        web-post-tr-clearance (->> web-post-tr
                                   (translate [0 0 (- web-thickness thumb-switch-clearance)]))]
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
           (thumb-place 1 1 web-post-tr-clearance)
           (key-place 0 3 web-post-tl))
     (hull (place left-wall-column 1.6666 (translate [1 0 1] wall-sphere-bottom-front))
           (thumb-place 1 1 web-post-tr-clearance)
           (thumb-place 1/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back)))
     ; Curtains (from bottom edge of walls to z=0):
     (curtain [0 0 -100]
       (place left-wall-column 0 (translate [0.5 -0.75 0.5] wall-sphere-bottom-back))
       (place left-wall-column 1 (translate [0.5 0 0.5] wall-sphere-bottom-back)))
     (curtain [0 0 -100]
       (place left-wall-column 1 (translate [0.5 0 0.5] wall-sphere-bottom-back))
       (place left-wall-column 2 (translate [0.5 0 0.5] wall-sphere-bottom-back)))
     (curtain [0 0 -100]
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
        web-post-tr-clearance (->> web-post-tr
                                   (translate [0 0 (- web-thickness thumb-switch-clearance)]))
        back-y thumb-back-y]
    (union
     (apply union
            (for [x (range-inclusive 1/2 (- (+ 5/2 0.05) step) step)]
              (hull (thumb-place x back-y wall-sphere-top-back)
                    (thumb-place (+ x step) back-y wall-sphere-top-back)
                    (thumb-place x back-y wall-sphere-bottom-back)
                    (thumb-place (+ x step) back-y wall-sphere-bottom-back))))
     (hull
       (thumb-place 3/2 thumb-back-y wall-sphere-bottom-back)
       (thumb-place 1/2 back-y wall-sphere-bottom-back)
       (case-place left-wall-column 1.6666 wall-sphere-top-front))
     (hull
       (thumb-place 3/2 thumb-back-y wall-sphere-bottom-back)
       (case-place left-wall-column 1.6666 wall-sphere-top-front)
       (case-place left-wall-column 1.6666 wall-sphere-bottom-front))
     (hull
       (thumb-place 3/2 thumb-back-y wall-sphere-bottom-back)
       (thumb-place (+ 5/2 0.05) thumb-back-y wall-sphere-bottom-back)
       (case-place left-wall-column 1.6666 wall-sphere-bottom-front))
     (hull
      (thumb-place 1/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back))
      (thumb-place 1 1 web-post-tr)
      (thumb-place 1 1 web-post-tr-clearance)
      (thumb-place 3/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back))
      (thumb-place 1 1 web-post-tl))
     (hull
      (thumb-place (+ 5/2 0.05) thumb-back-y (translate [1 -1 1] wall-sphere-bottom-back))
      (thumb-place 3/2 thumb-back-y (translate [0 -1 1] wall-sphere-bottom-back))
      (thumb-place 1 1 web-post-tl)
      (thumb-place 2 1 web-post-tl))
     ; Curtains (from bottom edge of walls to z=0):
     (curtain [0 0 -100]
       (thumb-place (+ 5/2 0.05) thumb-back-y wall-sphere-bottom-back)
       (case-place left-wall-column 1.6666 (translate [0.5 0 0.5] wall-sphere-bottom-front)))
     (curtain [0 0 -100]
       (thumb-place (+ 5/2 0.05) thumb-back-y wall-sphere-bottom-back)
       (thumb-place (+ 5/2 0.05) thumb-back-y wall-sphere-top-back))
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
     (curtain [0 0 -100]
       (thumb-place thumb-left-wall-column thumb-back-y wall-sphere-top-back)
       (thumb-place thumb-left-wall-column 0 wall-sphere-top-back))
     (curtain [0 0 -100]
       (thumb-place thumb-left-wall-column 0 wall-sphere-top-back)
       (thumb-place thumb-left-wall-column -1 wall-sphere-top-back))
     (curtain [0 0 -100]
       (thumb-place thumb-left-wall-column -1 wall-sphere-top-back)
       (thumb-place thumb-left-wall-column (+ -1 0.07) wall-sphere-top-front))
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
                      (translate [-0 (- plate-height) 0]))
        thumb-br-clearance (->> thumb-br
                                (translate [0 0 (- web-thickness thumb-switch-clearance)]))]
    (union
     (apply union
            (for [x (range-inclusive thumb-right-wall (- (+ 5/2 0.05) step) step)]
              (hull (place x thumb-front-row wall-sphere-top-front)
                    (place (+ x step) thumb-front-row wall-sphere-top-front)
                    (place x thumb-front-row wall-sphere-bottom-front)
                    (place (+ x step) thumb-front-row wall-sphere-bottom-front))))

     (hull (place thumb-right-wall thumb-front-row wall-sphere-bottom-front)
           (case-place 0.5 4 wall-sphere-top-front)
           (place (+ 1/2 0.05) thumb-front-row wall-sphere-bottom-front))

     (hull (place (+ 5/2 0.05) thumb-front-row (translate [1 1 1] wall-sphere-bottom-front))
           (place (+ 3/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place 2 -1 web-post-bl)
           (place 2 -1 web-post-br))

     (hull (translate [0 0 -0.5] (place thumb-right-wall thumb-front-row (translate [0 1 1] wall-sphere-bottom-front)))
           (place (+ 1/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place 0 -1/2 thumb-bl)
           (place 0 -1/2 thumb-br)
           (place 0 -1/2 thumb-br-clearance))
     (hull (place (+ 1/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place (+ 3/2 0.05) thumb-front-row (translate [0 1 1] wall-sphere-bottom-front))
           (place 0 -1/2 thumb-bl)
           (place 1 -1/2 thumb-bl)
           (place 1 -1/2 thumb-br)
           (place 2 -1 web-post-br))
     ; Curtains (from bottom edge of walls to z=0):
     (curtain [0 0 -100]
       (translate [0 0 -3] (case-place 0.7 4 (translate [-1 0 1.5] wall-sphere-bottom-front)))
       (translate [0 0 -0.5] (thumb-place thumb-left-wall-column (+ -1 0.07) wall-sphere-top-front)))
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

;;;;;;;;;;;;;;;;;;;;
;; IBM TrackPoint ;;
;;;;;;;;;;;;;;;;;;;;

(def trackpoint-stem-hole-radius (/ 7.5 2))
(def trackpoint-screw-hole-radius (/ 3.75 2))
(def trackpoint-screw-hole-offset 9.975)
(def trackpoint-mount-thickness plate-thickness)

(defn trackpoint-holes [thickness hole-radius]
  (color
    [1 0 0]
    (binding [*fs* 0.5]
                 (union
                   (cylinder trackpoint-stem-hole-radius (* thickness 3))
                   (translate [trackpoint-screw-hole-offset 0 0]
                              (cylinder hole-radius (* thickness 3)))
                   (translate [(- trackpoint-screw-hole-offset) 0 0]
                              (cylinder hole-radius (* thickness 3)))
                   (translate [0 (- (/ 37 2) 8) (- -2.5 thickness)] (cube 27 37 5))
                   ))))

(def trackpoint-holes-placed
  (key-place 0.5 2.5 (trackpoint-holes trackpoint-mount-thickness trackpoint-screw-hole-radius)))

(defn trackpoint-mount [thickness hole-radius]
  (let [
        cutout-x-offset 8
        cutout-y-offset (+ (* hole-radius 2.1) 5)
        ]
    (color
      [0 1 0]
      (difference
        (translate
          [0 0 (/ thickness -2)]
          (union
            (cylinder 8 thickness)
            (hull
              (translate [trackpoint-screw-hole-offset 0 0]
                         (cylinder (* hole-radius 2.1) thickness))
              (translate [(- trackpoint-screw-hole-offset) 0 0]
                         (cylinder (* hole-radius 2.1) thickness)))
            ))
        (translate [cutout-x-offset cutout-y-offset 0] (cube 10 10 20))
        (translate [(- cutout-x-offset) cutout-y-offset 0] (cube 10 10 20))
        (translate [cutout-x-offset (- cutout-y-offset) 0] (cube 10 10 20))
        (translate [(- cutout-x-offset) (- cutout-y-offset) 0] (cube 10 10 20))
        ))))

(def trackpoint-mount-placed
  (key-place 0.5 2.5 (trackpoint-mount trackpoint-mount-thickness trackpoint-screw-hole-radius)))

(def trackpoint-stem-radius 0.6)
(def trackpoint-stem-length 25) ; Slightly problematic since only barbells seem to come in this length
(def trackpoint-ball-radius 1.5)
(def trackpoint-stem-base-height 2)

(def trackpoint-shape
  (color
    [0.8 0.8 0.8]
    (binding [*fs* 0.5]
      (key-place 0.5 2.5
                 (translate
                   [0 0 (+ (/ trackpoint-stem-length 2) (- trackpoint-mount-thickness) trackpoint-stem-base-height)]
                   (union
                     (cylinder trackpoint-stem-radius trackpoint-stem-length)
                     (translate [0 0 (+ (/ trackpoint-stem-length 2) trackpoint-ball-radius)] (sphere trackpoint-ball-radius))
                     ))))))

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

(def trrs-panel-mount-jack
    (->> (difference
           (cylinder trrs-radius 20)
           (cylinder 1.75 22))
         (translate [0 0 9])
         (rotate (/ π 2.9) [0 1 0])
         (translate [(+ (/ mount-height -4) 4) 0 (- -20 trrs-radius)])
         (with-fn 50)
         (key-place 0 3/2)
         (color [0.08 0.08 0.08])))


(def mini-din-diameter 9.7)
(def mini-din-radius (/ mini-din-diameter 2))
(def mini-din-hole-depth 13)

(def mini-din-hole-just-circle
  (->> (cylinder mini-din-radius mini-din-hole-depth)
       (rotate (/ π 2.9) [0 1 0])
       (translate [(+ (/ mount-height -4) 4) 0 (- -20 mini-din-radius)])
       (with-fn 50)
       (key-place 0 5/4)))

(def mini-din-panel-mount-jack
    (->> (union
           (difference
             (cylinder mini-din-radius 10)
             (cylinder 4.5 22))
           (cylinder 4 10))
         (translate [0 0 4])
         (rotate (/ π 2.9) [0 1 0])
         (translate [(+ (/ mount-height -4) 4) 0 (- -20 mini-din-radius)])
         (with-fn 50)
         (key-place 0 5/4)
         (color [0.08 0.08 0.08])))


(def usb-c-plug-dimensions [12.4 6.3 25])
(def usb-c-jack-dimensions [9.2 3.4 7.6])
(def board-clearance-height 20) ; The amount of clearance above the board to allow for pin headers and connectors

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
  (translate [0 (- (/ y -2) 2) (/ z 2)] (color [0.14 0.2 0.1] (cube x y z))))

(defn board-cutout-bare [[x y z]]
  (board-shape-bare [x y z]))

(defn board-clearance-bare [[x y z]]
  (board-shape-bare [x y (+ z board-clearance-height)]))

(def mount-post-height 5)

(def mount-post
  (let [hole-radius (/ 1.6 2)
        block-width 10
        block-length 10]
    (difference
      (union
        (binding [*fs* 1] (translate [0 0 (/ mount-post-height -2)]
                                     (cylinder (* 0.75 2.54) mount-post-height)))
        (translate [0 (+ (/ block-length -2) hole-radius) (/ mount-post-height -2)]
                   (cube block-width block-length mount-post-height))
        )
      (binding [*fs* 0.5] (translate [0 0 (/ mount-post-height -2)]
                                     (cylinder hole-radius (+ mount-post-height 1)))))))

(defn board-mount-bare [[x y z]]
  (difference
    (union
      (translate [(/ (- x 5.08) 2) -1.25 0] mount-post)
      (translate [(/ (- x 5.08) -2) -1.25 0] mount-post)
      (translate [0 (- (- y) 3) (- z (/ mount-post-height 2))] (cube 5 5 (+ mount-post-height (* 2 z)))))
    (board-cutout-bare [x y z])))


(defn board-shape-with-usb-c [[x y z] & {:keys [usb-y-offset] :or {usb-y-offset 0}}]
  (let [usb-z-offset (/ (nth usb-c-jack-dimensions 1) -2)]
    (union
      (translate [0 (/ y -2) (/ z 2)] (color [0.14 0.2 0.1] (cube x y z)))
      (translate [0 usb-y-offset usb-z-offset] (rotate (/ π 2) [1 0 0] usb-c-jack))
      )))

(defn board-cutout-with-usb-c [[x y z] & {:keys [usb-y-offset] :or {usb-y-offset 0}}]
  (let [usb-z-offset (/ (nth usb-c-jack-dimensions 1) -2)]
    (union
      (board-shape-with-usb-c [x y z] :usb-y-offset usb-y-offset)
      (translate [0 usb-y-offset usb-z-offset] (rotate (/ π -2) [1 0 0] usb-c-plug))
      )))

(defn board-clearance-with-usb-c [[x y z] & {:keys [usb-y-offset] :or {usb-y-offset 0}}]
  (let [usb-z-offset (/ (nth usb-c-jack-dimensions 1) -2)]
    (union
      (board-shape-with-usb-c [x y z] :usb-y-offset usb-y-offset)
      (board-shape-bare [x y (+ z board-clearance-height)])
      (translate [0 usb-y-offset usb-z-offset] (rotate (/ π -2) [1 0 0] usb-c-plug))
      )))

(defn board-mount-with-usb-c [[x y z] & {:keys [usb-y-offset] :or {usb-y-offset 0}}]
  (difference
    (union
      (translate [0 (- (- y) 0.75) 0] mount-post)
      (translate [(/ (- x 2.08) 2) 0.5 (- z (/ mount-post-height 2))]
                 (cube 2.5 3 (+ mount-post-height (* 2 z))))
      (translate [(/ (- x 2.08) -2) 0.5 (- z (/ mount-post-height 2))]
                 (cube 2.5 3 (+ mount-post-height (* 2 z)))))
    (board-cutout-with-usb-c [x y z] :usb-y-offset usb-y-offset)))

(defn board-mount-with-usb-c-alt [[x y z] & {:keys [usb-y-offset] :or {usb-y-offset 0}}]
  (let [x-mount-post-offset (/ (+
                          (first usb-c-jack-dimensions) ; USB-C jack width
                          0.4                           ; Extra clearance
                          2.5                           ; Mounting post width
                          ) 2)]
    (difference
      (union
        (translate [x-mount-post-offset (- (- y) 0.75) 0] mount-post)
        (translate [(- x-mount-post-offset) (- (- y) 0.75) 0] mount-post)
        (translate [x-mount-post-offset 0.5 (- z (/ mount-post-height 2))]
                   (cube 2.5 3 (+ mount-post-height (* 2 z))))
        (translate [(- x-mount-post-offset) 0.5 (- z (/ mount-post-height 2))]
                   (cube 2.5 3 (+ mount-post-height (* 2 z)))))
      (board-cutout-with-usb-c [x y z] :usb-y-offset usb-y-offset))))

(defn mount-post-extra-support [[x y z]]
  (let [hole-radius (/ 1.6 2)
        block-width 30
        block-length 10]
    (translate [0 (- (- y) 0.75) 0]
               (translate [(/ block-width -2) (+ (/ block-length -2) hole-radius) (/ mount-post-height -2)]
                          (cube block-width block-length mount-post-height)))))


; I know the Teensy and Pro Micro aren't USB-C, but it's an approximation that should suffice for Micro USB as well.
(def board-teensy [18 30.5 1.6])
(def board-shape-teensy (board-shape-with-usb-c board-teensy))
(def board-cutout-teensy (board-cutout-with-usb-c board-teensy))
(def board-clearance-teensy (board-clearance-with-usb-c board-teensy))
(def board-mount-teensy (board-mount-with-usb-c board-teensy))

(def board-micro [18 48.4 1.6])
(def board-shape-micro (board-shape-with-usb-c board-micro :usb-y-offset 0.75))
(def board-cutout-micro (board-cutout-with-usb-c board-micro :usb-y-offset 0.75))
(def board-clearance-micro (board-clearance-with-usb-c board-micro :usb-y-offset 0.75))
(def board-mount-micro (board-mount-with-usb-c board-micro :usb-y-offset 0.75))

(def board-pro-micro [18.3 33.1 1.7])
(def board-shape-pro-micro (board-shape-with-usb-c board-pro-micro :usb-y-offset 0.75))
(def board-cutout-pro-micro (board-cutout-with-usb-c board-pro-micro :usb-y-offset 0.75))
(def board-clearance-pro-micro (board-clearance-with-usb-c board-pro-micro :usb-y-offset 0.75))
(def board-mount-pro-micro (board-mount-with-usb-c board-pro-micro :usb-y-offset 0.75))

(def board-proton-c [18 50.88 1.6])
(def board-shape-proton-c (board-shape-with-usb-c board-proton-c))
(def board-cutout-proton-c (board-cutout-with-usb-c board-proton-c))
(def board-clearance-proton-c (board-clearance-with-usb-c board-proton-c))
(def board-mount-proton-c (board-mount-with-usb-c board-proton-c))

(def board-blue-pill [23 53.4 1.6])
(def board-shape-blue-pill (board-shape-with-usb-c board-blue-pill :usb-y-offset 0.75))
(def board-cutout-blue-pill (board-cutout-with-usb-c board-blue-pill :usb-y-offset 0.75))
(def board-clearance-blue-pill (board-clearance-with-usb-c board-blue-pill :usb-y-offset 0.75))
(def board-mount-blue-pill (board-mount-with-usb-c board-blue-pill :usb-y-offset 0.75))

(def board-black-pill [22.3 56.15 1.65])
(def board-shape-black-pill (board-shape-with-usb-c board-black-pill :usb-y-offset 1.25))
(def board-cutout-black-pill (board-cutout-with-usb-c board-black-pill :usb-y-offset 1.25))
(def board-clearance-black-pill (board-clearance-with-usb-c board-black-pill :usb-y-offset 1.25))
(def board-mount-black-pill (board-mount-with-usb-c-alt board-black-pill :usb-y-offset 1.25))

(def board-pro-mini [18 33.1 1.6])
(def board-shape-pro-mini (board-shape-bare board-pro-mini))
(def board-cutout-pro-mini (board-cutout-bare board-pro-mini))
(def board-clearance-pro-mini (board-clearance-bare board-pro-mini))
(def board-mount-pro-mini (board-mount-bare board-pro-mini))

(def board-position [-36.7 56.5 15])

(defn placed-board [shape]
  (->> shape
       (rotate (/ π 2) [1 0 0])
       (rotate (/ π -2) [0 1 0])
       (rotate (/ π 120) [0 1 0])
       (rotate (/ π 12) [1 0 0])
       (rotate (/ π -28) [0 0 1])
       (translate board-position)))

;;;;;;;;;;;;;;;;;
;; Rubber Feet ;;
;;;;;;;;;;;;;;;;;

(def foot-radius 5)
(def foot-lip 0.5)
(def foot-support-height 5)

(defn place-feet [foot]
  (union
    (translate [-75 -22.5 0] foot)
    (translate [-33 58.9 0] foot)
    (translate [78 52 0] foot)
    (translate [78 -54.5 0] foot)))

(def foot-supports
  (place-feet
    (translate [0 0 (/ foot-support-height 2)]
               (cylinder (+ foot-radius foot-lip) foot-support-height))))

(def foot-cutouts
  (place-feet
    (translate [0 0 (/ foot-lip 2)]
               (cylinder foot-radius foot-lip))))

;;;;;;;;;;;;;;;;;;
;; Final Export ;;
;;;;;;;;;;;;;;;;;;

(def dactyl-top-right
  (difference
   (union key-holes
          connectors
          thumb
          new-case-trimmed
          (placed-board
            (difference
              board-mount-micro
              (translate [0 10 0] (cube 20 20 20))))
          (difference
            (placed-board (mount-post-extra-support board-micro))
            (->> (cube 1000 1000 100) (translate [0 0 -50])))
          trackpoint-mount-placed
          foot-supports)
   mini-din-hole-just-circle
   trackpoint-holes-placed
   (placed-board board-clearance-micro)
   foot-cutouts))

(def dactyl-top-right-preview
  (union
    (color [0.1 0.1 0.1] dactyl-top-right)
    caps
    thumbcaps
    mini-din-panel-mount-jack
    trackpoint-shape
    (placed-board board-shape-micro)))

(def dactyl-top-left
  (mirror [-1 0 0]
          (difference
           (union key-holes
                  connectors
                  thumb
                  new-case-trimmed
                  (placed-board
                    (difference
                      board-mount-micro
                      (translate [0 10 0] (cube 20 20 20))))
                  (difference
                    (placed-board (mount-post-extra-support board-micro))
                    (->> (cube 1000 1000 100) (translate [0 0 -50])))
                  foot-supports)
           mini-din-hole-just-circle
           (placed-board board-clearance-micro)
           foot-cutouts)))

(def dactyl-top-left-preview
  (union
    (color [0.1 0.1 0.1] dactyl-top-left)
    (mirror [-1 0 0]
            (union
              caps
              thumbcaps
              mini-din-panel-mount-jack
              (placed-board board-shape-micro)))))

(defn place-trackpoint-mouse-trackpoint [shape]
  (translate [0 0 10] (rotate [(* π -0.5) 0 0] (translate [0 0 31.5] shape))))

(defn place-trackpoint-mouse-thumb [shape]
  (rotate [0 0 (/ π 12)] shape))

(defn place-trackpoint-mouse-board [shape]
  (translate [97 0 30] (rotate [0 π (/ π -2)] shape)))

(defn place-trackpoint-mouse-thumb-part [x y z shape]
  (place-trackpoint-mouse-thumb (translate [(- x 9.7) (+ y 5) (+ z 5)] shape)))

(defn place-trackpoint-mouse-thumb-switch [y z]
  (place-trackpoint-mouse-thumb-part (- keyswitch-depth 5) y z (rotate [0 (/ π 2) 0] single-plate)))

(def trackpoint-mouse
  (let [thumb-buttons-offset [-11.3 5 5]
        ]
    (difference
      (union
        (translate
          [0 0 14]
          (union
            (place-trackpoint-mouse-trackpoint (trackpoint-mount 3 1))
            ; Thumb button mounts:
            (place-trackpoint-mouse-thumb-switch 5 0)
            (place-trackpoint-mouse-thumb-switch 5 19.5)
            (place-trackpoint-mouse-thumb-switch -14.5 19.5)
            (place-trackpoint-mouse-board board-mount-pro-micro)
            (intersection
              (place-trackpoint-mouse-board
                (let [hole-radius (/ 1.6 2)
                      block-width 10
                      block-length 15]
                  (translate [0 (- (- (nth board-pro-micro 1)) 0.75) 0]
                             (difference
                               (translate [0 (+ (/ block-length -2) 2) (/ mount-post-height -2)]
                                          (cube 100 block-length mount-post-height))
                               (binding [*fs* 0.5] (translate [0 0 (/ mount-post-height -2)]
                                                              (cylinder hole-radius (+ mount-post-height 1))))))))
              (union ; Main body profile
                     (translate [0 0 10] (rotate [0 (/ π 2) 0] (cylinder 33 200)))
                     (translate [0 0 -7] (cube 200 63 14))
                     ))
            (binding [*fs* 0.5 *fa* 3]
              (union ; Main body
                (difference
                  (union
                    (difference ; Main body cylinder
                      (translate [0 0 10] (rotate [0 (/ π 2) 0] (cylinder 33 200)))
                      (difference ; Inner face - cylinder with flattened top
                        (translate [0 0 10] (rotate [0 (/ π 2) 0] (cylinder 30 194)))
                        (translate [0 0 54] (cube 220 66 40)))
                      (translate [0 0 -25] (cube 220 66 40))
                      (translate [0 0 0] (cube 194 57 20))
                      )
                    ; Skirt walls:
                    (translate [0 (/ 60 2) -9.25] (cube 200 3 19.5))
                    (translate [0 (/ -60 2) -9.25] (cube 200 3 19.5))
                    (translate [98.5 0 -9.5] (cube 3 63 19))
                    )
                  (translate [(- -50 12) 0 0] (place-trackpoint-mouse-thumb (cube 100 100 100))) ; Angled cut-off
                  )
                (difference ; Thumb end plate
                  (intersection
                    (translate [0 0 -5] (union ; End plate pieces
                      (place-trackpoint-mouse-thumb-part 2.54 -4.75 31 (cube (- keyswitch-depth 2) (+ (+ keyswitch-height 3) 19.5) 100))
                      (place-trackpoint-mouse-thumb-part 0.5 0 31 (cube 3 100 100))
                      ))
                    (union ; Main body profile
                      (translate [0 0 10] (rotate [0 (/ π 2) 0] (cylinder 33 200)))
                      (translate [0 0 -9.5] (cube 200 63 19))
                      ))
                  (place-trackpoint-mouse-thumb-part 0 5 0 (cube 20 (+ 2 keyswitch-width) (+ 2 keyswitch-height)))
                  (place-trackpoint-mouse-thumb-part 0 5 19.5 (cube 20 (+ 2 keyswitch-width) (+ 2 keyswitch-height)))
                  (place-trackpoint-mouse-thumb-part 0 -14.5 19.5 (cube 20 (+ 2 keyswitch-width) (+ 2 keyswitch-height)))
                  )))))

        (difference
          (place-trackpoint-mouse-trackpoint (translate [0 6 -2] (cube 24 40 2)))
          (cube 100 57 100)
          (translate [0 0 -25] (cube 220 80 40)))
        )
      (translate
        [0 0 14]
        (union
          (place-trackpoint-mouse-trackpoint (trackpoint-holes 3 1))
          (place-trackpoint-mouse-trackpoint ; Countersink
            (binding [*fs* 0.5]
              (union
                (translate [trackpoint-screw-hole-offset 0 2]
                           (cylinder 2.5 5))
                (translate [(- trackpoint-screw-hole-offset) 0 2]
                           (cylinder 2.5 5)))))
          (place-trackpoint-mouse-trackpoint (translate [0 0 -1] (cylinder 4.5 6))) ; Larger stem hole
          (place-trackpoint-mouse-trackpoint (translate [0 0 1] (cylinder [4.5 8.5] 3))) ; Stem hole counterbore
          (place-trackpoint-mouse-board board-clearance-pro-micro))))))

(spit "things/trackpoint-mouse.scad"
      (write-scad trackpoint-mouse))

(spit "things/alps-single-plate.scad"
      (write-scad alps-single-plate))

(spit "things/cherry-plate-with-key-mount.scad"
      (write-scad cherry-plate-with-key-mount))

(spit "things/cherry-plate-with-key-mount-and-backplate.scad"
      (write-scad cherry-plate-with-key-mount-and-backplate))

(spit "things/cherry-backplate.scad"
      (write-scad cherry-backplate))

(spit "things/key-holes.scad"
      (write-scad (union connectors key-holes)))

(spit "things/dactyl-top-right.scad"
      (write-scad dactyl-top-right))

(spit "things/dactyl-top-left.scad"
      (write-scad dactyl-top-left))

(spit "things/dactyl-preview.scad"
      (write-scad (union
                    (translate [-115 0 0] (rotate (/ π -10) [0 0 1] dactyl-top-left-preview))
                    (translate [115 0 0] (rotate (/ π 10) [0 0 1] dactyl-top-right-preview)))))

(spit "things/board-proton-c.scad"
      (write-scad (union
                    (translate [0 0 20] board-shape-proton-c)
                    board-cutout-proton-c
                    (translate [0 0 0] board-mount-proton-c)
                    )))

(spit "things/board-pro-mini.scad"
      (write-scad (union
                    (translate [0 0 20] board-shape-pro-mini)
                    board-cutout-pro-mini
                    (translate [0 0 0] board-mount-pro-mini)
                    )))

(spit "things/board-blue-pill.scad"
      (write-scad (union
                    (translate [0 0 20] board-shape-blue-pill)
                    board-cutout-blue-pill
                    (translate [0 0 0] board-mount-blue-pill)
                    )))

(spit "things/board-black-pill.scad"
      (write-scad (union
                    (translate [0 0 20] board-shape-black-pill)
                    board-cutout-black-pill
                    (translate [0 0 0] board-mount-black-pill)
                    )))

(spit "things/board-micro.scad"
      (write-scad (union
                    (translate [0 0 20] board-shape-micro)
                    board-cutout-micro
                    (translate [0 0 0] board-mount-micro)
                    )))

(spit "things/board-pro-micro.scad"
      (write-scad (union
                    (translate [0 0 20] board-shape-pro-micro)
                    board-cutout-pro-micro
                    (translate [0 0 0] board-mount-pro-micro)
                    )))
