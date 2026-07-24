(def n-input (Integer/parseInt (read-line)))

(def test-animals
  (repeatedly n-input (fn []
                          (let [[n type] (clojure.string/split (read-line) #" ")]
                               [(Integer/parseInt n) type]))))


(defn total-test-animals [test-animals]
      (reduce + (map first test-animals)))

(defn total-specific-animal [animal-initial test-animals]
      (reduce + (map first (filter (fn [[n type]] (= type animal-initial)) test-animals))))

(defn calculate-percentage [value total]
      (* (double (/ value total)) 100))

(defn animal-percentage [animal-initial test-animals]
        (calculate-percentage (total-specific-animal animal-initial test-animals) (total-test-animals test-animals)))


;; result
(println (str "Total: " (total-test-animals test-animals) " cobaias"))
(println (str "Total de coelhos: " (total-specific-animal "C" test-animals)))
(println (str "Total de ratos: " (total-specific-animal "R" test-animals)))
(println (str "Total de sapos: " (total-specific-animal "S" test-animals)))
(println (str "Percentual de coelhos: " (format "%.2f" (animal-percentage "C" test-animals)) " %"))
(println (str "Percentual de ratos: " (format "%.2f" (animal-percentage "R" test-animals)) " %"))
(println (str "Percentual de sapos: " (format "%.2f" (animal-percentage "S" test-animals)) " %"))