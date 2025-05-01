<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Quiz Alimentos Funcionais</title>
  <style>
    /* Reset básico */
    * { box-sizing: border-box; margin: 0; padding: 0; }
    body { font-family: 'Roboto', sans-serif; background: #f5f5f5; }

    /* Overlay de acesso */
    .overlay {
      position: fixed;
      top: 0; left: 0;
      width: 100vw; height: 100vh;
      background: rgba(0, 0, 0, 0.7);
      display: flex;
      align-items: center;
      justify-content: center;
      z-index: 9999;
    }
    .overlay .modal {
      background: #fff;
      padding: 30px;
      border-radius: 12px;
      box-shadow: 0 8px 24px rgba(0, 0, 0, 0.2);
      width: 90%; max-width: 420px;
      text-align: center;
      animation: fadeIn 0.3s ease-out;
    }

    @keyframes fadeIn {
      from { opacity: 0; transform: translateY(-20px); }
      to { opacity: 1; transform: translateY(0); }
    }

    .overlay h3 {
      font-size: 1.5rem;
      margin-bottom: 12px;
      color: #2c3e50;
    }
    .overlay p {
      font-size: 1rem;
      margin: 8px 0;
      color: #555;
    }
    .overlay p strong {
      color: #2c3e50;
    }
    .overlay input {
      width: 100%;
      padding: 12px 14px;
      margin-top: 16px;
      border: 2px solid #ccc;
      border-radius: 8px;
      font-size: 1rem;
      transition: border-color 0.2s;
    }
    .overlay input:focus {
      outline: none;
      border-color: #3498db;
    }
    .overlay button {
      margin-top: 16px;
      padding: 12px 24px;
      font-size: 1rem;
      border: none;
      border-radius: 8px;
      background: #3498db;
      color: #fff;
      cursor: pointer;
      transition: background 0.2s;
    }
    .overlay button:hover {
      background: #2980b9;
    }
    .overlay .feedback {
      margin-top: 12px;
      font-size: 0.9rem;
      color: #e74c3c;
      min-height: 1.2em;
    }

    /* Conteúdo do quiz (inicialmente escondido) */
    #quiz-content {
      display: none;
      padding: 20px;
      max-width: 800px;
      margin: 60px auto;
    }

    /* Estilos do quiz */
    .quiz-container {
      background: #fff;
      padding: 20px;
      border-radius: 10px;
      box-shadow: 0 0 15px rgba(0,0,0,0.1);
      margin-bottom: 20px;
    }
    .quiz-container h2 {
      color: #2c3e50;
      font-size: 1rem;
      line-height: 1.6;
      margin-bottom: 16px;
    }
    .answers button {
      display: block;
      width: 100%;
      margin: 8px 0;
      padding: 12px;
      font-size: 0.95rem;
      border: 2px solid #ccc;
      border-radius: 6px;
      background: #f8f8f8;
      cursor: pointer;
      text-align: left;
      transition: background 0.2s, border-color 0.2s;
    }
    .answers button:hover {
      background: #ececec;
    }
    .answers button.correct {
      background: #2ecc71;
      border-color: #27ae60;
      color: #fff;
    }
    .answers button.incorrect {
      background: #e74c3c;
      border-color: #c0392b;
      color: #fff;
    }
    .feedback {
      font-size: 0.95rem;
      margin-top: 12px;
      opacity: 0;
      transition: opacity 0.2s;
    }
    .feedback.visible {
      opacity: 1;
    }
    .feedback.correct {
      color: #2ecc71;
    }
    .feedback.incorrect {
      color: #e74c3c;
    }

    /* Botão de imprimir */
    .print-btn {
      display: block;
      margin: 20px auto;
      padding: 10px 20px;
      font-size: 1rem;
      background: #3498db;
      color: #fff;
      border: none;
      border-radius: 6px;
      cursor: pointer;
      transition: background 0.2s;
    }
    .print-btn:hover {
      background: #2980b9;
    }
  </style>
</head>
<body>

  <!-- Overlay de acesso -->
  <div class="overlay" id="access-overlay">
    <div class="modal">
      <h3>Oi Futuro Nutris, Quiz Alimentos Funcionais na aréa!</h3>
      <p>Colabore para que eu possa continuar ajudando cada vez mais vocês.</p>
      <p>Colabore com <strong>R$ 9,90</strong> via PIX para manter as ferramentas:</p>
      <p><strong>PIX:</strong> julianohs881@gmail.com</p>
      <p><strong>WhatsApp:</strong> 44 99914-5291 (envie o comprovante)</p>
      <p>Depois, insira o código de acesso:</p>
      <input type="text" id="access-code" placeholder="Código de acesso">
      <button id="btn-submit-code">Validar</button>
      <div class="feedback" id="access-feedback"></div>
    </div>
  </div>

  <!-- Conteúdo do quiz -->
  <div id="quiz-content">

    <!-- Quiz NUTRIÇÃO EXPERIMENTAL -->
    <div class="quiz-container" id="quiz02">
  <h2>
    
