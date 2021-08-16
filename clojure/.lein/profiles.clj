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
        :plugins [[cider/cider-nrepl "0.26.0"]
                  [refactor-nrepl    "3.0.0-pr301"]]
        :repl-options {:timeout 300000}
        :dependencies [[cljdev "0.9.0"]
                       [com.cognitect/rebl            "0.9.242"]]
        :injections   [(require 'nu)
                       (require 'cognitect.rebl)]}}
