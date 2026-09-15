*v1.0.0 Arman Mahmud

cap program drop dotemp

program define dotemp, rclass
    version 11
    syntax , title(string) project(string) [purpose(string) author(string) email(string) location(string)]
    
    ** Conf Optional
    *--------------*
    if "`purpose'" == "" local purpose " "
    else {
    local purpose "`purpose'"
    }

    if "`author'" == "" local author " "
    else{
        local author "`author'"
    }   

    if "`email'" == "" local email " "
    else{
        local email "`email'"
    }

    if "`location'" == "" local location `=c(pwd)'
    else{
        local location "`location'"
    }

    **File save to given location
    *----------------------------*    
    *copy "https://raw.githubusercontent.com/armanmahmud1/do-template/refs/heads/main/template/temp.do" "`title'.do", replace
    copy "template/temp.do" "`title'.do", replace
	
    *File write*
    *------------*
    file open myfile using "`location'/`title'.do", read write
	file seek myfile 1
    file write myfile _col(200) "/*" _n ///
	 _col(1) "╔═══════════════════════════════════════════════════════════════════════════════╗" _n ///
	 _col(1) "║-------------------------------------------------------------------------------║" _n ///
     _col(1) "║  TITLE:           `title'" _col(83)"║" _n ///
     _col(1) "║  PROJECT:         `project'" _col(83)"║" _n ///
     _col(1) "║  PURPOSE:         `purpose'" _col(83)"║" _n ///
     _col(1) "║-------------------------------------------------------------------------------║" _n ///
     _col(1) "║  AUTHOR:          `author'" _col(83)"║" _n ///
     _col(1) "║  CONTACT:         `email'"  _col(83)"║" _n ///
     _col(1) "║-------------------------------------------------------------------------------║" _n ///
     _col(1) "║  CREATED:         `=c(current_date)'"  _col(83)"║" _n ///
     _col(1) "║  MODIFIED:        `=c(current_date)'"  _col(83)"║" _n ///
	 _col(1) "╚═══════════════════════════════════════════════════════════════════════════════╝"  _n ///
	 _col(1) "" _n ///
	 _col(200) "*/" _n ///
	 _col(1) _n
	 
	file close myfile
	
end