<div class="quiz-container" id="quiz60">
  <h2>
    64- Os glicosinolatos são os precursores de diferentes organossulfurados bioativos em vegetais crucíferos como brócolis, repolho e couve, cujas propriedades quimiopreventivas são largamente estudadas. O sulforafano é um desses derivados bioativos.
    <br><br>
    Fonte: BATISTA, A. G.; SILVA-MAIA, J. K. S.; MARÓSTICA JÚNIOR, M. R. <em>Generation and alterations of bioactive organosulfur and phenolic compounds</em>. In: AMAYA, D. B. R. et al. <em>Chemical Changes During Processing and Storage of Foods</em>. Cambridge: Academic Press, 2021.
    <br><br>
    Com base nas informações apresentadas, avalie as asserções a seguir e a relação proposta entre elas:
    <br><br>
    I – O branqueamento de vegetais como o brócolis não é capaz de cessar a degradação dos glicosinolatos. <br>
    PORQUE <br>
    II – O branqueamento de vegetais não é capaz de inativar a ação da enzima mirosinase.
  </h2>

  <div class="answers">
    <button data-correct="false">a) As asserções I e II são proposições verdadeiras, e a II é uma justificativa correta da I.</button>
    <button data-correct="false">b) As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.</button>
    <button data-correct="false">c) A asserção I é uma proposição verdadeira e a II é uma proposição falsa.</button>
    <button data-correct="false">d) A asserção I é uma proposição falsa e a II é uma proposição verdadeira.</button>
    <button data-correct="true">e) As asserções I e II são proposições falsas.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz61">
  <h2>
    65- O diabetes mellitus (DM) é uma síndrome metabólica de origem múltipla, decorrente da falta de insulina e/ou da incapacidade da insulina exercer adequadamente seus efeitos, caracterizando altas taxas de açúcar no sangue (hiperglicemia) de forma permanente.
    <br><br>
    Fonte: adaptado de: LINDSTRÖM, J.; VIRTANEN, S. M. <em>Functional Foods and Prevention of Diabetes</em>. In: SAARELA, M. (Org.). <em>Food Science, Technology and Nutrition, Functional Foods</em>. 2. ed. Cambridge: Woodhead Publishing Series, 2011.
    <br><br>
    Com base no exposto, analise as alternativas sobre o diabetes mellitus e assinale a correta:
  </h2>

  <div class="answers">
    <button data-correct="true">A. A resistência à ação da insulina é um importante fator na etiologia da DM tipo II.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz62">
  <h2>
    66- Os fitoesteróis são substâncias gordurosas semelhantes ao colesterol, produzidas pelas plantas e presentes em óleos vegetais, sementes, grãos, frutas e hortaliças. Majoritariamente de origem vegetal, possuem a função de estabilizar a camada lipídica e derivados do esqualeno. Na literatura, existem mais de 200 tipos de fitoesteróis descritos.
    <br><br>
    Fonte: adaptado de: SURYAMANI, R. S.; SINGH, I. <em>Phytosterols: physiological functions and therapeutic applications</em>. In: MARÓSTICA-JÚNIOR, M. R. et al. <em>Bioactive Food Components Activity in Mechanistic Approach</em>. Cambridge: Academic Press, 2021.
    <br><br>
    Com base nas informações apresentadas, analise as alternativas e assinale aquela que corresponde a um fitoesterol:
  </h2>

  <div class="answers">
    <button data-correct="true">A. Beta-sitosterol.</button>
    <button data-correct="false">B. Colesterol.</button>
  </div>

  <p class="feedback"></p>
