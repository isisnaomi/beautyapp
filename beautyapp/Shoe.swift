//
//  Shoe.swift
//  Nike+Research
//
//  Created by Duc Tran on 3/19/17.
//  Copyright © 2017 Developers Academy. All rights reserved.
//

import UIKit

struct GlobalVariables {
    static var favoriteShoes: [Shoe] = []
}

class Shoe
{
    var uid: String?
    var name: String?
    var images: [UIImage]?
    var prices: [Double]
    var urls: [String]
    var price: Double?
    var description: String?
    var detail: String?
    
    init(uid: String, name: String, images: [UIImage], price: Double, prices: [Double], description: String, detail: String, urls: [String])
    {
        self.uid = uid
        self.name = name
        self.images = images
        self.price = price
        self.prices = prices
        self.description = description
        self.detail = detail
        self.urls = urls
    }
    
    class func fetchShoes(category: String) -> [Shoe]
    {
        var shoes = [Shoe]()
        
        switch(category) {
        case "Labiales"  :
            //--------------------------------------LABIALES------------------------------------------------//
            //--------------------------------------LABIALES------------------------------------------------//
            //--------------------------------------LABIALES------------------------------------------------//
            
            // 4
            var shoe4Images = [UIImage]()
            for i in 1...1 {
                shoe4Images.append(UIImage(named: "product_4")!)
            }
            let shoe4 = Shoe(uid: "4",
                             name: "Dose of Colors - Merlot",
                             images: shoe4Images,
                             price: 495, prices:[0,495,4233],
                             description: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             detail: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             urls:["", "https://holabonita.com.mx/collections/dose-of-colors/products/dose-of-colors-merlot", "https://www.amazon.com.mx/Dose-Colors-Liquid-Matte-Lipstick-Merlot/dp/B01MXWKQZ2/ref=sr_1_1?s=hpc&ie=UTF8&qid=1507508940&sr=1-1&keywords=dose+of+Colors+-+Merlot"])
            shoes.append(shoe4)
            
            // 5
            var shoe5Images = [UIImage]()
            for i in 1...1 {
                shoe5Images.append(UIImage(named: "product_5")!)
            }
            let shoe5 = Shoe(uid: "5",
                             name: "Nars Lipstick",
                             images: shoe5Images,
                             price: 510, prices:[510,0,877],
                             description: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             detail: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             urls:["https://www.sephora.com.mx/products/nars-lipstick/v/scarlett-empress", "", "https://www.amazon.com.mx/NARS-Audacious-Lipstick-Fanny-0-14oz/dp/B00SXXLA0K/ref=sr_1_1?ie=UTF8&qid=1507513163&sr=8-1&keywords=NARS+LIPSTICK"])
            shoes.append(shoe5)
            // 12
            var shoe12Images = [UIImage]()
            for i in 1...1 {
                shoe12Images.append(UIImage(named: "product_12")!)
            }
            let shoe12 = Shoe(uid: "12",
                              name: "URBAN DECAY VICE LIPSTICK",
                             images: shoe12Images,
                             price: 280, prices:[280,0,0],
                             description: "Una innovadora fórmula para labios, ahora en una variedad de tonos y terminados en un empaque delgado. ",
                             detail: "Una innovadora fórmula para labios, ahora en una variedad de tonos y terminados en un empaque delgado. ",
                             urls:["https://www.sephora.com.mx/products/urban-decay-vice-lipsticks/v/backtalk", "", ""])
            shoes.append(shoe12)
            // 13
            var shoe13Images = [UIImage]()
            for i in 1...1 {
                shoe13Images.append(UIImage(named: "product_13")!)
            }
            let shoe13 = Shoe(uid: "13",
                             name: "Jouer Labial Líquido - Dulce de Leche",
                             images: shoe13Images,
                             price: 480, prices:[0,480,0],
                             description: "Los labiales Jouer son indelebles. Cuentan con larga duración, mucha pigmentación y una fórmula que no seca los labios",
                             detail: "Los labiales Jouer son indelebles. Cuentan con larga duración, mucha pigmentación y una fórmula que no seca los labios",
                             urls:["", "https://holabonita.com.mx/collections/labios/products/jouer-labial-liquido-dulce-de-leche", ""])
            shoes.append(shoe13)
            
            
            
            break;
        case "Rubores"  :
            //--------------------------------------RUBORES------------------------------------------------//
            //--------------------------------------RUBORES------------------------------------------------//
            //--------------------------------------RUBORES------------------------------------------------//
            //--------------------------------------RUBORES------------------------------------------------//
            // 8
            var shoe8Images = [UIImage]()
            for i in 1...1 {
                shoe8Images.append(UIImage(named: "product_8")!)
            }
            let shoe8 = Shoe(uid: "8",
                             name: "CHEEK PARADE BLUSH KIT",
                             images: shoe8Images,
                             price: 1145, prices:[1145,0,0],
                             description: "Los bronceadores y coloretes emblemáticos de Benefit reunidos en esta paleta de edición limitada. ",
                             detail: "Los bronceadores y coloretes emblemáticos de Benefit reunidos en esta paleta de edición limitada. ",
                             urls:["https://www.sephora.com.mx/products/benefit-cosmetics-cheek-parade/v/default", "", ""])
            shoes.append(shoe8)
            
            // 9
            var shoe9Images = [UIImage]()
            for i in 1...1 {
                shoe9Images.append(UIImage(named: "product_9")!)
            }
            let shoe9 = Shoe(uid: "9",
                             name: "BOBBY BROWN BLUSH",
                             images: shoe9Images,
                             price: 600, prices:[600,0,0],
                             description: "Un sedoso rubor en polvo que se desliza suavemente y ofrece un acabado mate y de larga duración. ",
                             detail: "Un sedoso rubor en polvo que se desliza suavemente y ofrece un acabado mate y de larga duración. ",
                             urls:["https://www.sephora.com.mx/products/bobbi-brown-blush/v/default", "", ""])
            shoes.append(shoe9)
            
            // 10
            var shoe10Images = [UIImage]()
            for i in 1...1 {
                shoe10Images.append(UIImage(named: "product_10")!)
            }
            let shoe10 = Shoe(uid: "10",
                             name: "Bh cosmetics - Carli Bybel Deluxe Palette",
                             images: shoe10Images,
                             price: 690, prices:[0,690,1709],
                             description: "Un sedoso rubor en polvo que se desliza suavemente y ofrece un acabado mate y de larga duración. ",
                             detail: "Un sedoso rubor en polvo que se desliza suavemente y ofrece un acabado mate y de larga duración. ",
                             urls:["", "https://holabonita.com.mx/collections/rostro/products/bh-cosmetics-carli-bybel-deluxe-palette", "https://www.amazon.com.mx/Carli-Bybel-Deluxe-Eyeshadow-Highlighter/dp/B072DVCW14/ref=sr_1_1?ie=UTF8&qid=1507570922&sr=8-1&keywords=Bh+cosmetics+-+Carli+Bybel+Deluxe+Palette"])
            shoes.append(shoe10)
            
            // 11
            var shoe11Images = [UIImage]()
            for i in 1...1 {
                shoe11Images.append(UIImage(named: "product_11")!)
            }
            let shoe11 = Shoe(uid: "11",
                              name: "L.A. Lights Blendable Lip & Cheek Color",
                              images: shoe11Images,
                              price: 710, prices:[710,0,1134],
                              description: "Un lápiz multiusos para las mejillas y los labios con tonos que van desde sutiles brillos hasta colores vibrantes, o tonos luminosos que son perfectos.",
                              detail: "Un lápiz multiusos para las mejillas y los labios con tonos que van desde sutiles brillos hasta colores vibrantes, o tonos luminosos que son perfectos.  ",
                              urls:["https://www.sephora.com.mx/products/smashbox-smashbox-la-lights/v/default", "", "https://www.amazon.com.mx/Smashbox-Lights-Blendable-Silver-Sunset/dp/B01MYY52D2/ref=sr_1_3?s=hpc&ie=UTF8&qid=1507571241&sr=1-3&keywords=L.A.+Lights+Blendable+Lip+%26+Cheek+Color"])
            shoes.append(shoe11)
            
            
            break;
        case "Bases"  :
            //--------------------------------------BASES------------------------------------------------//
            //--------------------------------------BASES------------------------------------------------//
            //--------------------------------------BASES------------------------------------------------//
            
            // 14
            var shoe14Images = [UIImage]()
            for i in 1...1 {
                shoe14Images.append(UIImage(named: "product_14")!)
            }
            let shoe14 = Shoe(uid: "14",
                              name: "RE(MARC)ABLE FULL COVER FOUNDATION",
                              images: shoe14Images,
                              price: 930, prices:[930,0,0],
                              description: "Una base de cobertura completa que dura hasta 24 horas.",
                detail: "Una base de cobertura completa que dura hasta 24 horas.",
                              urls:["https://www.sephora.com.mx/products/marc-jacobs-beauty-re-marc-able-full-cover-foundation/v/beige", "", ""])
            shoes.append(shoe14)
            
            // 15
            var shoe15Images = [UIImage]()
            for i in 1...1 {
                shoe15Images.append(UIImage(named: "product_15")!)
            }
            let shoe15 = Shoe(uid: "15",
                              name: "ALL NIGHTER LIQUID FOUNDATION",
                              images: shoe15Images,
                              price: 650, prices:[650,0,0],
                              description: "Una base a prueba de agua de cobertura completa y terminado mate que dura toda la noche.",
                              detail: "Una base a prueba de agua de cobertura completa y terminado mate que dura toda la noche.",
                              urls:["https://www.sephora.com.mx/products/urban-decay-all-nighter-liquid-foundation/v/4-5", "", ""])
            shoes.append(shoe15)
            
            // 16
            var shoe16Images = [UIImage]()
            for i in 1...1 {
                shoe16Images.append(UIImage(named: "product_16")!)
            }
            let shoe16 = Shoe(uid: "16",
                              name: "Ultra HD Invisible Cover Stick Foundation",
                              images: shoe16Images,
                              price: 710, prices:[710,0,850],
                              description: "Una barra multi usos de larga duración con una cobertura invisible para retoques de bases y contorno.",
                              detail: "Una barra multi usos de larga duración con una cobertura invisible para retoques de bases y contorno.",
                              urls:["https://www.sephora.com.mx/products/make-up-for-ever-ultra-hd-stick-foundation/v/y365", "", "https://www.amazon.com.mx/Ultra-Invisible-Cover-Stick-Foundation/dp/B072FLCX6F/ref=sr_1_1?ie=UTF8&qid=1507582519&sr=8-1&keywords=Ultra+HD+Invisible+Cover+Stick+Foundation"])
            shoes.append(shoe16)
            
            // 3
            var shoe3Images = [UIImage]()
            for i in 1...1 {
                shoe3Images.append(UIImage(named: "product_3")!)
            }
            let shoe3 = Shoe(uid: "3",
                             name: "Beauty Blender - Pink",
                             images: shoe3Images,
                             price: 550, prices:[0,550,195],
                             description: "Beauty Blender es la herramienta necesaria para difuminar cualquier base de maquillaje, crema o corrector en el rostro.",
                             detail: "Beauty Blender es la herramienta necesaria para difuminar cualquier base de maquillaje, crema o corrector en el rostro.",
                             urls:["", "https://holabonita.com.mx/collections/beauty-blender/products/beauty-blender-pink", "https://www.amazon.com.mx/Esponja-Beauty-Blender-Aplicar-Maquillaje/dp/B01NBT3USD/ref=sr_1_2?s=hpc&ie=UTF8&qid=1507508708&sr=1-2&keywords=beauty+blender"])
            shoes.append(shoe3)
            
            break;
            
        case "Sombras"  :
            //--------------------------------------SOMBRAS------------------------------------------------//
            //--------------------------------------SOMBRAS------------------------------------------------//
            //--------------------------------------SOMBRAS------------------------------------------------//
            
            
            // 1
            var shoe1Images = [UIImage]()
            for i in 1...1 {
                shoe1Images.append(UIImage(named: "product_1")!)
            }
            let shoe1 = Shoe(uid: "1",
                             name: "TOO FACED CHOCOLATE BON BONS EYESHADOW PALETTE",
                             images: shoe1Images,
                             price: 1180, prices:[1180,1190,1200],
                             description: "Lo que es: Una paleta de sombras de la colecciónChocolate Bar con 16 tonos en forma de corazón. ",
                             detail: "Lo que es: Una paleta de sombras de la colecciónChocolate Bar con 16 tonos en forma de corazón. ",
                             urls:["https://www.sephora.com.mx/products/too-faced-chocolate-bon-bons-eyeshadow-palette/v/default", "https://holabonita.com.mx/collections/too-faced/products/too-faced-bon-bons-chocolate-bar-palette", "https://www.amazon.com.mx/Too-Faced-Chocolate-Bon-Bons/dp/B019CW6TDI/ref=sr_1_fkmr2_1?ie=UTF8&qid=1507507635&sr=8-1-fkmr2&keywords=bon+Bons+Chocolate+Bar+Palett"])
            shoes.append(shoe1)
            
            
            
            // 17
            var shoe17Images = [UIImage]()
            for i in 1...1 {
                shoe17Images.append(UIImage(named: "product_17")!)
            }
            let shoe17 = Shoe(uid: "17",
                             name: "NAKED ULTIMATE BASICS",
                             images: shoe17Images,
                             price: 1040, prices:[1040,0,4271],
                             description: "Una exclusiva paleta de sombras Naked con 12 tonos exclusivos en mates neutros que… ¡Debes de tener!",
                             detail: "Una exclusiva paleta de sombras Naked con 12 tonos exclusivos en mates neutros que… ¡Debes de tener!",
                             urls:["https://www.sephora.com.mx/products/urban-decay-naked-ultimate-basics/v/default", "", "https://www.amazon.com.mx/Naked-Ultimate-Basics-All-Matte/dp/B01LYVCLOK/ref=sr_1_1?ie=UTF8&qid=1507583079&sr=8-1&keywords=NAKED+ULTIMATE+BASICS"])
            shoes.append(shoe17)
            
            // 18
            var shoe18Images = [UIImage]()
            for i in 1...1 {
                shoe18Images.append(UIImage(named: "product_18")!)
            }
            let shoe18 = Shoe(uid: "18",
                              name: "Dose of Colors - Eyescream",
                              images: shoe18Images,
                              price: 830, prices:[0,830,3038],
                              description: "La paleta Dose of Colors Eyescream es edición limitada, tiene sombras mate y metálicas muy pigmentadas con colores divertidos pasteles.",
                              detail: "La paleta Dose of Colors Eyescream es edición limitada, tiene sombras mate y metálicas muy pigmentadas con colores divertidos pasteles.",
                              urls:["", "https://holabonita.com.mx/collections/ojos/products/dose-of-colors-eyescream", "https://www.amazon.com.mx/Eyescream-Palette-Dose-Colors/dp/B01M6DDB6F/ref=sr_1_1?s=hpc&ie=UTF8&qid=1507583244&sr=1-1&keywords=Dose+of+Colors+-+Eyescream"])
            shoes.append(shoe18)
            
            // 19
            var shoe19Images = [UIImage]()
            for i in 1...1 {
                shoe19Images.append(UIImage(named: "product_19")!)
            }
            let shoe19 = Shoe(uid: "19",
                              name: "NAKED SMOKEY PALETTE",
                              images: shoe19Images,
                              price: 1040, prices:[1040,0,0],
                              description: "Una paleta con 12 tonos smoky neutros, una brocha de doble punta, y un look book detallado con el paso a paso para lograr 4 looks. ",
                              detail: "Una paleta con 12 tonos smoky neutros, una brocha de doble punta, y un look book detallado con el paso a paso para lograr 4 looks.",
                              urls:["https://www.sephora.com.mx/products/urban-decay-naked-smokey/v/default", "", ""])
            shoes.append(shoe19)
            
            break;
        case "Cejas"  :
            //--------------------------------------CEJAS------------------------------------------------//
            //--------------------------------------CEJAS------------------------------------------------//
            //--------------------------------------CEJAS------------------------------------------------//
            
            
            // 2
            var shoe2Images = [UIImage]()
            for i in 1...1 {
                shoe2Images.append(UIImage(named: "product_2")!)
            }
            let shoe2 = Shoe(uid: "2",
                             name: "BROW POWDER DUO",
                             images: shoe2Images,
                             price: 495, prices:[495,360,1935],
                             description: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono",
                             detail: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono",
                             urls:["https://www.sephora.com.mx/products/anastasia-beverly-hills-brow-powder-duo/v/brunette", "https://holabonita.com.mx/collections/anastasia-beverly-hills/products/anastasia-beverly-hills-brow-powder-duo-blonde", "https://www.amazon.com.mx/Anastasia-Beverly-Hills-Brow-Powder/dp/B018IWPOMU/ref=sr_1_7?s=hpc&ie=UTF8&qid=1507507974&sr=1-7&keywords=ANASTASIA+BEVERLY+HILLS"])
            shoes.append(shoe2)
            
            // 7
            var shoe7Images = [UIImage]()
            for i in 1...1 {
                shoe7Images.append(UIImage(named: "product_7")!)
            }
            let shoe7 = Shoe(uid: "7",
                             name: "Anastasia Beverly Hills Brow Powder Duo - Blonde",
                             images: shoe7Images,
                             price: 360, prices:[0,360,0],
                             description: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono.",
                             detail: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono.",
                             urls:["", "https://holabonita.com.mx/collections/rostro/products/anastasia-beverly-hills-brow-powder-duo-blonde", ""])
            shoes.append(shoe7)
            

            
            break;
        case "Rimmel"  :
            //--------------------------------------RIMMEL------------------------------------------------//
            //--------------------------------------RIMMEL------------------------------------------------//
            //--------------------------------------RIMMEL------------------------------------------------//
            
            // 6
            var shoe6Images = [UIImage]()
            for i in 1...1 {
                shoe6Images.append(UIImage(named: "product_6")!)
            }
            let shoe6 = Shoe(uid: "6",
                             name: "BETTER THAN SEX MASCARA",
                             images: shoe6Images,
                             price: 520, prices:[520,0,0],
                             description: "Una mascara voluminosa en un negro obscuro con una brocha con forma de reloj para separar, aplicar y rizar cada pestaña para un volumen perfecto",
                             detail: "Una mascara voluminosa en un negro obscuro con una brocha con forma de reloj para separar, aplicar y rizar cada pestaña para un volumen perfecto",
                             urls:["https://www.sephora.com.mx/products/too-faced-better-than-sex-mascara/v/default", "", ""])
            shoes.append(shoe6)
            
            // 20
            var shoe20Images = [UIImage]()
            for i in 1...1 {
                shoe20Images.append(UIImage(named: "product_20")!)
            }
            let shoe20 = Shoe(uid: "20",
                             name: "TROUBLEMAKER MASCARA",
                             images: shoe20Images,
                             price: 380, prices:[380,0,0],
                             description: "Mascara de pestañas Troublemaker Mascara que aumentará hasta 17 veces el tamaño de tus pestañas. ",
                             detail: "Mascara de pestañas Troublemaker Mascara que aumentará hasta 17 veces el tamaño de tus pestañas. ",
                             urls:["https://www.sephora.com.mx/products/urban-decay-troublemaker-mascara/v/15-ml", "", ""])
            shoes.append(shoe20)
            
            // 21
            var shoe21Images = [UIImage]()
            for i in 1...1 {
                shoe21Images.append(UIImage(named: "product_21")!)
            }
            let shoe21 = Shoe(uid: "21",
                              name: "MASCARA VOLUME EFFET FAUX CILS",
                              images: shoe21Images,
                              price: 570, prices:[570,0,837],
                              description: "Mascara lujosa para un efecto de pestaña postiza, de volumen y de intensidad.",
                              detail: "Mascara lujosa para un efecto de pestaña postiza, de volumen y de intensidad.",
                              urls:["https://www.sephora.com.mx/products/yves-st-laurent-mascara-volumat-n-degrees-3-bleu/v/n-2-marron", "", "https://www.amazon.com.mx/Yves-Saint-Laurent-Mascara-Luxurious/dp/B00SOUAUSA/ref=sr_1_1?s=hpc&ie=UTF8&qid=1507584535&sr=1-1&keywords=MASCARA+VOLUME+EFFET+FAUX+CILS"])
            shoes.append(shoe21)
            
            

            
            break;
        default :
            
            //--------------------------------------DESTACADOS------------------------------------------------//
            //--------------------------------------DESTACADOS------------------------------------------------//
            //--------------------------------------DESTACADOS------------------------------------------------//
            
            // 1
            var shoe1Images = [UIImage]()
            for i in 1...1 {
                shoe1Images.append(UIImage(named: "product_1")!)
            }
            let shoe1 = Shoe(uid: "1",
                             name: "TOO FACED CHOCOLATE BON BONS EYESHADOW PALETTE",
                             images: shoe1Images,
                             price: 1180, prices:[1180,1190,1200],
                             description: "Lo que es: Una paleta de sombras de la colecciónChocolate Bar con 16 tonos en forma de corazón. ",
                             detail: "Lo que es: Una paleta de sombras de la colecciónChocolate Bar con 16 tonos en forma de corazón. ",
                             urls:["https://www.sephora.com.mx/products/too-faced-chocolate-bon-bons-eyeshadow-palette/v/default", "https://holabonita.com.mx/collections/too-faced/products/too-faced-bon-bons-chocolate-bar-palette", "https://www.amazon.com.mx/Too-Faced-Chocolate-Bon-Bons/dp/B019CW6TDI/ref=sr_1_fkmr2_1?ie=UTF8&qid=1507507635&sr=8-1-fkmr2&keywords=bon+Bons+Chocolate+Bar+Palett"])
            shoes.append(shoe1)
            
            // 2
            var shoe2Images = [UIImage]()
            for i in 1...1 {
                shoe2Images.append(UIImage(named: "product_2")!)
            }
            let shoe2 = Shoe(uid: "2",
                             name: "BROW POWDER DUO",
                             images: shoe2Images,
                             price: 495, prices:[495,360,1935],
                             description: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono",
                             detail: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono",
                             urls:["https://www.sephora.com.mx/products/anastasia-beverly-hills-brow-powder-duo/v/brunette", "https://holabonita.com.mx/collections/anastasia-beverly-hills/products/anastasia-beverly-hills-brow-powder-duo-blonde", "https://www.amazon.com.mx/Anastasia-Beverly-Hills-Brow-Powder/dp/B018IWPOMU/ref=sr_1_7?s=hpc&ie=UTF8&qid=1507507974&sr=1-7&keywords=ANASTASIA+BEVERLY+HILLS"])
            shoes.append(shoe2)
            
            // 3
            var shoe3Images = [UIImage]()
            for i in 1...1 {
                shoe3Images.append(UIImage(named: "product_3")!)
            }
            let shoe3 = Shoe(uid: "3",
                             name: "Beauty Blender - Pink",
                             images: shoe3Images,
                             price: 550, prices:[0,550,195],
                             description: "Beauty Blender es la herramienta necesaria para difuminar cualquier base de maquillaje, crema o corrector en el rostro.",
                             detail: "Beauty Blender es la herramienta necesaria para difuminar cualquier base de maquillaje, crema o corrector en el rostro.",
                             urls:["", "https://holabonita.com.mx/collections/beauty-blender/products/beauty-blender-pink", "https://www.amazon.com.mx/Esponja-Beauty-Blender-Aplicar-Maquillaje/dp/B01NBT3USD/ref=sr_1_2?s=hpc&ie=UTF8&qid=1507508708&sr=1-2&keywords=beauty+blender"])
            shoes.append(shoe3)
            
            // 4
            var shoe4Images = [UIImage]()
            for i in 1...1 {
                shoe4Images.append(UIImage(named: "product_4")!)
            }
            let shoe4 = Shoe(uid: "4",
                             name: "Dose of Colors - Merlot",
                             images: shoe4Images,
                             price: 495, prices:[0,495,4233],
                             description: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             detail: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             urls:["", "https://holabonita.com.mx/collections/dose-of-colors/products/dose-of-colors-merlot", "https://www.amazon.com.mx/Dose-Colors-Liquid-Matte-Lipstick-Merlot/dp/B01MXWKQZ2/ref=sr_1_1?s=hpc&ie=UTF8&qid=1507508940&sr=1-1&keywords=dose+of+Colors+-+Merlot"])
            shoes.append(shoe4)
            
            // 5
            var shoe5Images = [UIImage]()
            for i in 1...1 {
                shoe5Images.append(UIImage(named: "product_5")!)
            }
            let shoe5 = Shoe(uid: "5",
                             name: "Nars Lipstick",
                             images: shoe5Images,
                             price: 510, prices:[510,0,877],
                             description: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             detail: "Los labiales líquidos Dose of Colors son muy cremosos de fórmula con larga duración, indelebles y muy pigmentados. ",
                             urls:["https://www.sephora.com.mx/products/nars-lipstick/v/scarlett-empress", "", "https://www.amazon.com.mx/NARS-Audacious-Lipstick-Fanny-0-14oz/dp/B00SXXLA0K/ref=sr_1_1?ie=UTF8&qid=1507513163&sr=8-1&keywords=NARS+LIPSTICK"])
            shoes.append(shoe5)
            
            // 6
            var shoe6Images = [UIImage]()
            for i in 1...1 {
                shoe6Images.append(UIImage(named: "product_6")!)
            }
            let shoe6 = Shoe(uid: "6",
                             name: "BETTER THAN SEX MASCARA",
                             images: shoe6Images,
                             price: 520, prices:[520,0,0],
                             description: "Una mascara voluminosa en un negro obscuro con una brocha con forma de reloj para separar, aplicar y rizar cada pestaña para un volumen perfecto",
                             detail: "Una mascara voluminosa en un negro obscuro con una brocha con forma de reloj para separar, aplicar y rizar cada pestaña para un volumen perfecto",
                             urls:["https://www.sephora.com.mx/products/too-faced-better-than-sex-mascara/v/default", "", ""])
            shoes.append(shoe6)
            
            // 7
            var shoe7Images = [UIImage]()
            for i in 1...1 {
                shoe7Images.append(UIImage(named: "product_7")!)
            }
            let shoe7 = Shoe(uid: "7",
                             name: "Anastasia Beverly Hills Brow Powder Duo - Blonde",
                             images: shoe7Images,
                             price: 360, prices:[0,360,0],
                             description: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono.",
                             detail: "Con este polvo para cejas Anastasia Beverly Hills, puedes crear unas cejas perfectas gracias a la combinación de dos polvos dependiendo el tono.",
                             urls:["", "https://holabonita.com.mx/collections/rostro/products/anastasia-beverly-hills-brow-powder-duo-blonde", ""])
            shoes.append(shoe7)
            // 13
            var shoe13Images = [UIImage]()
            for i in 1...1 {
                shoe13Images.append(UIImage(named: "product_13")!)
            }
            let shoe13 = Shoe(uid: "13",
                              name: "Jouer Labial Líquido - Dulce de Leche",
                              images: shoe13Images,
                              price: 480, prices:[0,480,0],
                              description: "Los labiales Jouer son indelebles. Cuentan con larga duración, mucha pigmentación y una fórmula que no seca los labios",
                              detail: "Los labiales Jouer son indelebles. Cuentan con larga duración, mucha pigmentación y una fórmula que no seca los labios",
                              urls:["", "https://holabonita.com.mx/collections/labios/products/jouer-labial-liquido-dulce-de-leche", ""])
            shoes.append(shoe13)
            

            break;
            
        }
        
        

        
        
        
        return shoes
    }
}

























