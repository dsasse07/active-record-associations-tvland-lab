require'activerecord-reset-pk-sequence'

Actor.destroy_all
Actor.reset_pk_sequence
Character.destroy_all
Character.reset_pk_sequence
Show.destroy_all
Show.reset_pk_sequence


Actor.create(first_name: "Emilia", last_name: "Clarke")
Actor.create(first_name: "Will", last_name:"Smith")

Character.create(name: "Khaleesi")

Show.create(name:"Game of Thrones")