</div>

  <div class="quiz-container" id="quiz62">
  <h2>
   67- Os fitoesteróis são substâncias gordurosas semelhantes ao colesterol, produzidas pelas plantas e presentes em óleos vegetais, sementes, grãos, frutas e hortaliças. Majoritariamente de origem vegetal, possuem a função de estabilizar a camada lipídica e derivados do esqualeno. Na literatura, existem mais de 200 tipos de fitoesteróis descritos.
    <br><br>
    Fonte: adaptado de: SURYAMANI, R. S.; SINGH, I. <em>Phytosterols: physiological functions and therapeutic applications</em>. In: MARÓSTICA-JÚNIOR, M. R. et al. <em>Bioactive Food Components Activity in Mechanistic Approach</em>. Cambridge: Academic Press, 2021.
    <br><br>
    Com base nas informações apresentadas, analise as alternativas e assinale aquela que corresponde a um fitoesterol:
  </h2>

  <div class="answers">
    <button data-correct="true">A. Beta-sitosterol.</button>
    <button data-correct="false">B. Colesterol.</button>
    <button data-correct="false">C. Tocoferol.</button>
    <button data-correct="false">D. Licopeno.</button>
    <button data-correct="false">E. Ácido ascórbico.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz63">
  <h2>
  68-  Os compostos organossulfurados, representados pelos peptídeos γ-glutamil sulfurados, são encontrados em grande quantidade em vegetais das famílias Alliaceae, Cruciferae e Leguminosae. A seus produtos de metabolização se atribui propriedades organoléticas típicas e quando são ingeridos por mamíferos, causam efeitos biológicos diversos. Estes efeitos são diferentes nestas três famílias, devido à formação de metabólitos secundários que dependem da presença ou ausência de enzimas específicas nestes vegetais.
    <br><br>
    Fonte: adaptado de: JAAFARI, M. S.; RAZIS, A. F. A. <em>Sulfur compounds</em>. In: CAZARIN, C. B. B. et al. <em>Bioactive Food Components Activity in Mechanistic Approach</em>. Cambridge: Academic Press, 2022.
    <br><br>
    Com base no texto, analise as afirmativas a seguir sobre os tipos de compostos organossulfurados:
    <br><br>
    I. A alicina está relacionada com a quimioprevenção de cânceres e tumores. <br>
    II. Os glicosinolatos estão relacionados com a prevenção contra danos oxidativos. <br>
    III. O sulforafano está relacionado com a prevenção de doenças neurodegenerativas e cardiovasculares. <br>
    IV. Os organossulfurados compreendem um número pequeno de compostos, com baixa atividade terapêutica.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="true">A. I, II e III, apenas.</button>
    <button data-correct="false">B. II e IV, apenas.</button>
    <button data-correct="false">C. I e IV, apenas.</button>
    <button data-correct="false">D. III e IV, apenas.</button>
    <button data-correct="false">E. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz64">
  <h2>
   69- Os compostos bioativos são substâncias que estão presentes em pequenas quantidades nos alimentos e não têm funções essenciais como os nutrientes, ou seja, sua falta não acarreta uma deficiência ou uma doença. Um dos efeitos biológicos mais marcantes de vários compostos bioativos é sobre a resposta antioxidante endógena, formada por um conjunto de diferentes enzimas com capacidade de atrasar e até de inibir a oxidação celular.
    <br><br>
    Fonte: adaptado de: HORST, M. A.; CRUZ, A. C.; LIAO, I. F. M. <em>Biodisponibilidade de compostos bioativos de alimentos</em>. In: COZZOLINO, S. M. F. (Org.). <em>Biodisponibilidade de Nutrientes</em>. 6. ed. Barueri: Manole, 2020.
    <br><br>
    Com base nas informações apresentadas, avalie as asserções a seguir e a relação proposta entre elas:
    <br><br>
    I. Os compostos bioativos podem aumentar a síntese de enzimas detoxificadoras. <br>
    PORQUE <br>
    II. Os compostos bioativos promovem, a nível transcricional, a ativação de regiões promotoras de vários genes para enzimas de fase II.
  </h2>

  <div class="answers">
    <button data-correct="true">A. As asserções I e II são proposições verdadeiras, e a II é uma justificativa correta da I.</button>
    <button data-correct="false">B. As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.</button>
    <button data-correct="false">C. A asserção I é uma proposição verdadeira, e a II é uma proposição falsa.</button>
    <button data-correct="false">D. A asserção I é uma proposição falsa, e a II é uma proposição verdadeira.</button>
    <button data-correct="false">E. As asserções I e II são proposições falsas.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz65">
  <h2>
   70- O leite materno é considerado um alimento completo, pois possui, além de macro e micronutrientes, anticorpos, hormônios e fatores de crescimento benéficos para a saúde e é a opção de primeira escolha para a alimentação do neonato.
    <br><br>
    Fonte: adaptado de: VICTORA, C. G. et al. <em>Breastfeeding in the 21st century: epidemiology, mechanisms, and lifelong effect</em>. <strong>The Lancet</strong>, v. 387, n. 10017, p. 475–490, 2016. Disponível em: <a href="https://www.thelancet.com/journals/lancet/article/PIIS0140-6736(15)01024-7/fulltext" target="_blank">thelancet.com</a>. Acesso em: 15 jan. 2024.
    <br><br>
    Com base no exposto, analise as afirmativas a seguir sobre o aleitamento materno:
    <br><br>
    I. O aleitamento materno gera benefícios tanto à mãe quanto ao bebê. <br>
    II. A resposta epigenética do aleitamento materno aponta padrões semelhantes em ambos os gêneros. <br>
    III. O leite materno apresenta o mesmo conteúdo de nutrientes durante todo o aleitamento, exceto durante o desmame. <br>
    IV. O aleitamento materno está associado com a menor incidência de doenças infecciosas, alergias alimentares e asma no neonato.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. I, apenas.</button>
    <button data-correct="true">B. I e IV, apenas.</button>
    <button data-correct="false">C. I e III, apenas.</button>
    <button data-correct="false">D. I, II e IV, apenas.</button>
    <button data-correct="false">E. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz66">
  <h2>
   71- Os alimentos funcionais categorizados como modificados podem ser enriquecidos ou fortificados. A diferença trata-se do tipo de composto, onde no caso da fortificação deve obrigatoriamente ser um nutriente, e do enriquecimento, pode ser qualquer composto bioativo. Estratégias neste setor podem ser interessantes para evitar doenças carenciais.
    <br><br>
    Fonte: adaptado de: SANCHO, R. A. S.; PASTORE, G. M. <em>Alimentos Funcionais: a Revolução Silenciosa na Alimentação</em>. <strong>Revista Processos Químicos</strong>, v. 10, n. 19, p. 13-24, 2016. Disponível em: <a href="https://doi.org/10.19142/rpq.v10i19.343" target="_blank">doi.org/10.19142/rpq.v10i19.343</a>. Acesso em: 10 jan. 2024.
    <br><br>
    Com base nas informações apresentadas, analise as afirmativas a seguir sobre estratégias de fortificação de alimentos como políticas públicas:
    <br><br>
    I. A adição de sal iodado tem como objetivo reduzir a incidência de bócio na população. <br>
    II. A adição de ferro no açúcar tem como objetivo diminuir as taxas de anemia ferropriva na população. <br>
    III. A adição de fitoesteróis na margarina tem como objetivo auxiliar no fechamento do tubo neural durante a gestação. <br>
    IV. A adição de ferro e ácido fólico nas farinhas tem como objetivo reduzir as taxas de anemia ferropriva e no fechamento do tubo neural, durante a gestação.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="true">A. I e IV, apenas.</button>
    <button data-correct="false">B. I, II e IV, apenas.</button>
    <button data-correct="false">C. II, III e IV, apenas.</button>
    <button data-correct="false">D. I, apenas.</button>
    <button data-correct="false">E. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz67">
  <h2>
   72- A hipertensão arterial sistêmica (HAS), também conhecida como pressão alta, ocorre quando a pressão do sangue, ou seja, a força do sangue fluindo pelos vasos sanguíneos, é persistentemente muito elevada.
    <br><br>
    Fonte: adaptado de: BARROSO, W. K. S. et al. <em>Diretrizes Brasileiras de Hipertensão Arterial – 2020</em>. <strong>Arquivos Brasileiros de Cardiologia</strong>, v. 116, n. 3, p. 516-658, 2021. Disponível em: <a href="https://abccardiol.org/article/diretrizes-brasileiras-de-hipertensao-arterial-2020/" target="_blank">abccardiol.org</a>. Acesso em: 12 jan. 2024.
    <br><br>
    Com base no exposto, analise as afirmativas a seguir sobre a HAS:
    <br><br>
    I. A HAS ocasiona maior irrigação sanguínea de órgãos e relaxamento cardíaco. <br>
    II. A HAS constitui um fator de risco a cardiopatias, AVC, doenças renais crônicas e mortalidade. <br>
    III. A HAS decorre da vasodilatação dos vasos sanguíneos e do consequente aumento de sua pressão interna. <br>
    IV. A HAS ocorre quando há a elevação persistente da pressão arterial sistólica acima de 140 mmHg e/ou a pressão diastólica maior ou igual a 90 mmHg.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. I e II, apenas.</button>
    <button data-correct="true">B. II e IV, apenas.</button>
    <button data-correct="false">C. I, III e IV, apenas.</button>
    <button data-correct="false">D. I e IV, apenas.</button>
    <button data-correct="false">E. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz68">
  <h2>
   73- Ao entrar em contato com o organismo, o composto bioativo irá promover alterações no sistema fisiológico, a fim de produzir seu efeito. Para isto, ele percorre determinados caminhos, conhecidos como mecanismos de ação. Ou seja, os mecanismos de ação referem-se à via bioquímica ou fisiológica na qual substâncias podem interagir com componentes celulares e realizar efeitos biológicos.
    <br><br>
    Fonte: adaptado de: BIESALSKI, H. K. et al. <em>Bioactive compounds: Definition and assessment of activity</em>. <strong>Nutrition</strong>, v. 25, n. 11, p. 202–205, 2009. Disponível em: <a href="https://pubmed.ncbi.nlm.nih.gov/19608333/" target="_blank">PubMed</a>. Acesso em: 12 jan. 2024.
    <br><br>
    Com base no exposto, analise as afirmativas a seguir sobre a avaliação dos efeitos biológicos dos compostos bioativos:
    <br><br>
    I. Os compostos bioativos possuem caráter fundamentalmente preventivo. <br>
    II. Os efeitos biológicos da ingestão oral de compostos bioativos somente podem ser considerados como evidência a partir da realização de estudos em humanos. <br>
    III. Os testes in vitro de compostos bioativos, por vezes, não são capazes de indicar o conhecimento da metabolização e real biodisponibilidade destes compostos. <br>
    IV. Os nutrientes podem ser considerados compostos bioativos, desde que apresentem ao menos um mecanismo de ação diferente daquele que tange sua função nutricional.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. I e III, apenas.</button>
    <button data-correct="false">B. II e IV, apenas.</button>
    <button data-correct="false">C. I, II e III, apenas.</button>
    <button data-correct="false">D. III e IV, apenas.</button>
    <button data-correct="true">E. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz69">
  <h2>
   74- Simbióticos são compostos por microrganismos vivos que, quando administrados em doses adequadas, podem trazer benefícios à saúde do hospedeiro. São formados pela associação de um ou mais probióticos com um ou mais prebióticos.
    <br><br>
    Fonte: adaptado de: SALGADO, J. M.; CAMPEDELLI, M. L. L. <em>Alimentos probióticos, prebióticos e simbióticos</em>. In: SALGADO, J. M. (Org.). <strong>Alimentos funcionais</strong>. 1. ed. São Paulo: Oficina de Textos, 2017.
    <br><br>
    Com base nas informações apresentadas, analise as afirmativas a seguir sobre os simbióticos:
    <br><br>
    I. O simbiótico é a combinação entre um prebiótico e um probiótico. <br>
    II. A concentração indicada para o consumo de simbióticos é acima de 14 g/dia. <br>
    III. Os probióticos devem ser microencapsulados quando na presença de prebióticos. <br>
    IV. Os prebióticos devem ser capazes de potencializar o efeito dos probióticos, estimulando o crescimento seletivo de microrganismos.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. I e II, apenas.</button>
    <button data-correct="true">B. I e IV, apenas.</button>
    <button data-correct="false">C. II e III, apenas.</button>
    <button data-correct="false">D. III e IV, apenas.</button>
    <button data-correct="false">E. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz38">
  <h2>
    75-As antocianinas são pigmentos naturais presentes em diversas frutas, flores e hortaliças, cujas cores vão do vermelho ao arroxeado. Contudo, são muito instáveis e alguns fatores podem levar à mudança ou até perda total da emissão de cor.
    <br><br>
    Fonte: adaptado de: VILLEGAS-AGUILAR, M. C. et al. In: MAROSTICA-JÚNIOR, M. R.; CAZARIM, C. B. B.; BICAS, J. L.; PASTORE, G. M. (Eds.). <i>Bioactive Food Components Activity in Mechanistic Approach</i>. Cambridge: Academic Press, 2021.
    <br><br>
    Com base no exposto, analise as alternativas e assinale a que corresponde a fatores relacionados a mudanças na estrutura das antocianinas:
  </h2>

  <div class="answers">
    <button data-correct="false">A. Alterações no conteúdo de lipídios.</button>
    <button data-correct="false">B. Adição de sal.</button>
    <button data-correct="true">C. Alterações do pH.</button>
    <button data-correct="false">D. Hidratação.</button>
    <button data-correct="false">E. Adição de açúcar.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz39">
  <h2>
    76-Os alimentos funcionais categorizados como modificados podem ser enriquecidos ou fortificados. A diferença trata-se do tipo de composto, onde no caso da fortificação deve obrigatoriamente ser um nutriente, e do enriquecimento, pode ser qualquer composto bioativo. Estratégias neste setor podem ser interessantes para evitar doenças carenciais.
    <br><br>
    Fonte: adaptado de: SANCHO, R. A. S.; PASTORE, G. M. <i>Alimentos Funcionais: a Revolução Silenciosa na Alimentação</i>. <i>Revista Processos Químicos</i>, v. 10, n. 19, p. 13–24, 2016.
    <br><br>
    Com base nas informações apresentadas, analise as afirmativas a seguir sobre estratégias de fortificação de alimentos como políticas públicas:
    <br><br>
    I. A adição de sal no iodo tem como objetivo reduzir a incidência de bócio na população. <br>
    II. A adição de ferro no açúcar tem como objetivo diminuir as taxas de anemia ferropriva na população. <br>
    III. A adição de fitoesteróis na margarina tem como objetivo auxiliar no fechamento do tubo neural durante a gestação. <br>
    IV. A adição de ferro e ácido fólico nas farinhas tem como objetivo reduzir as taxas de anemia ferropriva e mal fechamento do tubo neural durante a gestação.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. III e IV, apenas.</button>
    <button data-correct="false">B. I e II, apenas.</button>
    <button data-correct="false">C. II e III, apenas.</button>
    <button data-correct="false">D. II e IV, apenas.</button>
    <button data-correct="true">E. I e IV, apenas.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz40">
  <h2>
   77- A alicina é um composto sulfurado derivado do alho, possui atividade antioxidante por mostrar analogia estrutural com o dimetilsulfeto, o qual possui uma boa capacidade varredora de radicais livres, atuando nos processos de agregação plaquetária, aterosclerose, colesterol, reduzindo o estresse oxidativo.
    <br><br>
    Fonte: adaptado de: PUTNIK, P. <i>Bioavailability and food production of organosulfur compounds from edible Allium species</i>. In: BARBA, F. J.; SARAVIA, J. M. A.; CRAVOTTO, G. (Orgs.). <i>Food Science, Technology and Nutrition, Innovative Thermal and Non-Thermal Processing, Bioaccessibility and Bioavailability of Nutrients and Bioactive Compounds</i>. Cambridge: Woodhead Publishing, 2019.
    <br><br>
    Com base no exposto, analise as afirmativas a seguir sobre a alicina:
    <br><br>
    I. A alicina é estável em altas temperaturas. <br>
    II. A alicina possui o elemento químico enxofre. <br>
    III. A alicina é encontrada em vegetais crucíferos, como o alho. <br>
    IV. A alicina é formada majoritariamente em pH neutro, ou seja, igual a 7.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. II, III e IV, apenas.</button>
    <button data-correct="false">B. I, II e III, apenas.</button>
    <button data-correct="false">C. I e IV, apenas.</button>
    <button data-correct="true">D. II e III, apenas.</button>
    <button data-correct="false">E. I, apenas.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz41">
  <h2>
   78- Os primeiros estudos sobre a importância da nutrição no início da vida datam de eras anteriores ao projeto genoma, ao sequenciamento genético e às descobertas epigenéticas. Por meio de estudos epidemiológicos nos períodos históricos de extrema fome e escassez de nutrientes, especialmente no período das grandes guerras e pós-guerras, a hipótese de que a subnutrição afeta tanto o próprio indivíduo como seus descendentes começou a ser avaliada.
    <br><br>
    Fonte: adaptado de: GUIDO, L. N.; BOLAÑOS-JIMÉNEZ, F.; ONG, T. P. In: COMINETTI, C.; ROGERO, M. M.; HORST, M. A. (Orgs.). <i>Genômica Nutricional: dos Fundamentos à Nutrição Molecular</i>. São Paulo: Manole, 2016.
    <br><br>
    Com base nas informações apresentadas, avalie as asserções a seguir e a relação proposta entre elas:
    <br><br>
    I. Um mecanismo epigenético é como uma “gravação” no gene. <br>
    PORQUE <br>
    II. Um mecanismo epigenético leva à replicação de padrões de metilação ou modificações pós-traducionais.
    <br><br>
    A respeito dessas asserções, assinale a opção correta:
  </h2>

  <div class="answers">
    <button data-correct="false">A. A asserção I é uma proposição verdadeira e a II é uma proposição falsa.</button>
    <button data-correct="true">B. As asserções I e II são verdadeiras, e a II é uma justificativa correta da I.</button>
    <button data-correct="false">C. As asserções I e II são verdadeiras, mas a II não é uma justificativa correta da I.</button>
    <button data-correct="false">D. A asserção I é uma proposição falsa e a II é uma proposição verdadeira.</button>
    <button data-correct="false">E. As asserções I e II são falsas.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz42">
  <h2>
  79-  O conhecimento sobre a toxicidade dos compostos bioativos é fundamental para que haja o consumo seguro destes compostos, especialmente quando consumidos na forma de suplementos. Neste contexto, alguns limites máximos de concentração nestes produtos são estabelecidos pela Agência Nacional de Vigilância Sanitária.
    <br><br>
    Fonte: adaptado de: BRASIL. Agência Nacional de Vigilância Sanitária. <i>RDC nº 243 de 26 de julho de 2018</i>. Acesso em: 12 jan. 2024.
    <br><br>
    Com base no exposto, analise as afirmativas a seguir sobre o consumo seguro de compostos bioativos:
    <br><br>
    I. Não há limites máximos estabelecidos para o consumo de compostos fenólicos. <br>
    II. Os probióticos devem ser bem caracterizados quanto à ausência de virulência de linhagem bacteriana. <br>
    III. Não há fortes evidências sobre doses seguras de consumo da maioria dos compostos bioativos como suplementos para gestantes. <br>
    IV. Os valores estabelecidos baseiam-se em estudos realizados pela Agência Nacional de Vigilância Sanitária com a população brasileira.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="true">A. I, II, III e IV.</button>
    <button data-correct="false">B. II e IV, apenas.</button>
    <button data-correct="false">C. II, III e IV, apenas.</button>
    <button data-correct="false">D. III e IV, apenas.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz43">
  <h2>
  80-  Uma dieta balanceada é capaz de fornecer recomendações mínimas e máximas de nutrientes, visando garantir o crescimento e desenvolvimento normais, a manutenção do peso corporal, e são capazes de prevenir tanto doenças carenciais como excessos deletérios, além de poder fornecer efeitos positivos à saúde. Estes efeitos positivos podem ser obtidos através da ingestão de alimentos funcionais e compostos bioativos.
    <br><br>
    Fonte: adaptado de: PIMENTEL, C. V. M. B.; ELIAS, M. F.; PHILIPPI, S. T. <i>Alimentos funcionais e compostos bioativos</i>. São Paulo: Manole, 2019.
    <br><br>
    Com base no texto, analise qual das alternativas a seguir compreende um efeito à saúde proveniente da ingestão de um alimento funcional e seus compostos bioativos:
  </h2>

  <div class="answers">
    <button data-correct="true">A. Exercer efeitos imunomodulatórios.</button>
    <button data-correct="false">B. Prevenir o desenvolvimento de Beribéri, uma doença carencial.</button>
    <button data-correct="false">C. Promover o crescimento e o desenvolvimento infantil.</button>
    <button data-correct="false">D. Diminuir a biodisponibilidade de minerais.</button>
    <button data-correct="false">E. Curar doenças, como o câncer.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz44">
  <h2>
   81- Tratando-se de nutrientes essenciais, as vitaminas e minerais com propriedades funcionais apresentam valores diários de referência de ingestão padronizados pelos <i>Dietary Reference Intakes</i> (DRIs), considerando faixa etária e condição fisiológica.
    <br><br>
    Fonte: adaptado de: PADOVANI, R. M. et al. <i>Dietary reference intakes: aplicabilidade das tabelas em estudos nutricionais</i>. Revista de Nutrição, v. 19, n. 6, p. 741-760, 2006.
    <br><br>
    Com base no exposto, avalie as afirmativas a seguir sobre as DRIs para vitamina A, D, E e C e para Se e Zn:
    <br><br>
    I. Os valores de referência são os mesmos valores utilizados para fins de rotulagem nutricional. <br>
    II. As gestantes e lactantes sempre têm necessidades aumentadas para qualquer destes micronutrientes. <br>
    III. A indicação de suplementações na prescrição dietética deve ter em conta os limites máximos de ingestão. <br>
    IV. Os valores de rotulagem de alimentos são os considerados adequados para atingir a necessidade da maioria da população.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. II, III e IV, apenas.</button>
    <button data-correct="false">B. I, II e III, apenas.</button>
    <button data-correct="false">C. II e III, apenas.</button>
    <button data-correct="true">D. III e IV, apenas.</button>
    <button data-correct="false">E. I e IV, apenas.</button>
  </div>

  <p class="feedback"></p>
