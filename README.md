::::::::::::::: Instruções ::::::::::::::::::

1 - Adicione o repositório do Java 8:

sudo add-apt-repository ppa:webupd8team/java

2- Atualizar lista de pacotes disponiveis:

sudo apt-get update

3- Instalar o Java 8:

sudo apt-get install oracle-java8-installer

4- Entrar no diretório do usuário:

cd /home/usuario

5- Baixar do repositório do Git o The One:

git clone https://github.com/akeranen/the-one.git

6- Entrar no diretório do The One:

cd the-one

7- Compilar o The One:

sudo ./compile.sh

8- Apagar arquivo padrão de configurações:

sudo rm default_settings.txt

9- Dentro do mesmo direto baixar repositório com configurações prontas:

git clone https://github.com/cairoapcampos/ExecTheOne.git

10- Mover conteúdo para a pasta padrão e deletar pasta vazia:

sudo mv ExecTheOne/* /home/usuario/the-one

sudo rm -R ExecTheOne

11- Executar o script

sudo ./ExecTheOne.sh
