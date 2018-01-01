create_project () {

    if [ $# -ne 1 ]
    then
    	echo "usage: create_project: <project_name>"
    else
    	mkdir $1 $1/rtl $1/fpga $1/sim
    	touch $1/$1.sublime-project
        printf "{\n\t\"folders\":\n\t[\n\t\t{\n\t\t\t\"path\": \".\"\n\t\t}\n\t]\n}\n" >> $1/$1.sublime-project
        touch $1/rtl/$1.sv
    fi

}
