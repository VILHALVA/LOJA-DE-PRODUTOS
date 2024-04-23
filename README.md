# LOJA DE PRODUTOS
👨‍🏫PROJETO CRIADO PARA O CURSO DE LARAVEL.

<img src="./IMAGENS/1 VIA/FOTO_01.png" align="center" width="500"> <br> 
<img src="./IMAGENS/1 VIA/FOTO_02.png" align="center" width="500"> <br> 
<img src="./IMAGENS/1 VIA/FOTO_03.png" align="center" width="500"> <br> 
<img src="./IMAGENS/1 VIA/FOTO_04.png" align="center" width="500"> <br>
<img src="./IMAGENS/1 VIA/FOTO_05.png" align="center" width="500"> <br>
<img src="./IMAGENS/1 VIA/FOTO_06.png" align="center" width="500"> <br>
<img src="./IMAGENS/1 VIA/FOTO_07.png" align="center" width="500"> <br>
<img src="./IMAGENS/1 VIA/FOTO_08.png" align="center" width="500"> <br>
<img src="./IMAGENS/1 VIA/FOTO_09.png" align="center" width="500"> <br>
<img src="./IMAGENS/1 VIA/FOTO_10.png" align="center" width="500"> <br>
<img src="./IMAGENS/1 VIA/FOTO_11.png" align="center" width="500"> <br>

<details>
<summary>CLIQUE AQUI PARA VER MAIS FOTOS!</summary>
   <img src="./IMAGENS/2 VIA/FOTO_01.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_02.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_03.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_04.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_05.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_06.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_07.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_08.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_09.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_10.png" align="center" width="500"> <br>
   <img src="./IMAGENS/2 VIA/FOTO_11.png" align="center" width="500"> <br>
</details>

## DESCRIÇÃO:
- Este projeto consiste em uma aplicação web desenvolvida utilizando PHP 8, MySQL, Laravel 9, MaterializeCSS, Darryldecode Cart e Chart.js. A proposta é criar uma plataforma semelhante ao Amazon, onde os usuários podem cadastrar produtos com informações como nome, preço, descrição, categoria e foto. Além disso, eles podem adicionar esses produtos a um carrinho de compras e realizar operações básicas de CRUD (criação, leitura, atualização e exclusão) sobre os produtos.

- O projeto é implementado seguindo as melhores práticas de desenvolvimento web e utiliza tecnologias modernas para proporcionar uma experiência de usuário eficiente e segura. Com uma interface amigável e recursos robustos, a aplicação oferece uma plataforma completa para gerenciar uma loja de produtos online.

## RECURSOS:
1. **Gerenciamento de Produtos:** 
   - Os usuários podem cadastrar novos produtos fornecendo detalhes como nome, preço, descrição, categoria e imagem. O formulário de cadastro de produtos é exibido em um modal, proporcionando uma experiência de usuário intuitiva.

   - No painel de produtos, os usuários têm a capacidade de visualizar, adicionar e excluir produtos. Isso oferece controle total sobre o catálogo de produtos da loja.

2. **Listagem de Produtos na Home:** Na página inicial, os usuários podem visualizar uma lista de produtos disponíveis. A paginação é implementada para facilitar a navegação entre os produtos.

3. **Detalhes do Produto:** Ao clicar em um produto, os usuários podem visualizar detalhes como nome, preço, descrição e categoria. Eles também têm a opção de adicionar o produto ao carrinho de compras.

4. **Carrinho de Compras:** Os usuários podem adicionar produtos ao carrinho de compras e visualizar o total de produtos no carrinho. Eles podem atualizar a quantidade de produtos no carrinho, remover produtos e limpar completamente o carrinho.

5. **Autenticação de Usuários:** A autenticação de usuários é implementada para restringir o acesso a determinadas páginas, como o painel de estatísticas (Dashboard). Os usuários devem estar logados para acessar essas páginas.

6. **Cadastro de Usuários:** Os usuários têm a opção de se registrar na plataforma para acessar recursos exclusivos, como o painel de administração. O formulário de registro permite que os usuários forneçam informações básicas, como nome, sobrenome, e-mail e senha.

7. **Logout de Usuários:** Os usuários têm a opção de fazer logout da plataforma a qualquer momento. Ao clicar no botão de logout, eles serão desconectados de suas contas e redirecionados para a página de home. 

8. **Segurança:** A página de login possui validação de entrada e autenticação de dois fatores para garantir a segurança dos usuários. Além disso, as rotas do painel de administração são protegidas por middleware para verificar se o usuário está autenticado.

9. **Painel de Estatistiscas (Dashboard):** Esse painel fornece estatísticas sobre o desempenho da loja, incluindo faturamento, número de usuários e número de pedidos. Gráficos interativos são usados para visualizar essas estatísticas.

10. **Proteção contra Acesso Não Autorizado:** Tentativas de acessar o painel de estatísticas sem autenticação resultam em redirecionamento para a página de login. Isso garante que apenas usuários autorizados possam acessar áreas restritas do aplicativo.

