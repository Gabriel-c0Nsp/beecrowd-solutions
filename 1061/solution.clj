(require '[clojure.string :as str])

(def lines [
            (read-line)
            (read-line)
            (read-line)
            (read-line)])

(def initial-day
  (Integer/parseInt (second (str/split (nth lines 0) #" "))))

(def final-day
  (Integer/parseInt (second (str/split (nth lines 2) #" "))))

(def initial-time
  (vec (map #(Integer/parseInt %) (map str/trim (str/split (nth lines 1) #":")))))

(def final-time
  (vec (map #(Integer/parseInt %) (map str/trim (str/split (nth lines 3) #":")))))

(defn convert-time-to-seconds [days time]
      (+
        (* days 24 60 60)
        (* (nth time 0) 60 60)
        (* (nth time 1) 60)
        (nth time 2)))

(defn calculate-event-total-duration [initial-time final-time]
      (- final-time initial-time))


(defn print-result [duration-seconds]
      (let [days (quot duration-seconds 86400)
            remaining (rem duration-seconds 86400)

            hours (quot remaining 3600)
            remaining (rem remaining 3600)

            minutes (quot remaining 60)
            seconds (rem remaining 60)]

           (println (str days " dia(s)"))
           (println (str hours " hora(s)"))
           (println (str minutes " minuto(s)"))
           (println (str seconds " segundo(s)"))))

;; result
(print-result (calculate-event-total-duration
                (convert-time-to-seconds initial-day initial-time) (convert-time-to-seconds final-day final-time)))