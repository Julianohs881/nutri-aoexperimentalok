<!DOCTYPE html>
<html lang="pt-BR">
<head>
  <meta charset="UTF-8">
  <meta name="viewport" content="width=device-width, initial-scale=1">
  <title>Quiz de Nutrição Experimental </title>
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
      <h3>Oi Futuro Nutris, Quiz de nutrição Experimental na aréa!</h3>
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
    01) As instalações físicas e as práticas higiênicas em biotérios são aspectos críticos para garantir o bem-estar dos animais de laboratório, a integridade dos experimentos e o cumprimento de padrões éticos.
    <br><br>
    Considere o contexto mencionado e analise as afirmações a seguir que versam sobre características construtivas dos biotérios:
    <br><br>
    I. O teto deve ser feito de concreto liso e plano, não pode conter fundos falsos ou materiais com possíveis frestas ou que possam acumular sujidades.
    <br>
    II. As paredes devem ser lisas, sem rachaduras e com revestimento impermeável e resistente a agentes químicos.
    <br>
    III. As janelas devem possuir aberturas que permitam a troca de ar com o ambiente externo ao prédio de instalação do biotério.
    <br>
    IV. As portas devem ser metálicas ou revestidas com material lavável e resistente a produtos químicos.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">1. I, apenas.</button>
    <button data-correct="false">2. I e II, apenas.</button>
    <button data-correct="false">3. II e IV, apenas.</button>
    <button data-correct="true">4. I, II e IV, apenas.</button>
    <button data-correct="false">5. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz03">
  <h2>
    02) A utilização de animais em pesquisas científicas é uma prática comum, contudo, a variabilidade biológica entre indivíduos de uma mesma espécie é uma consideração crítica que pode impactar significativamente os resultados experimentais. Essa variabilidade pode surgir de fatores genéticos, ambientais e até mesmo técnicos.
    <br><br>
    Para lidar com essa questão, os pesquisadores empregam estratégias cuidadosas, como o uso de linhagens específicas de animais, controle rigoroso das condições ambientais e a aplicação de métodos estatísticos robustos. Uma dessas possibilidades é a manipulação do status sanitário pela alteração da microbiota do animal.
    <br><br>
    Sobre o assunto mencionado acima, assinale a alternativa que apresenta o nome que se dá ao grupo de animais que são totalmente livres de microrganismos.
  </h2>

  <div class="answers">
    <button data-correct="true">1. Germfree.</button>
    <button data-correct="false">2. Gnotobióticos.</button>
    <button data-correct="false">3. Convencionais.</button>
    <button data-correct="false">4. Freemicrorganisms.</button>
    <button data-correct="false">5. SPF (specific-pathogen free).</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz04">
  <h2>
    03) Diversos tipos de animais são utilizados em pesquisas científicas, dependendo dos objetivos específicos do estudo. A escolha dos animais pode variar com base na natureza da pesquisa, nos resultados desejados e em considerações éticas.
    <br><br>
    De acordo com a utilização de diferentes tipos de animais em pesquisa, julgue as afirmativas abaixo:
    <br><br>
    I. Alguns tipos de animais utilizados em pesquisas são ratos, camundongos, porquinhos-da-Índia, hamsters, coelhos, cachorros e macacos.
    <br>
    II. Cachorros se destacam por ocuparem a maior parte dos estudos realizados no mundo.
    <br>
    III. Na área da Nutrição, experimentos utilizando os ratos Wistar são amplamente utilizados.
    <br>
    IV. Porquinhos-da-Índia são os mais utilizados em pesquisa na área da Nutrição.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">1. I, apenas.</button>
    <button data-correct="true">2. I e III, apenas.</button>
    <button data-correct="false">3. I, II e III, apenas.</button>
    <button data-correct="false">4. I, II e IV, apenas.</button>
    <button data-correct="false">5. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz05">
  <h2>
    4) Os biotérios são instalações especializadas projetadas para a criação e manutenção de animais de laboratório. Esses animais são frequentemente utilizados em pesquisas científicas nas áreas de biologia, medicina, farmacologia e outras disciplinas. Já o Bioterismo é a ciência envolvida na aplicação e aperfeiçoamento das instalações e estruturas de criação e experimentação de animais.
    <br><br>
    Sobre os objetivos quando da criação do bioterismo, analise as asserções abaixo:
    <br><br>
    I. O bioterismo pretendia resolver conflitos bioéticos no manejo, criação e experimentação de reagentes biológicos.
    <br><br>
    PORQUE
    <br><br>
    II. Na época havia a necessidade de entender as possíveis interferências que o ambiente poderia causar no resultado dos estudos.
    <br><br>
    A respeito dessas asserções, assinale a opção correta:
  </h2>

  <div class="answers">
    <button data-correct="false">1. As asserções I e II são proposições verdadeiras e a II é uma justificativa correta da I.</button>
    <button data-correct="true">2. As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.</button>
    <button data-correct="false">3. A asserção I é uma proposição verdadeira e a II é uma proposição falsa.</button>
    <button data-correct="false">4. A asserção I é uma proposição falsa e a II é uma proposição verdadeira.</button>
    <button data-correct="false">5. As asserções I e II são proposições falsas.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz05">
  <h2>
    05) Apesar de haver um crescente esforço para desenvolver métodos alternativos sempre que possível, animais são utilizados em pesquisas científicas por diversos motivos. A pesquisa com animais desempenha um papel crucial no avanço científico, permitindo a compreensão de processos biológicos e o desenvolvimento de tratamentos médicos.
    <br><br>
    Sobre as possibilidades de uso de animais em pesquisas, analise as asserções abaixo:
    <br><br>
    I. O uso de roedores em estudos de composição corporal é desencorajado.
    <br><br>
    PORQUE
    <br><br>
    II. O crescimento e ganho de peso desses animais não é linear e ainda não existem métodos para sua avaliação.
    <br><br>
    A respeito dessas asserções, assinale a opção correta:
  </h2>

  <div class="answers">
    <button data-correct="false">1. As asserções I e II são proposições verdadeiras e a II é uma justificativa correta da I.</button>
    <button data-correct="false">2. As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.</button>
    <button data-correct="false">3. A asserção I é uma proposição verdadeira e a II é uma proposição falsa.</button>
    <button data-correct="false">4. A asserção I é uma proposição falsa e a II é uma proposição verdadeira.</button>
    <button data-correct="true">5. As asserções I e II são proposições falsas.</button>
  </div>

  <p class="feedback"></p>