</div>
<div class="quiz-container" id="quiz45">
  <h2>
   82- Existem milhares de compostos bioativos, classificados em grupos segundo sua estrutura química. 
    Devido à ampla variedade e distribuição, um alimento pode ser fonte de vários compostos diferentes, tanto nutrientes como não nutrientes. 
    Algumas formas de preparo podem aumentar a biodisponibilidade destes compostos e torná-los mais bioativos, e outras também podem diminuir.<br><br>

    Fonte: adaptado de: COZZOLINO, S. M. F. Biodisponibilidade de minerais. <i>Revista de Nutrição</i>, v. 10, n. 2, p. 87-98, jan. 1997.<br><br>

    Com base no texto, analise as afirmativas a seguir:<br>
    I. As fibras solúveis são compostos bioativos solúveis em água, o que aumenta sua absorção.<br>
    II. Os carotenoides são compostos bioativos solúveis em gorduras, o que aumenta sua absorção.<br>
    III. As vitaminas lipossolúveis são compostos solúveis em gorduras, o que aumenta sua absorção.<br>
    IV. As antocianinas são compostos bioativos solúveis em leite de origem animal, o que aumenta sua absorção.<br><br>
    
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A. II e IV, apenas.</button>
    <button data-correct="false">B. I, II, III e IV.</button>
    <button data-correct="true">C. I, II e III, apenas.</button>
    <button data-correct="false">D. I, apenas.</button>
    <button data-correct="false">E. III e IV, apenas.</button>
  </div>

  <p class="feedback"></p>
