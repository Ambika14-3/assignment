function Start_prg { 

         echo "Starting program. Try entering characters and integers."
         echo "How many files in this directory?"
}

function Integer_values_only {

     while (! [[ $number_of_files =~ [0-9] ]] )
     do

           echo "Enter again but not characters"
           read number_of_files
     done
}

Start_prg
read number_of_files
Integer_values_only

let temp=$number_of_files

while [[ $temp -ne 3 ]]
do

      if [[ $temp -lt 3 ]]
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
