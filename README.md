# README

This README would normally document whatever steps are necessary to get the
application up and running.

Things you may want to cover:

* Ruby version

* System dependencies

* Configuration

* Database creation

* Database initialization

* How to run the test suite

* Services (job queues, cache servers, search engines, etc.)

* Deployment instructions

* ...
Para desafio y crear aplicación
1. rails new Crazy4cats -d postgresql -j esbuild
2. cd TravelGuide/
3. rails db:create
4. bundle add devise
5. # Instalación y creación de usuario
6. rails generate devise:install
7. rails g devise:views
8. rails generate devise user
9. rails g migration AddDetailsToUsers photo name
10. rails db:migrate

11. git add .
12. git commit -m "Se agrega usuario"

13. rails g scaffold publications title description when_went:datetime
14. rails g model comment content publication:references user:references
15. rails g model reaction publication:references user:references kind reaction_type comment:references

16. git add .
17. git commit -m "Se agrega modelo Publicaciones, Comentarios y reactions"

18. rails db:migrate
19. rails db:migrate:status

20. bundle add faker
21. rails g controller comments
22. rails g controller reactions

23. git add .
24. git commit -m "Se agrega controlador reactions y comentarios"

# Modificar Modelos para que estén relacionados
# Modificar Controladores
# Modificar las vistas

GIT HUB


https://github.com/cleavercarlos/desafio_crazy4cats

RENDER LINK

https://mysite-uq13.onrender.com/