</div>

<!-- Botão de impressão -->
<button class="print-btn" onclick="window.print()">Imprimir Quiz</button>
<div class="quiz-container" id="quiz08">
  <h2>
    <br><br>
   83- Composto bioativo é o nome dado a uma substância que apresenta efeito benéfico à saúde, encontrada em alimentos funcionais, nutracêuticos e em alguns suplementos alimentares. 
    Neste contexto, alimentos funcionais, nutracêuticos e suplementos alimentares apresentam diferença de significado.
    <br><br>
    Fonte: adaptado de: SANCHO, R. A. S.; PASTORE, G. M. Alimentos Funcionais: a Revolução Silenciosa na Alimentação. 
    <i>Revista Processos Químicos</i>, v. 10, n. 19, p. 13-24, 2016. Disponível em: https://doi.org/10.19142/rpq.v10i19.343. Acesso em: 10 jan. 2024.
    <br><br>
    Com base no exposto, analise as alternativas e indique a que define um suplemento alimentar:
  </h2>

  <div class="answers">
    <button data-correct="true">A. Trata-se de produto alimentar que visa complementar as necessidades dietéticas, sendo formado por nutrientes essenciais.</button>
    <button data-correct="false">B. Trata-se apenas de proteínas ou aminoácidos, isolados ou hidrolisados, cujo consumo tem o intuito de aumento de massa muscular.</button>
    <button data-correct="false">C. Tratam-se de não nutrientes, isolados ou combinados, em forma de cápsulas ou líquidos.</button>
    <button data-correct="false">D. Trata-se de um composto isolado (puro) em forma de cápsula ou líquido.</button>
    <button data-correct="false">E. Trata-se de uma substância extraída de alimento que proporciona benefício à saúde.</button>
  </div>

  <p class="feedback"></p>
