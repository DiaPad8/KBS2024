(deftemplate smartphone
   (slot brand)
   (slot model)
   (slot color)
   (slot price)
)

(deftemplate laptop
   (slot brand)
   (slot model)
   (slot color)
   (slot price)
)

(deftemplate complement
   (slot type)
   (slot brand)
   (slot price)
)

(deffacts smartphones
   (smartphone (brand "OnePlus") (model "10 Pro") (color "Blue") (price 899))
   (smartphone (brand "Xiaomi") (model "Mi 12") (color "Purple") (price 799))
   (smartphone (brand "Apple") (model "iPhone 14") (color "Silver") (price 1099))
   (smartphone (brand "Google") (model "Pixel 7") (color "White") (price 899))
   (smartphone (brand "Sony") (model "Xperia 10") (color "Green") (price 749))
   (smartphone (brand "LG") (model "Velvet") (color "Pink") (price 699))
   (smartphone (brand "Samsung") (model "Galaxy S22") (color "Black") (price 999))
   (smartphone (brand "Huawei") (model "Mate 40") (color "Yellow") (price 999))
   (smartphone (brand "Motorola") (model "Razr 5G") (color "Gold") (price 1099))
   (smartphone (brand "Nokia") (model "9 PureView") (color "Gray") (price 699)) 
)

(deffacts laptops
   (laptop (brand "Apple") (model "MacBook Pro") (color "Silver") (price 1399))
   (laptop (brand "Dell") (model "XPS 13") (color "Black") (price 1099))
   (laptop (brand "HP") (model "Pavilion 15") (color "Silver") (price 799))
   (laptop (brand "Lenovo") (model "ThinkPad X1 Carbon") (color "Gray") (price 1299))
   (laptop (brand "Asus") (model "ZenBook 13") (color "White") (price 999))
   (laptop (brand "Acer") (model "Chromebook 14") (color "Gray") (price 499))
   (laptop (brand "Microsoft") (model "Surface Laptop 3") (color "Platinum") (price 1199))
   (laptop (brand "Razer") (model "Blade 15") (color "Mercury White") (price 1799))
   (laptop (brand "MSI") (model "Prestige 15") (color "Blue") (price 1299))
   (laptop (brand "Samsung") (model "Galaxy Book S") (color "Gold") (price 1149))
)

(deffacts complements
   (complement (type "Headphones") (brand "Sony") (price 299))
   (complement (type "Keyboard") (brand "Logitech") (price 149))
   (complement (type "Mouse") (brand "Razer") (price 79))
   (complement (type "Monitor") (brand "Samsung") (price 279))
   (complement (type "Charger") (brand "Anker") (price 49))
   (complement (type "Case") (brand "Spigen") (price 39))
   (complement (type "Laptop Stand") (brand "Twelve South") (price 89))
   (complement (type "External Hard Drive") (brand "Seagate") (price 129))
   (complement (type "Webcam") (brand "Logitech") (price 139))
   (complement (type "Microphone") (brand "Blue Yeti") (price 179))
)

(deftemplate client
   (slot id)
   (slot name)
   (slot age)
   (slot phone_number)
)

(deffacts clients
   (client (id 1) (name "Angela King") (age 30) (phone_number "555-1234"))
   (client (id 2) (name "Oscar Martinez") (age 25) (phone_number "555-5678"))
   (client (id 3) (name "Michael Scott") (age 35) (phone_number "555-8765"))
   (client (id 4) (name "Pam Beasley") (age 28) (phone_number "555-4321"))
   (client (id 5) (name "Jim Halpert") (age 40) (phone_number "555-6789"))
   (client (id 6) (name "Andy Bernard") (age 22) (phone_number "555-9876"))
   (client (id 7) (name "Kevin Malone") (age 32) (phone_number "555-3456"))
   (client (id 8) (name "Toby Anderson") (age 27) (phone_number "555-6543"))
   (client (id 9) (name "Kelly Kapoor") (age 45) (phone_number "555-2345"))
   (client (id 10) (name "Creed") (age 29) (phone_number "555-7890"))
)

