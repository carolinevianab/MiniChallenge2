//
//  GTextoViewController.swift
//  Test
//
//  Created by Beatriz Gomes on 07/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class GTextoViewController: UIViewController {
    
    var choice = "";
    @IBOutlet weak var oriImage: UIImageView!
    @IBOutlet weak var TituloOri: UILabel!
    @IBOutlet weak var TextoOri: UILabel!
    
    
    override func viewDidLoad() {
        super.viewDidLoad()
        
        if (choice == "1"){
                       TituloOri.text = "Androginia"
                       TextoOri.text = "\n\nAndrógines são pessoas cujo gênero está entre mulher e homem, ou cujo gênero é uma mescla de mulher e homem. Ou ainda, podem ser entre/uma mescla de dois outros gêneros, mas geralmente esses ou são os gêneros binários, ou gêneros relacionados a estes gêneros binários. Existem muitas bandeiras para representar andrógines. Uma das mais antigas e populares é dividida em três faixas na vertical. A rosa simboliza feminilidade, a azul masculinidade, e a roxa a mistura entre ambas as qualidades"
            
                       oriImage.image  = UIImage(named: "Androgine-Pride-Flag.png")

                   }
                   if (choice == "2"){
                       TituloOri.text = "Cisgênero"
                       TextoOri.text = "\n\nAlguém que se identifica completamente e pela vida inteira com o mesmo gênero que lhe foi designado ao nascer, e que a princípio possui todas as características corporais esperadas de uma pessoa de tal gênero em sua sociedade. Esta modalidade de gênero é injustamente considerada a padrão em sociedades eurocêntricas ocidentais, e isso gera consequências como pessoas cisdissidentes, ou seja, que não são cis, são mais invalidadas ou questionadas quanto às suas identidades de gênero. Não existe nenhuma bandeira reconhecida como oficial ou amplamente usada para representar pessoas cisgênero."
                                
                   }
        if (choice == "3"){
            TituloOri.text = "Gênero fluído"
            TextoOri.text = "\n\nPessoas gênero-fluido são pessoas que mudam de gênero de tempos em tempos. As mudanças podem ser:Graduais ou súbitas; constantes ou inconstantes; entre gêneros definidos e/ou indefinidos; entre certos gêneros, e/ou entre gêneros completamente diferentes a cada mudança; influenciadas (por questões como ciclo hormonal, crises, clima, pessoas em volta, etc.) ou não. A bandeira gênero-fluido foi postada em 2012 por JJ Poole no blog nova-pride-flags. Os significados dados às cores são: Rosa: feminilidade Branca: todos os gêneros Roxa: combinação de masculinidade e feminilidade"
                     
            oriImage.image  = UIImage(named: "Generofluido.png")
        }
        if (choice == "4"){
                   TituloOri.text = "Não binário"
                   TextoOri.text = "\n\n\nPessoas não binárias são pessoas cujo gênero não é nem 100% homem e nem 100% mulher. Isso inclui: Pessoas com múltiplos gêneros, de uma vez só ou um de cada vez, mudando de tempos em tempos; A bandeira não-binária mais utilizada foi criada em 2014 por Kye Rowan. Ela é composta de quatro faixas horizontais de igual tamanho, cujo as cores significam: Amarela: Estar fora do conceito de gênero binário; \nBranca: Pessoas que são de multiplos gêneros; \nRoxa: Fluidez e multiplicidade das experiências de gênero, a unicidade e flexibilidade de pessoas não-binárias. \nPreta: Ser agênero ou sem gênero."
                            
                   oriImage.image  = UIImage(named: "Nao binario.png")
               }
        if (choice == "5"){
                       TituloOri.text = "Intergênero"
                       TextoOri.text = "\n\n\n\nA definição de intergênero mais aceita atualmente é a de um gênero definido por ser intersexo. Ou seja, intergênero pode ser: Um gênero não-binário por si só, definido por intersexualidade; Uma descrição que informa que a pessoa é de certo gênero por ser intersexo, não importa qual gênero. A primeira bandeira intergênero foi feita em 2014 por D no blog Actually Intersex, ela é composta por 7 listras horizontais de tamanhos iguais. As cores e significados são as mesma da bandeira de Intersexo,apenas em ordens diferentes. O rosa e azul representam os gêneros binários, o lavanda a combinação dos dois e o cinza o gradiente entre os dois."
                                
                       oriImage.image  = UIImage(named: "Intergenero.png")
                   }
        if (choice == "6"){
                             TituloOri.text = "Queer"
                             TextoOri.text = "\n\n\nAs pessoas de gênero queer, ou genderqueer, podem ser pessoas que não são nem 100% homens, nem 100% mulheres. Pessoas bigênero ou com gênero que flui entre homem e mulher também podem se dizer genderqueer; A bandeira genderqueer foi criada por Marilyn Roxie em junho de 2011. Ela possui três faixas horizontais de igual tamanho, cujo as cores representam: \nLavanda: Mistura de masculinidade e feminilidade; \nBranca: Identidade  agênero ou gênero nêutro; \nVerde: Inverso de lavanda. Representa as pessoas cujas identidades não fazem referência a gêneros binários."
                                      
                             oriImage.image  = UIImage(named: "Queer.png")
                         }
        if (choice == "7"){
                             TituloOri.text = "Transgênero"
                             TextoOri.text = "\n\n\nAlguém que se identifica, total ou parcialmente, com um gênero diferente do que lhe foi designado ao nascer, independentemente de suas características corporais. Pessoas trans podem ser tanto binárias quanto não-binárias, ou mesmo podem não ter certeza se são binárias ou não. Ser trans tem a ver com gênero, e não com orientação sexual. Uma das bandeiras mais populares da comunidade trans foi criada por Monica Helms in 1999, suas cores significam: Azul claro: bebês garotos Rosa claro: bebês garotas Branco: Aqueles que estão em transição ou se consideram neutros ou indefinidos."
                                      
                             oriImage.image  = UIImage(named: "Transgender-Pride-Flag.png")
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
