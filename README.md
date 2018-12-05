
Adicione o repositório do Java 8:

sudo add-apt-repository ppa:webupd8team/java

Atualizar lista de pacotes disponiveis:

sudo apt-get update

Instalar o Java 8:

sudo apt-get install oracle-java8-installer

Entrar no diretório do usuário:

cd /home/usuario

Baixar do repositório do Git o The One:

git clone https://github.com/akeranen/the-one.git

entrar no diretório do The One:

cd the-one

Compilar o The One:

sudo ./compile.sh

Apagar arquivo padrão de configurações:

sudo rm default_settings.txt

Dentro do mesmo direto baixar repositório com configurações prontas:

git clone https://github.com/cairoapcampos/ExecTheOne.git

Mover conteúdo para a pasta padrão e deletar pasta vazia:

sudo mv ExecTheOne/* /home/usuario/the-one
sudo rm -R ExecTheOne

Executar o script

sudo ./ExecTheOne.sh
