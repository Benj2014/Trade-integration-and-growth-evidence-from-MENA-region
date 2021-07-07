   * ******************************************************************** *
   * ******************************************************************** *
   *                                                                      *
   *               your_project_name                                      *
   *               MASTER DO_FILE                                         *
   *                                                                      *
   * ******************************************************************** *
   * ******************************************************************** *

       /*
       ** PURPOSE:      Write intro to project here

       ** OUTLINE:      PART 0: Standardize settings and install packages
                        PART 1: Set globals for dynamic file paths
                        PART 2: Set globals for constants and varlist
                               used across the project. Install all user-contributed
                               commands needed.
                        PART 3: Call the task-specific master do-files 
                               that call all dofiles needed for that 
                               task. Do not include Part 0-2 in a task-
                               specific master do-file


       ** IDS VAR:      list_ID_var_here         //Uniquely identifies households (update for your project)

       ** NOTES:

       ** WRITTEN BY:   names_of_contributors

       ** Last date modified:  9 Jun 2021
       */

*iefolder*0*StandardSettings****************************************************
*iefolder will not work properly if the line above is edited

   * ******************************************************************** *
   *
   *       PART 0:  INSTALL PACKAGES AND STANDARDIZE SETTINGS
   *
   *           - Install packages needed to run all dofiles called
   *            by this master dofile.
   *           - Use ieboilstart to harmonize settings across users
   *
   * ******************************************************************** *

