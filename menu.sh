#!/bin/sh

#sqlplus64 "***/***@(DESCRIPTION=(ADDRESS=(PROTOCOL=TCP)(Host=oracle.scs.ryerson.ca)(Port=1521))(CONNECT_DATA=(SID=orcl)))"
MainMenu()
{

    while [ "$CHOICE" != "START" ]
    do
        clear
        echo "================================================================="
        echo "| Oracle All Inclusive Tool |"
        echo "| Main Menu - Select Desired Operation(s): |"
        echo "| <CTRL-Z Anytime to Enter Interactive CMD Prompt> |"
        echo "-----------------------------------------------------------------"
        echo " $IS_SELECTEDM M) View Manual"
        echo " "
        echo " $IS_SELECTED1 1) Drop Tables"
        echo " $IS_SELECTED2 2) Create Tables"
        echo " $IS_SELECTED3 3) Populate Tables"
        echo " $IS_SELECTED4 4) Query Tables"
        echo " $IS_SELECTED5 5) Drop views"
        echo " "
        echo " $IS_SELECTEDE E) End/Exit"
        echo "Choose: "
 
        read CHOICE
 
        # user doesnt want to do anything
        if [ "$CHOICE" == "0" ]
        then
            echo "Nothing Here"
            read -p "Press any key to continue..."
        
        # drop the tables
        elif [ "$CHOICE" == "1" ]
        then
            bash drop_tables.sh
            read -p "Press any key to continue..."

        # create the tables
        elif [ "$CHOICE" == "2" ]
        then
            bash create_tables.sh
            read -p "Press any key to continue..."
        
        # populate the tables
        elif [ "$CHOICE" == "3" ]
        then
            bash populate_tables.sh
            read -p "Press any key to continue..."
        
        # user wants to make a query of 3 different difficulty levels
        elif [ "$CHOICE" == "4" ]
        then
            echo " 1) Basic Queries"
            echo " 2) Intermediate Queries"
            echo " 3) Advanced Queries"
            echo " Choose Query Type: "
            
            read CHOICE2
            
            # gives the option of 5 different basic queries
            if [ "$CHOICE2" == "1" ]
            then
              echo " Select which Basic Query (1-5)"
              echo " Choose Query Type: "
                         
              read CHOICE3
              
              if [ "$CHOICE3" == "1" ]
              then
                bash basic_query1.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE3" == "2" ]
              then           
                bash basic_query2.sh
                read -p "Press any key to continue..."  
                            
              elif [ "$CHOICE3" == "3" ]
              then
                bash basic_query3.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE3" == "4" ]
              then
                bash basic_query4.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE3" == "5" ]
              then
                bash basic_query5.sh
                read -p "Press any key to continue..."
                
              fi  
            
            # gives the option of 2 different join queries and 3 different view queries    
            elif [ "$CHOICE2" == "2" ]
            then
              echo " 1-2) Select which of 2 join queries"
              echo " 3-5) Select which of 3 view queries"
              echo " Choose Query Type: "
                          
              read CHOICE4
            
              if [ "$CHOICE4" == "1" ]
              then
                bash join_query1.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE4" == "2" ]
              then           
                bash join_query2.sh
                read -p "Press any key to continue..."
                            
              elif [ "$CHOICE4" == "3" ]
              then
                bash view_query1.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE4" == "4" ]
              then
                bash view_query2.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE4" == "5" ]
              then
                bash view_query3.sh
                read -p "Press any key to continue..."
                
              fi  
            
            # gives the option of EXISTS, UNION, or MINUS queries or 2 aggregation queries  
            elif [ "$CHOICE2" == "3" ]
            then
              echo " 1) EXISTS query"
              echo " 2) UNION query"
              echo " 3) MINUS query"
              echo " 4-5) Select which of 2 aggregation queries"
              echo " Choose Query Type: "
                         
              read CHOICE5
            
              if [ "$CHOICE5" == "1" ]
              then
                bash exists_query.sh
                read -p "Press any key to continue..."
              
              elif [ "$CHOICE5" == "2" ]
              then           
                bash union_query.sh
                read -p "Press any key to continue..."
                           
              elif [ "$CHOICE5" == "3" ]
              then
                bash minus_query.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE5" == "4" ]
              then
                bash aggr_query1.sh
                read -p "Press any key to continue..."
                
              elif [ "$CHOICE5" == "5" ]
              then
                bash aggr_query2.sh
                read -p "Press any key to continue..."
                
              fi   
            fi           
        elif [ "$CHOICE" == "5" ]
        then
          bash drop_views.sh
          read -p "Press any key to continue..."
                          
        elif [ "$CHOICE" == "E" ]
        then
            exit
        fi
    done

}

#--COMMENTS BLOCK--
# Main Program
#--COMMENTS BLOCK--

ProgramStart()
{
    StartMessage
    while [ 1 ]
    do
        MainMenu

    done
}

ProgramStart
