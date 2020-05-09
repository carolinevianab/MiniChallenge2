//
//  GTextoViewController.swift
//  Test
//
//  Created by Beatriz Gomes on 07/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class GenTextViewController: UIViewController {
    
    var choice = "";
    @IBOutlet weak var genImage: UIImageView!
    @IBOutlet weak var TitleGen: UILabel!
    @IBOutlet weak var TextGen: UILabel!
    
    
    @IBOutlet weak var backgroundTitle: UIButton!
    @IBOutlet weak var background: UIScrollView!
    @IBOutlet weak var bntQuiz: UIButton!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        backgroundTitle.layer.cornerRadius = 15
        background.layer.cornerRadius = 15
        bntQuiz.layer.cornerRadius = 15
        
        if (choice == "1"){
                       TitleGen.text = "Androginia"
                       TextGen.text = "\n\nAndrógines são pessoas cujo gênero está entre mulher e homem, ou cujo gênero é uma mescla de mulher e homem. Ou ainda, podem ser entre/uma mescla de dois outros gêneros, mas geralmente esses ou são os gêneros binários, ou gêneros relacionados a estes gêneros binários.\nExistem muitas bandeiras para representar andrógines. Uma das mais antigas e populares é dividida em três faixas na vertical. A rosa simboliza feminilidade, a azul masculinidade, e a roxa a mistura entre ambas as qualidades."

            
                       genImage.image  = UIImage(named: "Androgine-Pride-Flag.png")

                   }
                   if (choice == "2"){
                       TitleGen.text = "Cisgênero"
                       TextGen.text = "\n\nAlguém que se identifica completamente e pela vida inteira com o mesmo gênero que lhe foi designado ao nascer, e que a princípio possui todas as características corporais esperadas de uma pessoa de tal gênero em sua sociedade.\nEsta modalidade de gênero é injustamente considerada a padrão em sociedades eurocêntricas ocidentais, e isso gera consequências como pessoas cisdissidentes, ou seja, que não são cis, são mais invalidadas ou questionadas quanto às suas identidades de gênero.\nNão existe nenhuma bandeira reconhecida como oficial ou amplamente usada para representar pessoas cisgênero."

                                
                   }
        if (choice == "3"){
            TitleGen.text = "Gênero fluído"
            TextGen.text = "\n\nPessoas gênero-fluido são pessoas que mudam de gênero de tempos em tempos. As mudanças podem ser: Graduais ou súbitas; constantes ou inconstantes; entre gêneros definidos e/ou indefinidos; entre certos gêneros, e/ou entre gêneros completamente diferentes a cada mudança; influenciadas (por questões como ciclo hormonal, crises, clima, pessoas em volta, etc.) ou não. A bandeira gênero-fluido foi postada em 2012 por JJ Poole no blog nova-pride-flags. Os significados dados às cores são:\nRosa: feminilidade\nBranca: todos os gêneros\nRoxa: combinação de masculinidade e feminilidade"

                     
            genImage.image  = UIImage(named: "Generofluido.png")
        }
        if (choice == "4"){
                   TitleGen.text = "Não binário"
                   TextGen.text = "\n\n\nPessoas não binárias são pessoas cujo gênero não é nem 100% homem e nem 100% mulher. Isso inclui: Pessoas com múltiplos gêneros, de uma vez só ou um de cada vez, mudando de tempos em tempos; A bandeira não-binária mais utilizada foi criada em 2014 por Kye Rowan. Ela é composta de quatro faixas horizontais de igual tamanho, cujo as cores significam: Amarela: Estar fora do conceito de gênero binário; \nBranca: Pessoas que são de multiplos gêneros; \nRoxa: Fluidez e multiplicidade das experiências de gênero, a unicidade e flexibilidade de pessoas não-binárias. \nPreta: Ser agênero ou sem gênero."
                            
                   genImage.image  = UIImage(named: "Nao binario.png")
               }
        if (choice == "5"){
                       TitleGen.text = "Intergênero"
                       TextGen.text = "\n\n\n\nA definição de intergênero mais aceita atualmente é a de um gênero definido por ser intersexo. Ou seja, intergênero pode ser: Um gênero não-binário por si só, definido por intersexualidade; Uma descrição que informa que a pessoa é de certo gênero por ser intersexo, não importa qual gênero. A primeira bandeira intergênero foi feita em 2014 por D no blog Actually Intersex, ela é composta por 7 listras horizontais de tamanhos iguais. As cores e significados são as mesma da bandeira de Intersexo,apenas em ordens diferentes. O rosa e azul representam os gêneros binários, o lavanda a combinação dos dois e o cinza o gradiente entre os dois."
                                
                       genImage.image  = UIImage(named: "Intergenero.png")
                   }
        if (choice == "6"){
                             TitleGen.text = "Queer"
                             TextGen.text = "\n\n\nAs pessoas de gênero queer, ou genderqueer, podem ser pessoas que não são nem 100% homens, nem 100% mulheres. Pessoas bigênero ou com gênero que flui entre homem e mulher também podem se dizer genderqueer; A bandeira genderqueer foi criada por Marilyn Roxie em junho de 2011. Ela possui três faixas horizontais de igual tamanho, cujo as cores representam: \nLavanda: Mistura de masculinidade e feminilidade; \nBranca: Identidade  agênero ou gênero nêutro; \nVerde: Inverso de lavanda. Representa as pessoas cujas identidades não fazem referência a gêneros binários."
                                      
                             genImage.image  = UIImage(named: "Queer.png")
                         }
        if (choice == "7"){
                             TitleGen.text = "Transgênero"
                             TextGen.text = "\n\n\nAlguém que se identifica, total ou parcialmente, com um gênero diferente do que lhe foi designado ao nascer, independentemente de suas características corporais. Pessoas trans podem ser tanto binárias quanto não-binárias, ou mesmo podem não ter certeza se são binárias ou não. Ser trans tem a ver com gênero, e não com orientação sexual. Uma das bandeiras mais populares da comunidade trans foi criada por Monica Helms in 1999, suas cores significam: Azul claro: bebês garotos Rosa claro: bebês garotas Branco: Aqueles que estão em transição ou se consideram neutros ou indefinidos."
                                      
                             genImage.image  = UIImage(named: "Transgender-Pride-Flag.png")
                         }
        if (choice == "8"){
            TitleGen.text = "Agênero"
            TextGen.text = "\n\n\nAgênero é uma identidade que pode denotar ausência de gênero, gênero neutro, ou ausência de identidade de gênero. Algumas pessoas também se identificam como agênero por não entenderem bem seu gênero. A bandeira agênero mais conhecida foi criada por Ska no blog transrants e é formada por 7 listras horizontais de mesma altura, as quais são: \nPretas: simbolizando a completa ausência de gênero; \nCinzas: simbolizando a ausência parcial de gênero; \nBrancas: simbolizando também a completa ausência de gênero; \nVerde: simbolizando gênero não-binário."
                     
            genImage.image  = UIImage(named: "Agender-Pride-Flag.png")
        }

    }
    
    
    @IBAction func quiz(_ sender: Any) {
        performSegue(withIdentifier: "segueQuiz", sender: self)
        
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! QuizIdViewController
        vc.choice = choice
    }

}