*iefolder*0*End_StandardSettings************************************************
*iefolder will not work properly if the line above is edited

   *Install all packages that this project requires:
   *(Note that this never updates outdated versions of already installed commands, to update commands use adoupdate)
   local user_commands ietoolkit       //Fill this list will all user-written commands this project requires
   foreach command of local user_commands {
       cap which `command'
       if _rc == 111 {
           ssc install `command'
       }
   }

   *Standardize settings accross users
   ieboilstart, version(12.1)          //Set the version number to the oldest version used by anyone in the project team
   `r(version)'                        //This line is needed to actually set the version from the command above

*iefolder*1*FolderGlobals*******************************************************
*iefolder will not work properly if the line above is edited

   * ******************************************************************** *
   *
   *       PART 1:  PREPARING FOLDER PATH GLOBALS
   *
   *           - Set the global box to point to the project folder
   *            on each collaborator's computer.
   *           - Set other locals that point to other folders of interest.
   *
   * ******************************************************************** *

   * Users
   * -----------

   *User Number:
   * You                     1    // Replace "You" with your name
   * Next User               2    // Assign a user number to each additional collaborator of this code

   *Set this value to the user currently using this file
   global user  1

   * Root folder globals
   * ---------------------

   if $user == 1 {
       global projectfolder "C:/Users/lobay/Documents/Dropbox/ProjectPFE"
   }

   if $user == 2 {
       global projectfolder ""  // Enter the file path to the project folder for the next user here
   }

* These lines are used to test that the name is not already used (do not edit manually)
*round*farmer_baseline*clincs_baseline*farmer_endline*clincs_endline************
*untObs*households*student******************************************************
*subFld*Baseline*Endline********************************************************
*iefolder will not work properly if the lines above are edited


   * Project folder globals
   * ---------------------

   global dataWorkFolder         "$projectfolder/DataWork"

*iefolder*1*FolderGlobals*subfolder*********************************************
*iefolder will not work properly if the line above is edited


   *Baseline sub-folder globals
   global Baseline               "$dataWorkFolder/Baseline" 
   global Baseline_encrypt       "$encryptFolder/Subfolder Baseline Encrypted" 
   
   *Endline sub-folder globals
   global Endline                "$dataWorkFolder/Endline" 
   global Endline_encrypt        "$encryptFolder/Subfolder Endline Encrypted" 
   
*iefolder*1*FolderGlobals*master************************************************
*iefolder will not work properly if the line above is edited

   global mastData               "$dataWorkFolder/MasterData" 

   *households folder globals
   global households             "$mastData/households" 
   global households_encrypt     "$encryptFolder/Master households Encrypted" 
   
   *student folder globals
   global student                "$mastData/student" 
   global student_encrypt        "$encryptFolder/Master student Encrypted" 
   
*iefolder*1*FolderGlobals*encrypted*********************************************
*iefolder will not work properly if the line above is edited

   global encryptFolder          "$dataWorkFolder/EncryptedData" 


*iefolder*1*RoundGlobals*rounds*farmer_baseline*farmer_baseline*****************
*iefolder will not work properly if the line above is edited

   *farmer_baseline folder globals
   global farmer_baseline        "$dataWorkFolder/Baseline/farmer_baseline" 
   global farmer_baseline_encrypt"$encryptFolder/Subfolder Baseline Encrypted/Round farmer_baseline Encrypted" 
   global farmer_baseline_dt     "$farmer_baseline/DataSets" 
   global farmer_baseline_do     "$farmer_baseline/Dofiles" 
   global farmer_baseline_out    "$farmer_baseline/Output" 


*iefolder*1*RoundGlobals*rounds*clincs_baseline*clincs_baseline*****************
*iefolder will not work properly if the line above is edited

   *clincs_baseline folder globals
   global clincs_baseline        "$dataWorkFolder/Baseline/clincs_baseline" 
   global clincs_baseline_encrypt"$encryptFolder/Subfolder Baseline Encrypted/Round clincs_baseline Encrypted" 
   global clincs_baseline_dt     "$clincs_baseline/DataSets" 
   global clincs_baseline_do     "$clincs_baseline/Dofiles" 
   global clincs_baseline_out    "$clincs_baseline/Output" 


*iefolder*1*RoundGlobals*rounds*farmer_endline*farmer_endline*******************
*iefolder will not work properly if the line above is edited

   *farmer_endline folder globals
   global farmer_endline         "$dataWorkFolder/Endline/farmer_endline" 
   global farmer_endline_encrypt "$encryptFolder/Subfolder Endline Encrypted/Round farmer_endline Encrypted" 
   global farmer_endline_dt      "$farmer_endline/DataSets" 
   global farmer_endline_do      "$farmer_endline/Dofiles" 
   global farmer_endline_out     "$farmer_endline/Output" 


*iefolder*1*RoundGlobals*rounds*clincs_endline*clincs_endline*******************
*iefolder will not work properly if the line above is edited

   *clincs_endline folder globals
   global clincs_endline         "$dataWorkFolder/Endline/clincs_endline" 
   global clincs_endline_encrypt "$encryptFolder/Subfolder Endline Encrypted/Round clincs_endline Encrypted" 
   global clincs_endline_dt      "$clincs_endline/DataSets" 
   global clincs_endline_do      "$clincs_endline/Dofiles" 
   global clincs_endline_out     "$clincs_endline/Output" 

*iefolder*1*FolderGlobals*endRounds*********************************************
*iefolder will not work properly if the line above is edited


*iefolder*1*End_FolderGlobals***************************************************
*iefolder will not work properly if the line above is edited


*iefolder*2*StandardGlobals*****************************************************
*iefolder will not work properly if the line above is edited

   * Set all non-folder path globals that are constant accross
   * the project. Examples are conversion rates used in unit
   * standardization, different sets of control variables,
   * adofile paths etc.

   do "$dataWorkFolder/global_setup.do" 


*iefolder*2*End_StandardGlobals*************************************************
*iefolder will not work properly if the line above is edited


*iefolder*3*RunDofiles**********************************************************
*iefolder will not work properly if the line above is edited

   * ******************************************************************** *
   *
   *       PART 3: - RUN DOFILES CALLED BY THIS MASTER DOFILE
   *
   *           - When survey rounds are added, this section will
   *            link to the master dofile for that round.
   *           - The default is that these dofiles are set to not
   *            run. It is rare that all round-specfic master dofiles
   *            are called at the same time; the round specific master
   *            dofiles are almost always called individually. The
   *            exception is when reviewing or replicating a full project.
   *
   * ******************************************************************** *


*iefolder*3*RunDofiles*farmer_baseline*farmer_baseline**************************
*iefolder will not work properly if the line above is edited

***All the information in the subset PART 3.1 to i are examples : I should adapt to the precised steps, required files, created files and id var. 
/*------------------------------------------------------------------------------
    PART 3.1:  De-identify baseline data
    REQUIRES:   ${bl_encrypt}/Raw Identified Data/D4DI_baseline_raw_identified.dta
    CREATES:    ${bl_dt}/Raw Deidentified/D4DI_baseline_raw_deidentified.dta
    IDS VAR:    hhid
----------------------------------------------------------------------------- */
   if (0) { //Change the 0 to 1 to run the farmer_baseline master dofile
       do "$farmer_baseline/farmer_baseline_MasterDofile.do" 
   }


*iefolder*3*RunDofiles*clincs_baseline*clincs_baseline**************************
*iefolder will not work properly if the line above is edited

/*------------------------------------------------------------------------------
    PART 3.2:  Clean baseline data
    REQUIRES:   ${bl_dt}/Raw Deidentified/D4DI_baseline_raw_deidentified.dta
    CREATES:    ${bl_dt}/Final/D4DI_baseline_clean.dta
                ${bl_doc}/Codebook baseline.xlsx
    IDS VAR:    hhid
----------------------------------------------------------------------------- */
   if (0) { //Change the 0 to 1 to run the clincs_baseline master dofile
       do "$clincs_baseline/clincs_baseline_MasterDofile.do" 
   }


*iefolder*3*RunDofiles*farmer_endline*farmer_endline****************************
*iefolder will not work properly if the line above is edited

   if (0) { //Change the 0 to 1 to run the farmer_endline master dofile
       do "$farmer_endline/farmer_endline_MasterDofile.do" 
   }


*iefolder*3*RunDofiles*clincs_endline*clincs_endline****************************
*iefolder will not work properly if the line above is edited

   if (0) { //Change the 0 to 1 to run the clincs_endline master dofile
       do "$clincs_endline/clincs_endline_MasterDofile.do" 
   }

*iefolder*3*End_RunDofiles******************************************************
*iefolder will not work properly if the line above is edited

