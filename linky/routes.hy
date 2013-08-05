(require hy.contrib.meth)
(import [linky [app]])

(get_route index "/" []  (str "Hy world!"))

(get_route new-link "/add" [] (str "form to add a link"))

(post_route add-link "/add" [] (print (.request self)))
