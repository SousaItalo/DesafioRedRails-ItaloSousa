Place.create!([
  {name: "Pousada de frente pro mar", description: "Um ótimo fim de semana para você relaxar, uma belíssima vista para o mar, ótimas comidas e uma vida noturna agitada. ", beds_qtd: 2, country: "Argentina", city: "Buenos Arires", user_id: 2, price: "384", picture: "teste.png"},
  {name: "Casa de praia no cumbuco", description: "O lugar ideal para um fim de semana romântico ou umas férias em família", beds_qtd: 4, country: "Brasil", city: "Cumbuco", user_id: 2, price: "300", picture: "Captura_de_tela_de_2017-03-24_14-52-39.png"},
  {name: "Pousada em fernando de noronha", description: "Venha aproveitar o melhor que Fernando de Noronha tem a oferecer em nossa aconchegante pousada", beds_qtd: 4, country: "Brasil", city: "Fernando de Noronha", user_id: 2, price: "999", picture: "Captura_de_tela_de_2017-03-24_14-51-51.png"},
  {name: "Almoço japonês", description: "Venha desfrutar desse saboroso almoço com o melhor da culinária japonesa", beds_qtd: 2, country: "Brasil", city: "Fortaleza", user_id: 2, price: "120", picture: "Captura_de_tela_de_2017-03-24_14-50-17.png"},
  {name: "Casa de praia na caponga", description: "Uma casa aconchegante para você e sua família curtirem o melhor do Ceará", beds_qtd: 4, country: "Brasil", city: "Caponga", user_id: 2, price: "450", picture: "Captura_de_tela_de_2017-03-24_14-52-55.png"},
  {name: "Aluguel de quarto", description: "Alugamos um quarto para unico morador. de preferencia estudante e solteiro(a)", beds_qtd: 1, country: "Brasil", city: "Fortaleza", user_id: 2, price: "350", picture: "Captura_de_tela_de_2017-03-24_14-52-14.png"}
])
PlaceReservation.create!([
  {user_id: 1, place_id: 17, data_entrada: "2017-03-26", data_saida: "2017-03-30"}
])
User.create!([
  {name: "Italo2", username: "italo", email: "italo@italo.com", password_digest: "$2a$10$DERJwPhj3z/3ww8ive1AYutO6TQ/qeeCRDpsRPj1aOpKBJOPqZOwy"},
  {name: "Italo2", username: "italo2", email: "italo@gmail.com", password_digest: "$2a$10$tK5kTLJ/4v3vSLL53cDIae7O9QwNNd61F/F29zSAsW4IzwONjj4FK"},
  {name: "Italo3", username: "italo3", email: "italo@hot.com", password_digest: "$2a$10$DJUgvS7oei4ok3Aec.gOIO2wzKrNI7GGytVsDgF6Dz5gGgiPtPnpu"},
  {name: "Sofia", username: "sofia", email: "sofia@sofia1.com", password_digest: "$2a$10$DvdLmWTWQt2Io4siDmaJDOZufdc6cagqOQ3o0K7WeP63tjVY40tH."}
])