</div>



<div class="quiz-container" id="quiz07">
  <h2>
    6) Os aspectos de luz, ventilação e ruído são críticos para garantir condições adequadas em biotérios, promovendo o bem-estar dos animais e a validade dos resultados de pesquisa. A temperatura não controlada, por exemplo, causa estresse aos animais comprometendo parâmetros importantes na pesquisa e desrespeitando princípios éticos.
    <br><br>
    Sobre o controle de luz, ventilação e ruído considere as afirmações a seguir e assinale a correta:
  </h2>

  <div class="answers">
    <button data-correct="false">1. As luzes do laboratório devem ser incandescentes, para ajudar na intensidade de calor.</button>
    <button data-correct="false">2. A temperatura ideal para a maioria das espécies de modelos experimentais é de 35 ºC.</button>
    <button data-correct="true">3. A quebra abrupta ou aumento importante na temperatura pode causar a morte dos animais.</button>
    <button data-correct="false">4. A iluminação do biotério deverá utilizar a iluminação do sol e em caso de dias de pouca iluminação há a necessidade de se utilizar as lâmpadas.</button>
    <button data-correct="false">5. A ventilação deve ser realizada por meio de janelas com aberturas suficiente à troca de ar com o ambiente externo ao prédio de instalação do biotério.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz08">
  <h2>
    7) Os biotérios são instalações especializadas projetadas para a criação e manutenção de animais de laboratório, além de servirem como ambientes controlados para experimentação. Essas instalações desempenham um papel crucial em pesquisas científicas que envolvem animais, proporcionando condições adequadas para o cuidado, reprodução e utilização ética dos animais. Existem diferentes tipos de biotérios, e suas funções podem variar dependendo dos objetivos da pesquisa.
    <br><br>
    Assim, sobre os cuidados na criação e planejamento das instalações dos biotérios, analise as asserções abaixo:
    <br><br>
    Animais que estão em fase de manutenção e criação não podem entrar em contato com os que estão em fase de experimentação.
    <br><br>
    PORQUE
    <br><br>
    O biotério de criação pode ser um importante contaminante.
    <br><br>
    A respeito dessas asserções, assinale a opção correta:
  </h2>

  <div class="answers">
    <button data-correct="true">1. As asserções I e II são proposições verdadeiras e a II é uma justificativa correta da I.</button>
    <button data-correct="false">2. As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.</button>
    <button data-correct="false">3. A asserção I é uma proposição verdadeira e a II é uma proposição falsa.</button>
    <button data-correct="false">4. A asserção I é uma proposição falsa e a II é uma proposição verdadeira.</button>
    <button data-correct="false">5. As asserções I e II são proposições falsas.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz09">
  <h2>
    8) A biossegurança é um conjunto de medidas voltadas para a prevenção, controle e contenção de riscos que possam comprometer a saúde humana, animal e o meio ambiente em ambientes laboratoriais e de pesquisa. Dentre as práticas adotadas, destaca-se a utilização de equipamentos de proteção individual (EPIs), a correta manipulação e descarte de resíduos biológicos, além do emprego de barreiras físicas e químicas.
    <br><br>
    Considerando esses aspectos, qual das seguintes opções representa uma medida eficaz para reduzir a disseminação de patógenos em um laboratório?
  </h2>

  <div class="answers">
    <button data-correct="false">1. Limpeza esporádica de bancadas e equipamentos de trabalho.</button>
    <button data-correct="false">2. União de resíduos biológicos e comuns para simplificação de processos.</button>
    <button data-correct="false">3. Manipulação de microrganismos sem luvas para maior destreza nas atividades.</button>
    <button data-correct="true">4. Implementação de barreiras físicas, como lâmpadas UV, para desinfecção de superfícies.</button>
    <button data-correct="false">5. Otimização do tempo através do armazenamento de substâncias em recipientes não identificados.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz10">
  <h2>
    9) A importância das pesquisas é fundamental para o avanço do conhecimento em todas as áreas do saber. Por meio da investigação sistemática e rigorosa, as pesquisas possibilitam a descoberta de novos fatos, a validação de teorias existentes e a busca por soluções inovadoras para desafios contemporâneos. Contribuem para a expansão das fronteiras do entendimento humano, fornecendo a base necessária para avanços científicos, tecnológicos, sociais e culturais.
    <br><br>
    De acordo com os tipos de pesquisas experimental e não experimental, julgue as afirmativas abaixo:
    <br><br>
    I. A pesquisa não experimental é também conhecida como observacional.
    <br>
    II. Na pesquisa experimental, o pesquisador não interfere no grupo amostral.
    <br>
    III. Na pesquisa experimental existe, pelo menos, uma variável controlada pelo estudo a fim de provocar eventos e observar a resposta dos grupos estudados.
    <br>
    IV. A pesquisa experimental pode utilizar materiais biológicos (células, tecidos), animais ou até mesmo seres humanos.
    <br><br>
    É correto o que se afirma em:
  </h2>

  <div class="answers">
    <button data-correct="false">1. I, apenas.</button>
    <button data-correct="false">2. I e II, apenas.</button>
    <button data-correct="true">3. I, III e IV, apenas.</button>
    <button data-correct="false">4. III e IV, apenas.</button>
    <button data-correct="false">5. I, II, III e IV.</button>
  </div>

  <p class="feedback"></p>
