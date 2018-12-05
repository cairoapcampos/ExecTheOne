::::::::::::::: Instruções ::::::::::::::::::

Instalação feita no GNU/Linux Ubuntu 18.04

1- Remover o OpenJDK caso já esteja instalado:

sudo apt-get purge openjdk*

2- Adicione o repositório do Java 8:

sudo add-apt-repository ppa:webupd8team/java

3- Atualizar lista de pacotes disponiveis:

sudo apt-get update

4- Instalar o Java 8:

sudo apt-get install oracle-java8-installer

5- Entrar no diretório do usuário:

cd $HOME

6- Baixar do repositório do Git o The One:

git clone https://github.com/akeranen/the-one.git

7- Entrar no diretório do The One:

cd the-one

8- Compilar o The One:

sudo ./compile.sh

9- Apagar arquivo padrão de configurações:

sudo rm default_settings.txt

10- Dentro do mesmo direto baixar repositório com configurações prontas:

git clone https://github.com/cairoapcampos/ExecTheOne.git

11- Mover conteúdo para a pasta padrão e deletar pasta vazia:

sudo mv ExecTheOne/* $HOME/the-one

sudo rm -R ExecTheOne

12- Executar o script

sudo ./ExecTheOne.sh
