
(defmacro router [path name params code &kwargs kwargs]
  (quasiquote (do 
               (defn (unquote name) (unquote params) (unquote-splice code))
               (with-decorator (.route (quote app) (unquote path) (unquote name))))))
