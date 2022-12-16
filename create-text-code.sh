#!bin/bash
read -p "File Name: " fileName
read -p "Use Number Count (y / n)? : " useCount
if [ $useCount == "y" ];then
  read -p "Start Number Count: " startNumberCount
  read -p "End Number Count: " endNumberCount
  echo "... Start Create Count ..."
  sleep 1
  while [ $startNumberCount -le $endNumberCount ];do
    echo -e "$startNumberCount - \n" >> $fileName.txt
    startNumberCount=`expr $startNumberCount + 1`
  done
  echo "... End Create Count ..."
  sleep 1
else
  echo "dont use count ..."
  sleep 1
fi

read -p "Use Explain or Dont  Explain (y / n)? : " explain
if [ $explain == "y" ];then
  read -p "Start Number Row Count: " startNumberRowCount
  read -p "End Number Row Count: " endNumberRowCount
  read -p "Name Languge: " NameLanguge
  echo "... Start Create Row Count ..."
  sleep 1
  while [ $startNumberRowCount -le $endNumberRowCount ];do
    echo -e "======================================================================$startNumberRowCount===================================================================================" >> $fileName.txt
    echo "																								" >> $fileName.txt
    echo "     الكود ب الشرح" >> $fileName.txt
    echo ">>>>>>>>>>>>>>>>>" >> $fileName.txt
    echo "     $NameLanguge   " >> $fileName.txt
    echo -e "----------------------------- \n\n\n" >> $fileName.txt
    echo "     الكود من غير شرح" >> $fileName.txt
    echo ">>>>>>>>>>>>>>>>>" >> $fileName.txt
    echo "     $NameLanguge   " >> $fileName.txt
    echo -e "----------------------------- \n\n\n" >> $fileName.txt
    startNumberRowCount=`expr $startNumberRowCount + 1`
  done
  echo "... End Create Row Count ..."
  sleep 1
  else 
  echo "dont use explain ..."
  sleep 1
fi
