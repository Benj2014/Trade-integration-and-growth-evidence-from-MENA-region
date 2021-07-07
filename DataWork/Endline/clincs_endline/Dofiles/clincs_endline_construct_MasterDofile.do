   * ******************************************************************** *
   * ******************************************************************** *
   *                                                                      *
   *               CLINCS_ENDLINE CONSTRUCT MASTER DO_FILE                *
   *               This master dofile calls all dofiles related           *
   *               to construct in the clincs_endline round.              *
   *                                                                      *
   * ******************************************************************** *
   * ******************************************************************** *

   ** IDS VAR:          list_ID_var_here         // Uniquely identifies households (update for your project)
   ** NOTES:
   ** WRITTEN BY:       names_of_contributors
   ** Last date modified: 11 Jun 2021


   * ***************************************************** *
   *                                                       *
   * ***************************************************** *
   *
   *   construct dofile 1
   *
   *   The purpose of this dofiles is:
   *     (The ideas below are examples on what to include here)
   *      - what additional data sets does this file require
   *      - what variables are created
   *      - what corrections are made
   *
   * ***************************************************** *

       *do "$clincs_endline_doCon/dofile1.do" //Give your dofile a more informative name, this is just a placeholder name

   * ***************************************************** *
   *
   *   construct dofile 2
   *
   *   The purpose of this dofiles is:
   *     (The ideas below are examples on what to include here)
   *      - what additional data sets does this file require
   *      - what variables are created
   *      - what corrections are made
   *
   * ***************************************************** *

       *do "$clincs_endline_doCon/dofile2.do" //Give your dofile a more informative name, this is just a placeholder name

   * ***************************************************** *
   *
   *   construct dofile 3
   *
   *   The purpose of this dofiles is:
   *     (The ideas below are examples on what to include here)
   *      - what additional data sets does this file require
   *      - what variables are created
   *      - what corrections are made
   *
   * ***************************************************** *

       *do "$clincs_endline_doCon/dofile3.do" //Give your dofile a more informative name, this is just a placeholder name

   * ************************************
   *   Keep adding sections for all additional dofiles needed
