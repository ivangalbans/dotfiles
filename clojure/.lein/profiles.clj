{:user
 {:min-lein-version    "2.9.0"
  :repositories        [["central"  {:url "https://repo1.maven.org/maven2/" :snapshots false}]
                        ["clojars"  {:url "https://clojars.org/repo/"}]
                        ["nu-maven" {:url "s3p://nu-maven/releases/" :region "sa-east-1"}]]
  :plugin-repositories [["nu-maven" {:url "s3p://nu-maven/releases/"}]]
  :plugins             [[s3-wagon-private "1.3.3"]
                        [com.jakemccrary/lein-test-refresh "0.24.1"]
                        [lein-ancient "0.6.15"]]}

 :test {:dependencies [[cljdev "0.9.0"]]
        :injections   [(require 'nu)]}

 :repl {;; If you need to have `cider-nrepl` and `refactor-nrepl` in your REPL
        ;; session (i.e.: vim-users), uncomment the following lines
        :plugins [[cider/cider-nrepl "0.25.5"]
                  [refactor-nrepl    "2.5.1"]]
        :repl-options {:timeout 300000}
        :dependencies [[cljdev "0.9.0"]]
        :injections   [(require 'nu)]}
 :nrebl  {:repl-options {:nrepl-middleware [nrebl.middleware/wrap-nrebl]}
          :dependencies [[rickmoynihan/nrebl.middleware "0.3.1"] ;; set this to the latest nrebl version
                         [org.clojure/core.async        "0.4.490"]
                         [com.cognitect/rebl            "0.9.242"]]
          :injections [(require '[cognitect.rebl :as rebl]) (rebl/ui)]}}
