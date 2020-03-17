#!/bin/bash

escolha(){
	echo "Escolha uma das opções abaixo" 
	echo
    echo "PARA FUNCIONAR É NECESSÁRIO INSTALAR OS PACOTES UTILIZANDO A PRIMEIRA OPÇÃO"
    echo "(1) Instalar pacotes"
	echo "(2) matrix"
	echo "(3) fire"
	echo "(4) Steam Locomotive Engine"
	echo "(5) Figlet"
	echo "(6) Sair"
	read entrada
	echo
	case $entrada in
		1) pacotes ;;
        2) cmatrix ;;
        3) aafire ;;
        4) sl ;;
        5)  echo "Digite uma palvra"
            read palavra
            figlet $palavra 
         ;;
	esac
}

pacotes()
{
    sudo apt-get install cmatrix
    sudo apt install libaa-bin
    sudo apt install bb
    sudo apt-get install sl
    sudo apt install figlet
}


clear
echo "Início do programa"
echo "Para iniciar o programa digite \"sim\": "
read primeira_opcao


while [ $primeira_opcao = "sim" ]
do 
    clear
    escolha
    echo "Deseja jogar novamente? (sim / nao)"
    read segunda_opcao
    if [ $segunda_opcao != "sim" ]
    then
        break
    fi
done