</div>

<button class="print-btn" onclick="window.print()">Imprimir Quiz</button>
<div class="quiz-container" id="quiz08">
  <h2>
    84 <br><br>
    Composto bioativo é o nome dado a uma substância que apresenta efeito benéfico à saúde, encontrada em alimentos funcionais, nutracêuticos e em alguns suplementos alimentares. 
    Neste contexto, alimentos funcionais, nutracêuticos e suplementos alimentares apresentam diferença de significado.
    <br><br>
    Fonte: adaptado de: SANCHO, R. A. S.; PASTORE, G. M. Alimentos Funcionais: a Revolução Silenciosa na Alimentação. 
    <i>Revista Processos Químicos</i>, v. 10, n. 19, p. 13-24, 2016. Disponível em: https://doi.org/10.19142/rpq.v10i19.343. Acesso em: 10 jan. 2024.
    <br><br>
    Com base no exposto, analise as alternativas e indique a que define um suplemento alimentar:
  </h2>

  <div class="answers">
    <button data-correct="true">A. Trata-se de produto alimentar que visa complementar as necessidades dietéticas, sendo formado por nutrientes essenciais.</button>
    <button data-correct="false">B. Trata-se apenas de proteínas ou aminoácidos, isolados ou hidrolisados, cujo consumo tem o intuito de aumento de massa muscular.</button>
    <button data-correct="false">C. Tratam-se de não nutrientes, isolados ou combinados, em forma de cápsulas ou líquidos.</button>
    <button data-correct="false">D. Trata-se de um composto isolado (puro) em forma de cápsula ou líquido.</button>
    <button data-correct="false">E. Trata-se de uma substância extraída de alimento que proporciona benefício à saúde.</button>
  </div>

  <p class="feedback"></p>
