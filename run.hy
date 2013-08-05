(import [linky [app]])
;; I don't like to put the routes here, but hy doesn't like it any other way :S
(import linky.routes)
(kwapply (.run app) {"debug" true})
