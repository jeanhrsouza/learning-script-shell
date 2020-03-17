#!/bin/bash

pingar()
{
    echo "Escolha um dos sites a serem pingados"
    echo
    echo "(1) Google"
    echo "(2) Facebook"
    echo "(3) Yahoo"
    echo "(4) Outro"
    echo "(5) Sair"
    read entrada_ping
    case $entrada_ping in
        1) 
            echo
            echo "Digite a quantidade que deseja pingar"
            read qtd_pingar
            echo
            for ((i=0;i<$qtd_pingar;i++))
            do
                echo
                ping google.com.br -c $qtd_pingar
                break
                echo
            done
            ;;
        2) 
            echo "Digite a quantidade que deseja pingar"
            read qtd_pingar
            for ((i=0;i<$qtd_pingar;i++))
            do
                echo
                ping facebook.com.br -c $qtd_pingar
                break
                echo
            done
            ;;
        3)  
            echo "Digite a quantidade que deseja pingar"
            read qtd_pingar
            for ((i=0;i<$qtd_pingar;i++))
            do
                echo
                ping yahoo.com.br -c $qtd_pingar
                break
                echo
            done
            ;;
        4)
            echo "Digite o site ou o ip a ser pingado"
            read site_ping
            echo
            echo "Digite a quantidade que deseja pingar"
            read qtd_pingar
            echo
            for ((i=0;i<$qtd_pingar;i++))
            do
            echo
            ping $site_ping -c $qtd_pingar
            break
            echo
            done
            ;;
        5)
            exit 1 ;;
    esac
}   


clear
echo "Inicio do programa"
echo "Para iniciar o programa digite \"sim\": "
read primeira_opcao

while [ $primeira_opcao = "sim" ]
do
	pingar
	echo "Deseja continuar? (sim / não)"
	read segunda_opcao
	if [ $segunda_opcao != "sim" ]
	then
		break
	fi
	
done