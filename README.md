# ATENÇÃO!
Como o teste finalizava as 16h eu interrompi o trabalho na branch principal para não afetar avaliação. Contúdo, tive MUITAS restrições de tempo nas 48h do exame e resolvi finalizar a minha ideia de desenvolvimento na branch V2Challange (tanto frontend quanto backend). Ainda que não levem em conta este desenvolvimento na segunda branch, está mais perto da minha visão final de app e implementa o gráfico em fl_chart e melhorias no fluxo gerão de UI/UX. Caso tenham interesse dever a tarefa finalizada, basta baixar o código da branch V2Challange usando. A única coisa que ficou faltando foi implementar código nativo, ai levaria ainda mais tempo do que algumas horas além do prazo.

- git switch V2Challange

# Capturas de Tela da versão final (V2Challange)
![Icon do app na homescreen](https://raw.githubusercontent.com/brunoniconeves/guide-challange/main/1.png)
![Splash screen feita sem plugin](https://raw.githubusercontent.com/brunoniconeves/guide-challange/main/2.png)
![Tela inicial com seletor do modo de visualização](https://raw.githubusercontent.com/brunoniconeves/guide-challange/main/3.png)
![Busca pelo ticker do ativo](https://raw.githubusercontent.com/brunoniconeves/guide-challange/main/4.png)
![Visualização de variação de preço em gráfico para PETR4](https://raw.githubusercontent.com/brunoniconeves/guide-challange/main/5.png)
![No modo horizontal para melhor ver o gráfico](https://raw.githubusercontent.com/brunoniconeves/guide-challange/main/6.png)
![Visualização tabular da variação de preço](https://raw.githubusercontent.com/brunoniconeves/guide-challange/main/7.png)


# Frontend FLUTTER
Repositório do frontend desenvolvido em Flutter.

O projeto foi desenvolvido tendo em mente a separação de responsabilidades, seguindo o padrão GetX


# Executando o Frontend
Por conta do tempo, deixei hardcoded nas configurações da API o path para os endpoints.

Não deu tempo de executar tudo por conta que tentei também fazer o Backend. Então os passos para executar a solução são os seguintes

- Clonar o repositório

- Alterar o caminho do endpoint para o seu IP local de modo que o frontend possa acessar o backend. CrossSiteOrigin está habilitado no backend.
(utilizei o NGROK pois tive problemas com rede). O endpoint pode ser econtrado no caminho: A:\Projetos\Flutter\Guide\app\lib\app\data\repositories\company_repository.dart

- Executar o comando flutter pub get
- Conectar o emulador ou dispositivo físico
- Executar o comando flutter run


# Informações Adicionais

Não foi possível, por restrição de tempo, implementar a tela de código nativo. Optei por mostrar o melhor possível meus conhecimentos em Flutter, implementando, na melhor forma possível:

- uso de gestão de estados com GetX
- uso de rotas nomeadas, bindings, middlaware e passagem de parâmetros com GetX
- integração com a API por meio do DIO e injeção de dependências
- uso de animação para fazer uma interface amigável
- design fora da caixa utilizando curvas no header
- implementação do gráfico na biblioteca solicitada fl_chart

Infelizmente, como podem notar o tempo foi uma grande restrição, pois estou trabalhando normalmente e com muita demanda atualmente.(Tive uma entrega de um novo app mobile essa semana também).

Creio ter gastado cerca de 16 horas construindo o projeto do zero. 

Vejam que há um endpoint de obter informações da companhia e outro para obter somente o último preço.

A ideia era ter feito uma página mais elaborada para o Ativo, com informações que buscaria de outras fontes como Bastter.com ou de outros sites com dados abertos. Porém não houve tempo. 


# FEEDBACK do Challange
Gostei do desafio, implementei coisas rotineiras e coisas que não havia implementado ainda (nunca havia usado a fl_chart, por exemplo). Também acho que esse tipo de avaliação avalia o candidato de forma mais honesta que um code challange de 30 minutos com um problema totalmente fora do dia a dia do profissional. Este desafio foi um caso real com aplicação no mundo real.

Tenho uma sugestão quanto ao prazo. O prazo está ok se eu estivesse desempregado, porém para quem está empregado se torna um pouco cruel.

Uma terefa mais extensa como essa, acho que poderiam passar para fazer no final de semana (no mesmo prazo em horas). Seria mais ou menos o mesmo prazo, mas para o desenvolvedor que está empregado é mais factível realizar...e mais correto para concorrer com outros que podem ter mais tempo livre durante a semana.

Eu corri alguns riscos no meu trabalho para poder cumprir a missão