</div>

<button class="print-btn" onclick="window.print()">Imprimir Quiz</button>
<div class="quiz-container" id="quiz-q9">
  <h2 style="text-align: justify;">
    85. O leite materno é considerado um alimento completo, pois possui, além de macro e micronutrientes, anticorpos, hormônios e fatores de crescimento benéficos para a saúde e é a opção de primeira escolha para a alimentação do neonato.<br><br>
    Com base no exposto, analise as afirmativas a seguir sobre o aleitamento materno:
    <br><br>
    I. O aleitamento materno gera benefícios tanto à mãe quanto ao bebê.<br>
    II. A resposta epigenética do aleitamento materno adapta padrões semelhantes em ambos os gêneros.<br>
    III. O leite materno apresenta o mesmo conteúdo de nutrientes durante toda a amamentação, exceto durante o desmame.<br>
    IV. O aleitamento materno está associado com a menor incidência de doenças infecciosas, alergias alimentares e asma no neonato.<br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">A) II, III e IV, apenas.</button>
    <button data-correct="true">B) I e IV, apenas.</button>
    <button data-correct="false">C) III e IV, apenas.</button>
    <button data-correct="false">D) II e III, apenas.</button>
    <button data-correct="false">E) I, II, III e IV.</button>
    <p class="feedback"></p>
  </div>