</div>

<div class="quiz-container" id="quiz07">
  <h2>
    10) Os métodos científicos desempenham um papel fundamental na busca pelo conhecimento e compreensão do mundo que nos cerca. Eles oferecem um conjunto de técnicas e procedimentos sistemáticos que permitem aos pesquisadores investigar fenômenos, testar hipóteses e validar teorias. A importância dos métodos científicos reside na capacidade de garantir a objetividade, replicabilidade e confiabilidade dos resultados obtidos, contribuindo para a construção de um conhecimento sólido e confiável. Em paralelo, os tipos de pesquisa desempenham papéis específicos nesse processo.
    <br><br>
    Sobre os tipos de pesquisa quanto à sua finalidade, analise as asserções abaixo:
    <br><br>
    I. A pesquisa aplicada é mais adequada quando se busca obter uma compreensão inicial e aprofundada de um fenômeno pouco estudado.
    <br><br>
    PORQUE
    <br><br>
    II. Visa investigar um tema de maneira mais flexível, sem a imposição de hipóteses rígidas, permitindo a descoberta de novos insights.
    <br><br>
    A respeito dessas asserções, assinale a opção correta:
  </h2>

  <div class="answers">
    <button data-correct="false">1. As asserções I e II são proposições verdadeiras e a II é uma justificativa correta da I.</button>
    <button data-correct="false">2. As asserções I e II são proposições verdadeiras, mas a II não é uma justificativa correta da I.</button>
    <button data-correct="false">3. A asserção I é uma proposição verdadeira e a II é uma proposição falsa.</button>
    <button data-correct="false">4. A asserção I é uma proposição falsa e a II é uma proposição verdadeira.</button>
    <button data-correct="true">5. As asserções I e II são proposições falsas.</button>
  </div>

  <p class="feedback"></p>
</div>


    <button class="print-btn" onclick="window.print()">Imprimir Quiz</button>
  </div>

  <script>
    // Validação do código
    document.getElementById('btn-submit-code').addEventListener('click', function(){
      const code = document.getElementById('access-code').value.trim();
      const fb   = document.getElementById('access-feedback');
      if (code === '232524') {
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
