function Start_prg { 

         echo "Starting program. Try entering characters and integers."
         echo "How many files in this directory?"
}

function Integer_values_only {

     while ( ! [[ $number_of_files =~ [0-9] ]] )
     do

           echo "your input was invalid"
           read number_of_files
     done
}

r=$( ls -l |wc -l)

let r=$r-1

Start_prg
read number_of_files
Integer_values_only

let temp=$number_of_files

while [[ $temp -ne $r ]]
do

      if [[ $temp -lt $r ]]
         then
              echo "You entered less number of files. Enter a high value."

      else
              echo "You entered more number of files. Enter a low value."

      fi

      read number_of_files
      Integer_values_only

      let temp=$number_of_files
done

if [[ $number_of_files -eq 3 ]]
then
    echo "Congrats, it is correct!"
fi
