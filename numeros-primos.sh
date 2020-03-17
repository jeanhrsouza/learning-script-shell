#!/bin/bash
echo 
echo

executa="sim";

while [ $executa = "sim" ]
do
	
	clear;
	echo "Identificando números primos";
	echo "Digite um número: ";
	echo
	read entrada;
	countModZero=0;
	
	# verificando se a entrada é um número inteiro
	# =~ operador de expressão regular que retorna 0 quando verdadeiro e 1 quando falso
	regex='^[0-9]+$'
	if ! [[ $entrada =~ $regex ]]
	then
		 echo "\"$entrada\" não é um número válido";
	else
	
		for((count=2; $(($count<$entrada)); count++))
		do
			
			if [ $(( $entrada % $count )) == 0 ]
			then
					countModZero=$(($countModZero+1));
					break;
			fi #end If
			
		done #end For
		
		echo
		if [ $countModZero == 0 ]
		then
				echo "o número $entrada é primo."
		else
				echo "o número $entrada não é primo."
		fi #end If
	fi #end If

	echo
	echo "Deseja continuar? (sim/não)";
	read executa;
	echo
	echo
		
done #end While
clear;
echo "Obrigado por usar este programa ;)";
echo
echo
