# ATENÇÃO!
Como o teste finalizava as 16h eu interrompi o trabalho na branch principal para não afetar avaliação. Contúdo, tive MUITAS restrições de tempo nas 48h do exame e resolvi finalizar a minha ideia de desenvolvimento na branch V2Challange (tanto frontend quanto backend). Ainda que não levem em conta este desenvolvimento na segunda branch, está mais perto da minha visão final de app e implementa o gráfico em fl_chart e melhorias no fluxo gerão de UI/UX. Caso tenham interesse dever a tarefa finalizada, basta baixar o código da branch V2Challange usando. A única coisa que ficou faltando foi implementar código nativo, ai levaria ainda mais tempo do que algumas horas além do prazo.

- git switch V2Challange


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

Infelizmente não tive tempo de fazer o gráfico, achei melhor documentar a solução para que ela rodasse sem problemas.

Creio que em mais 1h conseguiria finalizar o gráfico e outras coisas que planejei, como usar imagem da empresa para fazer um frontend mais elaborado.

Infelizmente, como podem notar o tempo foi uma grande restrição, pois estou trabalhando normalmente e com muita demanda atualmente.
