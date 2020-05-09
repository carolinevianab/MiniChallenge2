//
//  OriTextoViewController.swift
//  Test
//
//  Created by Beatriz Gomes on 07/05/20.
//  Copyright © 2020 Aline Mitsuoka. All rights reserved.
//

import UIKit

class OriTextoViewController: UIViewController {
    
    var choice = "";
    
    @IBOutlet weak var oriImage: UIImageView!
    @IBOutlet weak var TituloOri: UILabel!
    @IBOutlet weak var TextoOri: UILabel!
    
    
    @IBOutlet weak var background: UIScrollView!
    @IBOutlet weak var backgroundTitle: UIButton!
    
    @IBOutlet weak var bntQuiz: UIButton!
    
    override func viewDidLoad() {

        super.viewDidLoad()
        backgroundTitle.layer.cornerRadius = 15
        background.layer.cornerRadius = 15
        bntQuiz.layer.cornerRadius = 15
        
            if (choice == "1"){
                TituloOri.text = "Assexual"
                TextoOri.text = "\n\n\nSão pessoas que não sentem atração sexual por nenhum gênero. Alguns não sentem atração sexual por ninguém, enquanto outros sentem atração sexual as vezes e/ou em certas circunstâncias. Existe todo um espectro assexual, chamado de asexualidade cinza, para cobrir as necessidades daqueles que sentem alguma atração. A bandeira Assexual foi criada por um menbro da Asexual Visibility and Education Network (AVEN). As cores da bandeira assexual possuem os seguintes significados:\nPreto: Assexualidade \nCinza: Asexualidade cinza e demissexual \nBranco: Simpatizantes não-assexuais \nRoxo: Comunidade"
                oriImage.image  = UIImage(named: "Assexual-Pride-Flag.png")

            }
            if (choice == "2"){
                TituloOri.text = "Bissexual"
                TextoOri.text = "\n\nPessoas bi são pessoas que sentem atração por dois ou mais gêneros. Michael Page criou a bandeira bissexual em 1998. A bandeira bi é composta de três faixas horizontais, sendo que a do meio tem a metade do tamanho das outras. \nPage escreveu que “a chave para entender o simbolismo da bandeira bi é saber que os pixels roxos são misturados imperceptivelmente tanto com a cor rosa tanto quanto a cor azul, assim como no ‘mundo real’, onde pessoas bi se misturam imperceptivelmente tanto nas comunidades gay/lésbicas quanto nas hétero."
                
                oriImage.image  = UIImage(named: "Bisexual-Pride-Flag.png")
  
            }
            if (choice == "3"){
                TituloOri.text = "Homossexual"
                TextoOri.text = "\n\nAlguém que sente atração pelo mesmo gênero, ou por quem se considera de gêneros similares ao próprio. Em 1978, Gilbert Baker, desenhou uma bandeira arco-íris de 8 cores. Como rosa não estava disponível comercialmente na época, decidiram abrir mão de mais uma cor, o azul anil, para ter uma bandeira que pudesse ser dividida igualmente. \nSuas cores significam: \nVermelho: Vida \nLaranja: Cura \nAmarelo: Sol Verde: Natureza \nAzul: Serenidade \nRoxo: Espírito"
                
                oriImage.image  = UIImage(named: "Homo.jpg")
        
            }
            if (choice == "4"){
                TituloOri.text = "Pansexual"
                TextoOri.text = "\n\nUma pessoa pan sente atração por pessoas de qualquer identidade de gênero, ou por pessoas independentemente de seu gênero. \nA bandeira pansexual foi criada por Jasper em 2010. Composta por três faixas horizontais de mesmo tamanho, cujo as cores significam: Magenta: Atração sexual para aquelas que se identificam com o espectro feminino Amarelo: Atração sexual daqueles que se identificam como não-binários, como andróginos, agêneros e gênero-fluído. Ciano: Atração sexual para aqueles que se identificam com o espectro masculino"
                
                oriImage.image  = UIImage(named: "Pansexual-Pride-Flag.png")
        
            }
            if (choice == "5"){
                     TituloOri.text = "Heterossexual"
                       TextoOri.text = "Alguém que sente atração (sexual e/ou romântica) pelo gênero oposto. Se refere tanto ao sexo masculino quanto ao feminino. Não existe nenhuma bandeira reconhecida como oficial ou amplamente usada para representar os heterossexuais."
                        
               
            }
            if (choice == "6"){
                       TituloOri.text = "Demisexual"
                       TextoOri.text = "\n\n\nSão pessoas do espectro assexual, que podem sentir atração apenas caso exista uma conexão especial prévia com quem é alvo da atração. Tal conexão especial varia de pessoa para pessoa. Algumas pessoas demi sentem atração apenas por pessoas com quem possuem amizades próximas. Outras sentem atração por pessoas com quem passam bastante tempo juntas, mesmo que não sejam tão próximas emocionalmente. As cores e seus significados são os mesmos que da bandeira Assexual, exceto pelo branco. \nPreto: Assexualidade \nCinza: Asexualidade cinza e demissexual \nBranco: Sexualidade \nRoxo: Comunidade"
                       
                       oriImage.image  = UIImage(named: "Demisexual-Pride-Flag.png")
            }
    }
    @IBAction func quiz(_ sender: Any) {
        performSegue(withIdentifier: "segueQuiz2", sender: self)
    }
    
    override func prepare(for segue: UIStoryboardSegue, sender: Any?) {
        let vc = segue.destination as! QuizOrViewController
        vc.choice = choice
    }
    
}