## EXECUTANDO O PROJETO:
**1. Configuração do arquivo `.env`:**
   - Antes de executar o aplicativo, é necessário configurar o arquivo de ambiente `.env` com as informações do seu banco de dados MySQL.
   - Abra o arquivo `.env` localizado na raiz do diretório do projeto `CODIGO` e insira as informações do seu banco de dados conforme abaixo:
   ```plaintext
   DB_CONNECTION=mysql
   DB_HOST=127.0.0.1
   DB_PORT=3306
   DB_DATABASE=cursolaravel
   DB_USERNAME=seu_usuario
   DB_PASSWORD=sua_senha
   ```
   Certifique-se de substituir `seu_usuario` e `sua_senha` pelos detalhes de autenticação do seu banco de dados MySQL.

**2. Criação do Banco de Dados MySQL:**
   - Após configurar o arquivo `.env`, é necessário criar o banco de dados MySQL com o nome especificado na configuração.
   - Execute o seguinte comando SQL no seu cliente MySQL ou na linha de comando:
   ```sql
   CREATE DATABASE cursolaravel CHARACTER SET utf8mb4 COLLATE utf8mb4_unicode_ci;
   ```
   Isso garantirá que o banco de dados seja criado com a codificação `utf8mb4_unicode_ci`, adequada para suportar caracteres multibyte e emojis, se necessário.

**3. Instalando Dependências:**
   - Navegue até o diretório do projeto clonado no seu terminal ou prompt de comando.
   - Execute o seguinte comando para instalar todas as dependências listadas no arquivo `composer.json`:
   ```bash
   composer install
   ```
   Isso instalará todas as dependências necessárias para o funcionamento correto do projeto, garantindo que todas as bibliotecas e pacotes estejam presentes e atualizadas.

**4. Gerenciando as Tabelas:**
   - As migrações já foram criadas utilizando o comando `php artisan make:migration create_table_name --create=table_name...`. Você pode encontrá-las no diretório `./CODIGO/database/migrations`. Lembre-se de que você pode editar esses arquivos antes de executá-los.
   - Para aplicar as migrações ao banco de dados (Apenas para criar as Tabelas), utilize o seguinte comando:
   ```bash
   php artisan migrate
   ``` 
   Este comando executará todas as migrações que ainda não foram aplicadas, garantindo que o esquema do banco de dados esteja atualizado de acordo com suas definições.

   - Para executar vários seeders de uma vez (Inserir os registros nas Tabelas), você pode usar o comando `db:seed` sem argumentos:
   ```bash
   php artisan db:seed
   ```
   Isso executará todos os seeders registrados no método `run()` do arquivo `DatabaseSeeder.php`, localizado no diretório `database/seeders`. Até o momento, foram criados seeders apenas para as tabelas: `Produtos`, `Users` e `Categorias`. Você pode criar outros para `regras`.

**5. Importação das Tabelas:**
   - Para acessar o conteúdo mostrado nas imagens, é necessário importar o arquivo `DATABASE/DATABASE.sql` para o seu banco de dados. Este arquivo inclui exclusivamente as tabelas com seus conteúdos correspondentes.

**6. Criando um link simbólico:**
   - Execute o seguinte comando:
   ```bash
   php artisan storage:link
   ```

   - Isso permite que os arquivos armazenados na pasta storage sejam acessíveis publicamente através da URL public/storage (As fotos são salvas em `CODIGO/storage/app/public/produtos`). 
   
**7. Executando o Servidor Embutido:**
   Agora você pode iniciar o servidor embutido do PHP com o seguinte comando:
   ```bash
   php artisan serve
   ```
   Isso iniciará o servidor local e você poderá acessar o aplicativo por meio do navegador da web.

8. **Acessando o Site:**
   * Abra seu navegador da web favorito e digite o seguinte endereço na barra de endereços:
   ```
   http://localhost:8000
   ```
   * Agora você pode explorar o site e interagir com os diferentes recursos clicando nos botões disponíveis!

**9. Fazendo Login como Administrador (Verifique na Tabela `users`):**
- Clique no botão de `Login` ou acesse o seguinte link: [http://localhost:8000/login](http://localhost:8000/login)
- Utilize as seguintes credenciais de administrador:
  - **E-mail:** `VILHALVA@gmail.com` - Utilize este e-mail para adicionar todos os produtos que já foram cadastrados no `carrinho`.
  - **E-mail:** `contato@gmail.com`
  - **E-mail:** `contato2@gmail.com`
  - **Senha dos 3 E-mails:** `12345678`

## NÃO SABE?
- Entendemos que para manipular arquivos em `PHP`, `LARAVEL` e outras tecnologias relacionadas, é necessário possuir conhecimento nessas áreas. Para auxiliar nesse aprendizado, oferecemos alguns guias:
* [CURSO DE PHP](https://github.com/VILHALVA/CURSO-DE-PHP)
* [CURSO DE MYSQL](https://github.com/VILHALVA/CURSO-DE-MYSQL)
* [VEJA A DOCUMENTAÇÃO DO "MATERIALIZECSS"](https://materializecss.com/)
* [VEJA A DOCUMENTAÇÃO DO "DARRYLDECODE CART"](https://packagist.org/packages/darryldecode/cart)
* [VEJA A DOCUMENTAÇÃO DO "CHARTJS"](https://www.chartjs.org/)
* [CONFIRA MAIS CURSOS](https://github.com/VILHALVA?tab=repositories&q=+topic:CURSO)

## CREDITOS:
- [PROJETO CRIADO PARA O CURSO DE LARAVEL](https://github.com/VILHALVA/CURSO-DE-LARAVEL)
- [PROJETO FEITO PELO VILHALVA](https://github.com/VILHALVA)



