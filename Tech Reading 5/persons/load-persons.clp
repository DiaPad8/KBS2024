;;Defining a template for representing/modelling persons in Jess Working Memory

(deftemplate person
   	(slot name )
   	(slot gender)
   	(slot age (type INTEGER))
   	(slot partner)
)

;;Storing four persons (four facts) in Jess Working Memory via deffacts function 

(deffacts partnership
        (person  (name Avery)  (gender  male)   (age 77)  (partner Meredith))
   	(person  (name Meredith) (gender female)  (age 73) (partner Avery))
   	(person  (name Michael)  (gender male)    (age 40)   (partner Jan))
	(person  (name Angela) (gender female)  (age 23)   (partner Dwight))
)
