Webmotors
===================

### Descrição
Reserve 2 horas para a realização do teste, após aplicação do teste você tem até 24 horas para envio do seu projeto.
Testes enviados com o prazo maior do que esse serão desconsiderados.
Fica a critério do candidato a estrutura e arquitetura do projeto, sendo aceitos java e kotlin e qualquer outra biblioteca de escolha do candidato (exemplo: bibliotecas de renderização de imagens).
O teste consiste na criação de um aplicativo para exibição de carros.   

As únicas especificações técnicas é que a listagem deve ser de scroll infinito, ao clicar no card/item deve abrir uma tela de detalhe do veículo e que na listagem dos carros, os carros devem ser carregados de 10 em 10 (parâmetro de pagina e qtd especificados na API). A tela com material design, animações e uso de SQLite serão consideradas um diferencial.   
Além da tela, é esperado o consumo do Webservice de consulta de veículos que se encontra no formato Swagger no endereço: http://desafioonline.webmotors.com.br/swagger/ui/index#/OnlineChallenge
Após a conclusão do seu projeto submeta em formato .zip no endereço: http://desafioonline.webmotors.com.br/Home/Cadastrar

### Imagens
![Alt Text](https://github.com/juniorobici/Webmotors/blob/master/Imagens/Tela1.png)
![Alt Text](https://github.com/juniorobici/Webmotors/blob/master/Imagens/Tela2.png)

#### Requisitos:
- XCode: 11.5   
- Swift: 5.0   
- iOS: 12.0+   
- Cocoapods   

#### Passo a passo:
- 1. Após clonar o projeto abra um terminal na pasta principal "Webmotors".   
- 2. Execute o comando "pod install" para obter as dependências do projeto no Cocoapods.   
- 3. Abra o arquivo "Webmotors.xcworkspace".   
- 4. Na "Project navigator" selecionar o arquivo principal do projeto "Webmotors" :arrow_right: Na aba "Signing & Capabilities" :arrow_right: "Signing" :arrow_right: "Team" Selecionar o time configurado no XCode.   
- 5. Utilize o botão "Build & Run" ou as teclas "(Command)⌘+B e (Command)⌘+R" para executar o projeto no simulador.  
- 6. Caso opte por executar em um dispositivo físico:   
Após o "Build & Run" no XCode, no dispositivo entrar em Ajustes :arrow_right: Geral :arrow_right: Gerenciamento de Dispositivo :arrow_right: Selecione a conta de Desenvolvedor :arrow_right: e agora o "Webmotors" vai estar disponível na lista dos app e basta utilizar o botão "Confiar em:" para poder utiliza-lo no dispositivo.  

### Observações
 - A API não tem as especificações do parâmetro para "qtd"