
#!/bin/bash
#Jogo de adivinhação

jogar()
{
    echo "******************"
    echo "Jogo de adivinhação"
    echo "******************"

    sorteio=$((RANDOM % 20 + 1))
    echo "O número está entre  1 a 20."
    for ((chances=5;chances>=1;chances--));
    do
        echo "Eu havia escolhido o número $sorteio"

        if [ $chances -eq 2 ]
        then
            if [ $sorteio -gt 10 ]
            then
                echo
                echo "************************************"
                echo "Dica: o número é maior que 10"
                echo "************************************"
                echo
            else
                echo
                echo "************************************"
                echo "Dica: o número não é maior que 10"
                echo "************************************"
                echo
            fi

        elif [ $chances -eq 1 ]
        then
            if [ $(( $sorteio % 2 )) -eq 0 ]
            then
                echo
                echo "************************************"
                echo "Dica: o número é par"
                echo "************************************"
                echo
            else
                echo
                echo "************************************"
                echo "Dica: o número é impar"
                echo "************************************"
                echo
            fi
        fi

        echo "Você tem $chances tentativas."
        read resposta
            if [ $sorteio -eq $resposta ]
            then
                echo
                echo "-----------------------------------"
                echo "Parabéns acertou"
                echo "-----------------------------------"
                break
            else
                echo
                echo "Você errou."
                echo
            fi
    done    

    echo "-----------------------------------"
    echo "Eu havia escolhido o número $sorteio"
    echo "-----------------------------------"

}




clear
echo "Início do programa"
echo "Para iniciar o programa digite \"sim\": "
read primeira_opcao


while [ $primeira_opcao = "sim" ]
do 
    clear
    jogar
    echo "Deseja jogar novamente? (sim / nao)"
    read segunda_opcao
    if [ $segunda_opcao != "sim" ]
    then
        break
    fi
done


