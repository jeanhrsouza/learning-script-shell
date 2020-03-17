#!/bin/bash
palindromo(){
  palavra=""
  echo "Digite a palavra a ser testada: "
  read palavra


  contador=1
  conta_palavra=$(echo  $palavra | wc -m)
  conta_letas=$(echo "$conta_palavra-$contador" | bc)

  #contando letras
  for(( i=1; i <= $conta_letas; i++ ))
    do
    valor01[$i]=$(echo "$palavra" | cut -b $i)
  done

  h=$(echo "$conta_letas+$contador" | bc)
  for(( k=1; k<=$conta_letas; k++ ))
    do
    j=$(echo "$h-$k" | bc)
    valor02[$j]=$(echo ${valor01[$k]})
  done
  #comparação frente e tras
  if [ "$(echo ${valor02[@]})" == "$(echo ${valor01[@]})" ]
  then {
    echo "--------------------------"
    echo "A palvra é um palindromo"
    echo "--------------------------"
  }
  else {
    echo "------------------------------"	
    echo "A palavra não é um palindromo"
    echo "------------------------------"
  }
  fi
}


clear
echo "Início do programa"
echo "Para iniciar o programa digite \"sim\": "
read primeira_opcao


while [ $primeira_opcao = "sim" ]
do 
    clear
    palindromo
    echo "Deseja jogar novamente? (sim / nao)"
    read segunda_opcao
    if [ $segunda_opcao != "sim" ]
    then
        break
    fi
done