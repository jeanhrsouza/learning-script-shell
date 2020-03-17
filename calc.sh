#!/bin/bash
#mini calc

escolha(){
	echo "Escolha uma das opções abaixo" 
	echo
	echo "(1) Soma"
	echo "(2) Subtração"
	echo "(3) Divisão"
	echo "(4) Multiplicação"
	echo "(5) Exponencial"
	echo "(6) Sair"
	read entrada
	echo
	case $entrada in
		1) soma ;;
		2) subtracao ;;
		3) divisao ;;
		4) multiplicacao ;;
		5) exponencial ;;
		6) echo "Saindo" exit ;; 
		*) echo "Número inválido" ;;
	esac
}

soma()
{
	echo "Soma"
	echo
	echo "Digite um número: "
	read num1	
	echo "Digite outro número"
	read num2
	resultado=$[$num1+$num2]
	echo "Resultado: $num1+$num2 = $resultado"
}

subtracao()
{
	echo "Subtração"
	echo
	echo "Digite um número: "
	read num1
	echo "Digite outro número"
	read num2
	resultado=$[$num1-$num2]
	echo "Resultado: $num1-$num2 = $resultado"	
}

divisao()
{
	echo "Divisão"
	echo
	echo "Digite um número: "
	read num1
	echo "Digite outro número para ser o divisor: "
	read num2
	resultado=$[$num1/$num2]
	echo "Resultado: $num1/$num2 = $resultado"	
}

multiplicacao()
{
	echo "Multiplicação"
	echo
	echo "Digite um número: "
	read num1
	echo "Digite outro número para ser o divisor: "
	read num2
	resultado=$[$num1*$num2]
	echo "Resultado: $num1*$num2 = $resultado"	
}

exponencial()
{
	echo "Exponencial"
	echo
	echo "Digite um número"
	read num1
	echo "Digite um expoente"
	read num2
	resultado=$num1
	for((i=0;i<$num2;i++))
	do
		resultado=$[$num1**$num2]
	done
	echo "O resultado do exponencial é: $resultado "
}

clear
echo "Inicio do programa"
echo "Para iniciar o programa digite \"sim\": "
read primeira_opcao

while [ $primeira_opcao = "sim" ]
do
	escolha
	echo "Você deve digitar \"sim\" caso queira continuar"
	read segunda_opcao
	if [ $segunda_opcao != "sim" ]
	then
		break
	fi
	
done