(deftemplate credit_card
   (slot id)
   (slot number)
   (slot holder)
   (slot bank)
   (slot group)
)

(deffacts credit_card
   (credit_card (id 1) (number "1234-5678-9012-3456") (holder "Angela King") (bank "BBVA") (group "Visa"))
   (credit_card (id 2) (number "2345-6789-0123-4567") (holder "Oscar Martinez") (bank "Liverpool") (group "Mastercard"))
   (credit_card (id 3) (number "3456-7890-1234-5678") (holder "Michael Scott") (bank "HSBC") (group "Visa"))
   (credit_card (id 4) (number "4567-8901-2345-6789") (holder "Pam Beasley") (bank "America Express") (group "Mastercard"))
   (credit_card (id 5) (number "5678-9012-3456-7890") (holder "Jim Halpert") (bank "BBVA") (group "Visa"))
   (credit_card (id 6) (number "6789-0123-4567-8901") (holder "Andy Bernard") (bank "Liverpool") (group "Mastercard"))
   (credit_card (id 7) (number "7890-1234-5678-9012") (holder "Kevin Malone") (bank "HSBC") (group "Visa"))
   (credit_card (id 8) (number "8901-2345-6789-0123") (holder "Toby Anderson") (bank "America Express") (group "Mastercard"))
   (credit_card (id 9) (number "9012-3456-7890-1234") (holder "Kelly Kapoor") (bank "BBVA") (group "Visa"))
   (credit_card (id 10) (number "0123-4567-8901-2345") (holder "Creed") (bank "Liverpool") (group "Mastercard"))
)

(deftemplate voucher
   (slot codigo)
   (slot holder)
   (slot description)
)

(deffacts voucher
   (voucher (code "15ELEC") (holder "Angela King") (description "15% Discount on laptops"))
   (voucher (code "ALLXIAOMI") (holder "Oscar Martinez") (description "Protector and Screen Guard on purchase of a Xiaomi"))
   (voucher (code "20CASHBACK") (holder "Michael Scott") (description "20% Cashback on accessories"))
   (voucher (code "HOTSALE") (holder "Pam Beasley") (description "30% Discount on HOT-SALE products"))
)

(deftemplate order
   (slot client-id)
   (slot name-client)
   (slot phone_number)
   (multislot product)
   (slot quantity)
   (slot payment_method)
)

