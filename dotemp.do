*v1.0.0 Arman Mahmud

cap program drop dotemp

program define dotemp, rclass
    version 13
    syntax , title(string) project(string) [purpose(string) author(string) email(string) location(string)]
    
    ** Conf Optional
    *--------------*
    if "`purpose'" == "" local purpose " "
    else {
    local PURpose "`PURpose'"
    }

    if "`author'" == "" local author "Author_Name"
    else{
        local author "`author'"
    }   

    if "`email'" == "" local email "Email"
    else{
        local EMAil "`EMAil'"
    }

    if "`location'" == "" local location `=c(pwd)'
    else{
        local location "`location'"
    }

    **File save to given location
    *----------------------------*    
    copy "https://github.com/armanmahmud1/do-template/blob/main/template/temp.do" "`title'.do", replace
    
    *File write*
    *------------*
    file open myfile using "`location'/`title'.do", write replace
    file write myfile "/* ///
     ╔═══════════════════════════════════════════════════════════════════════════════╗ ///
     ║-------------------------------------------------------------------------------║ _n ///
     ║  TITLE:           `title'                                                     ║ _n ///
     ║  PROJECT:         `project'                                                   ║ _n ///
     ║  PURPOSE:         `purpose'                                                   ║ _n ///
     ║-------------------------------------------------------------------------------║ _n ///                
     ║  AUTHOR:          `author'                                                    ║ _n ///
     ║  CONTACT:         `email'                                                     ║ _n ///
     ║-------------------------------------------------------------------------------║ _n ///       
     ║  CREATED:         `=c(current_date)'                                          ║ _n ///
     ║  MODIFIED:        `=c(current_date)'                                          ║ _n ///
     ╚═══════════════════════════════════════════════════════════════════════════════╝ _n ///
                                                                                                                                                                                                            */" _n ///
     "_n" ///                                                                                                                                    	" _n
     "_n"                                                                                                                                                                                                                                                                                                                                                                                       	" _n           
    

end

set trace on
dotemp, title("My_Title") project("My_Project") purpose("My_Purpose") ///
    author("My_Author") email("My_Email")