</div>
<div class="quiz-container" id="quiz-q10">
  <h2 style="text-align: justify;">
    10. Os flavonoides são pigmentos naturais presentes na maioria das plantas, cuja síntese não ocorre na espécie humana. Essa classe de compostos está amplamente distribuída na natureza e com várias subclasses, dentre os quais estão os flavan-9-ols, que são os flavonoides no qual fazem parte as catequinas.
    <br><br>
    Com base no texto, analise as alternativas a seguir e assinale a que contém uma importante fonte de catequinas:
  </h2>

  <div class="answers">
    <button data-correct="false">A) Couve manteiga.</button>
    <button data-correct="false">B) Cebolas.</button>
    <button data-correct="true">C) Cacau em pó.</button>
    <button data-correct="false">D) Jabuticaba (casca).</button>
    <button data-correct="false">E) Salsinha seca.</button>
    <p class="feedback"></p>
  </div>
</div>

    <button class="print-btn" onclick="window.print()">Imprimir Quiz</button>
  </div>

  <script>
    // Validação do código
    document.getElementById('btn-submit-code').addEventListener('click', function(){
      const code = document.getElementById('access-code').value.trim();
      const fb   = document.getElementById('access-feedback');
      if (code === '125436') {
        document.getElementById('access-overlay').style.display = 'none';
        document.getElementById('quiz-content').style.display   = 'block';
      } else {
        fb.textContent = 'Código inválido. Tente novamente.';
      }
    });

    // Lógica de interatividade do quiz
    document.body.addEventListener('click', function(event) {
      if (event.target.matches('.answers button')) {
        const btn = event.target;
        const container = btn.closest('.quiz-container');
        const all = container.querySelectorAll('.answers button');
        const correctBtn = container.querySelector('[data-correct="true"]');
        const feedback = container.querySelector('.feedback');
        const isCorrect = btn.dataset.correct === 'true';

        all.forEach(b => b.disabled = true);
        correctBtn.classList.add('correct');
        feedback.classList.add('visible');
        if (isCorrect) {
          feedback.textContent = 'Parabéns, você acertou! 🎉';
          feedback.classList.add('correct');
        } else {
          btn.classList.add('incorrect');
          feedback.textContent = 'Resposta correta: ' + correctBtn.textContent;
          feedback.classList.add('incorrect');
        }
      }
    });
  </script>

</body>
</html>