(deffacts orders
   (order (client-id 1) (name-client "Angela King") (phone_number "555-1234") (product smartphone "Apple" "iPhone 13" 999) (quantity 10) (payment_method  "card"))
   (order (client-id 1) (name-client "Angela King") (phone_number "555-1234") (product smartphone "Samsung" "Galaxy S21" 899) (quantity 10) (payment_method  "card"))
   (order (client-id 1) (name-client "Angela King") (phone_number "555-1234") (product smartphone "OnePlus" "9 Pro" 969) (quantity 10) (payment_method  "card"))
   (order (client-id 2) (name-client "Michael Scott") (phone_number "555-5678") (product smartphone "Samsung" "Galaxy S21" 899) (quantity 2) (payment_method  "card"))
   (order (client-id 3) (name-client "Michael Scott") (phone_number "555-8765") (product laptop "Apple" "MacBook Pro" 1299) (quantity 1) (payment_method  "cash"))
   (order (client-id 4) (name-client "Pam Beasley") (phone_number "555-4321") (product complement "Sony" "Headphones" 299) (quantity 2) (payment_method  "cash"))
   (order (client-id 5) (name-client "Jim Halpert") (phone_number "555-6789") (product smartphone "Xiaomi" "Mi 11" 749) (quantity 1) (payment_method  "card"))
   (order (client-id 6) (name-client "Andy Bernard") (phone_number "555-9876") (product laptop "Dell" "XPS 13" 999) (quantity 1) (payment_method  "card"))
   (order (client-id 7) (name-client "Kevin Malone") (phone_number "555-3456") (product complement "Razer" "Mouse" 79) (quantity 1) (payment_method  "cash"))
   (order (client-id 8) (name-client "Toby Anderson") (phone_number "555-6543") (product smartphone "OnePlus" "9 Pro" 969) (quantity 1) (payment_method  "card"))
   (order (client-id 9) (name-client "Kelly Kapoor") (phone_number "555-2345") (product complement "Logitech" "Keyboard" 99) (quantity 20) (payment_method  "card"))
   (order (client-id 9) (name-client "Kelly Kapoor") (phone_number "555-2345") (product complement "Sony" "Headphones" 299) (quantity 15) (payment_method  "card"))
   (order (client-id 10) (name-client "Creed") (phone_number "555-7890") (product smartphone "Sony" "Xperia 5" 849) (quantity 1) (payment_method  "cash"))
)
;1
(defrule wholesale
    (order (name-client ?name) (quantity ?quantity&:(> ?quantity 9)))
    (not (bought plus_10 ?name))
    =>
    (printout t "The client " ?name " has bought plus 10 articles" crlf)
    (assert (bought plus_10 ?name))
)
;2
(defrule wholesale
    (order (name-client ?name) (quantity ?quantity&:(> ?quantity 9)))
    (bought plus_10 ?name)
    (not (es wholesale ?name))
    =>
    (printout t "the client " ?name " does wholesales" crlf)
    (assert (is wholesale ?name))
)
;3
(defrule retailer
    (order (name-client ?name) (quantity ?quantity&:(< ?quantity 10)))
    (not (es wholesale ?name))
    =>
    (printout t "the client " ?name "buys in retailer" crlf)
    (assert (es retailer ?name))
)
;4
(defrule first_time_customers
    (client (name ?name))
    (not (order (name-client ?name)))
    =>
    (printout t "Hi! " ?name " come and get 15% off your first order" crlf)
    (assert (voucher (codigo "FIRST15")(holder ?name) (description (str-cat "15% OFF on your first order"))))
)
;5
(defrule cashback
    (client (name ?name))
    (order (name-client ?name) (client-id ?id) (payment_method  "card"))
    (credit_card (holder ?name) (bank "BBVA"))
    (not (voucher (codigo "BBVADOBLE")(holder ?name) (description "30% doble points in first order")))
    =>
    (printout t ?name " por comprar con TDC BBVA recibe 30% de Puntos Dobles en tu próxima compra" crlf)
    (assert (voucher (codigo "BBVADOBLE")(holder ?name) (description "30% en Puntos Dobles en tu próxima compra")))
)
;6
(defrule generate-cash-voucher
    (client (name ?name) (phone-number ?phone-number))
    (not (order (client-name ?name) (payment-method "card")))
    (order (client-name ?name) (payment-method "cash"))
    =>
    (assert (voucher (code "TDCFIRST15") (holder ?name) (description "Voucher for 10% discount on your next purchase using card")))
    (printout t ?name " use your card and get a 10% discount" crlf)
)
;7
(defrule client-bought-smartphones
    (client (name ?name))
    (order (client-name ?name) (product smartphone $?))
    (not (bought smartphone ?name))
    =>
    (printout t "The client " ?name " has bought a smartphone." crlf)
    (assert (bought smartphone ?name))
)
;8
(defrule client-bought-smartphones-twice
    (client (name ?name))
    (order (client-name ?name) (product smartphone $?))
    (bought smartphone ?name)
    =>
    (printout t "The client " ?name " has bought smartphones at least twice." crlf)
    (assert (consume smartphones ?name))
)
;9
(defrule client-bought-laptops
    (client (name ?name))
    (order (client-name ?name) (product laptop $?))
    (not (bought laptop ?name))
    =>
    (printout t "The client " ?name " has bought a laptop." crlf)
    (assert (bought laptop ?name))
)
;10
(defrule client-bought-laptops-twice
    (client (name ?name))
    (order (client-name ?name) (product laptop $?))
    (bought laptop ?name)
    =>
    (printout t "The client " ?name " has bought laptops at least twice." crlf)
    (assert (consume laptops ?name))
)
;11
(defrule client-bought-accessories
    (client (name ?name))
    (order (client-name ?name) (product accessory $?))
    (not (bought accessory ?name))
    =>
    (printout t "The client " ?name " has bought an accessory." crlf)
    (assert (bought accessory ?name))
)
;12
(defrule client-bought-accessories-twice
    (client (name ?name))
    (order (client-name ?name) (product accessory $?))
    (bought accessory ?name)
    =>
    (printout t "The client " ?name " has bought accessories at least twice." crlf)
    (assert (consume accessories ?name))
)
;13
(defrule wholesale-offer
    (is wholesale ?name)
    =>
    (printout t ?name " you are a wholesale customer and will receive a 20% discount on your next purchase of at least 10 products" crlf)
    (assert (voucher (code "WHOLESALE") (holder ?name) (description "20% discount on your next purchase with a minimum quantity of 10")))
)
;14
(defrule assign-mastercard-voucher
   (credit-card (holder ?name) (group "Mastercard"))
   =>
   (printout t ?name " Use your Mastercard to make a purchase" crlf)
   (assert (voucher (code "MASTERCARD") (holder ?name) (description "Use your Mastercard and get 12 MSI")))
)
;15
(defrule mastercard-smartphone-offer
   (credit-card (holder ?name) (group "Mastercard"))
   (order (client-name ?name) (product accessory $?))
   =>
   (printout t ?name " for buying an accessory you can use your Mastercard to buy another one with 10% cashback" crlf)
   (assert (voucher (code "MASTERCARD") (holder ?name) (description "Use your Mastercard and get 10% cashback on accessories")))
)
;16
(defrule american-express
    (client (name ?name))
    (order (client-name ?name) (client-id ?id) (payment-method "card"))
    (credit-card (holder ?name) (bank "American Express"))
    =>
    (printout t ?name " for buying with American Express receive 24 MSI on your next purchase" crlf)
    (assert (voucher (code "AE24MSI") (holder ?name) (description "24 MSI with American Express on next purchase")))
)
;17
(defrule liverpool
    (client (name ?name))
    (order (client-name ?name) (client-id ?id) (payment-method "card"))
    (credit-card (holder ?name) (bank "Liverpool"))
    =>
    (printout t ?name " for buying with Liverpool your first payment will be in 3 months on your next purchase" crlf)
    (assert (voucher (code "LIVERPOOL") (holder ?name) (description "INITIAL PAYMENT IN 3 MONTHS")))
)
;18
(defrule hsbc
    (client (name ?name))
    (order (client-name ?name) (client-id ?id) (payment-method "card"))
    (credit-card (holder ?name) (bank "HSBC"))
    =>
    (printout t ?name " for buying with HSBC your next purchase has 15% cashback" crlf)
    (assert (voucher (code "HSBCCASHBACK") (holder ?name) (description "Receive 15% Cashback using HSBC")))
)
;19
(defrule casual-seller-offer
    (is retailer ?name)
    =>
    (printout t ?name " you are a casual seller and we will give you a voucher for 10% discount if you buy more than 5 units of a product" crlf)
    (assert (voucher (code "CASUAL") (holder ?name) (description "10% discount on your next purchase with a minimum quantity of 5")))
)
;20
(defrule purchase-over-900-offer
   (order (client-name ?name) (product ?type ?brand ?model ?price&:(> ?price 899)))
   =>
   (printout t "Your shipping will be free for a purchase over 899" crlf)
)
