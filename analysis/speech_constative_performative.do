/* header */
version 14.2

set more off, permanently
set scheme s2mono


/* correct error in variable names */
use "data.dta", clear


/* quality checks */
forvalues i = 1/5 {
   encode behaperfcont`i', generate(behaperfcont_num_`i')
}

gen qualityfail_behaperf = .
   replace qualityfail_behaperf = 1 if behaperfcont_num_1 == 1
   replace qualityfail_behaperf = 1 if behaperfcont_num_2 == 1
   replace qualityfail_behaperf = 1 if behaperfcont_num_3 == 1
   replace qualityfail_behaperf = 0 if behaperfcont_num_4 == 1
   replace qualityfail_behaperf = 1 if behaperfcont_num_5 == 1

forvalues i = 1/5 {
   encode behaconscont`i', generate(behaconscont_num_`i')
}

gen qualityfail_behacons = .
   replace qualityfail_behacons = 1 if behaconscont_num_1 == 1
   replace qualityfail_behacons = 1 if behaconscont_num_2 == 1
   replace qualityfail_behacons = 1 if behaconscont_num_3 == 1
   replace qualityfail_behacons = 0 if behaconscont_num_4 == 1
   replace qualityfail_behacons = 1 if behaconscont_num_5 == 1

forvalues i = 1/5 {
   encode verdperfcont`i', generate(verdperfcont_num_`i')
}

gen qualityfail_verdperf = .
   replace qualityfail_verdperf = 1 if verdperfcont_num_1 == 1
   replace qualityfail_verdperf = 1 if verdperfcont_num_2 == 1
   replace qualityfail_verdperf = 1 if verdperfcont_num_3 == 1
   replace qualityfail_verdperf = 0 if verdperfcont_num_4 == 1
   replace qualityfail_verdperf = 1 if verdperfcont_num_5 == 1

forvalues i = 1/5 {
   encode verdconscont`i', generate(verdconscont_num_`i')
}

gen qualityfail_verdcons = .
   replace qualityfail_verdcons = 1 if verdconscont_num_1 == 1
   replace qualityfail_verdcons = 1 if verdconscont_num_2 == 1
   replace qualityfail_verdcons = 1 if verdconscont_num_3 == 1
   replace qualityfail_verdcons = 0 if verdconscont_num_4 == 1
   replace qualityfail_verdcons = 1 if verdconscont_num_5 == 1

forvalues i = 1/5 {
   encode exerperfcont`i', generate(exerperfcont_num_`i')
}

gen qualityfail_exerperf = .
   replace qualityfail_exerperf = 1 if exerperfcont_num_1 == 1
   replace qualityfail_exerperf = 1 if exerperfcont_num_2 == 1
   replace qualityfail_exerperf = 1 if exerperfcont_num_3 == 1
   replace qualityfail_exerperf = 0 if exerperfcont_num_4 == 1
   replace qualityfail_exerperf = 1 if exerperfcont_num_5 == 1

forvalues i = 1/5 {
   encode exerconscont`i', generate(exerconscont_num_`i')
}

gen qualityfail_exercons = .
   replace qualityfail_exercons = 1 if exerconscont_num_1 == 1
   replace qualityfail_exercons = 1 if exerconscont_num_2 == 1
   replace qualityfail_exercons = 1 if exerconscont_num_3 == 1
   replace qualityfail_exercons = 0 if exerconscont_num_4 == 1
   replace qualityfail_exercons = 1 if exerconscont_num_5 == 1

forvalues i = 1/5 {
   encode commperfcont`i', generate(commperfcont_num_`i')
}

gen qualityfail_commperf = .
   replace qualityfail_commperf = 1 if commperfcont_num_1 == 1
   replace qualityfail_commperf = 1 if commperfcont_num_2 == 1
   replace qualityfail_commperf = 1 if commperfcont_num_3 == 1
   replace qualityfail_commperf = 0 if commperfcont_num_4 == 1
   replace qualityfail_commperf = 1 if commperfcont_num_5 == 1

forvalues i = 1/5 {
   encode commconscont`i', generate(commconscont_num_`i')
}

gen qualityfail_commcons = .
   replace qualityfail_commcons = 1 if commconscont_num_1 == 1
   replace qualityfail_commcons = 1 if commconscont_num_2 == 1
   replace qualityfail_commcons = 1 if commconscont_num_3 == 1
   replace qualityfail_commcons = 0 if commconscont_num_4 == 1
   replace qualityfail_commcons = 1 if commconscont_num_5 == 1

forvalues i = 1/5 {
   encode expoperfcont`i', generate(expoperfcont_num_`i')
}

gen qualityfail_expoperf = .
   replace qualityfail_expoperf = 1 if expoperfcont_num_1 == 1
   replace qualityfail_expoperf = 1 if expoperfcont_num_2 == 1
   replace qualityfail_expoperf = 1 if expoperfcont_num_3 == 1
   replace qualityfail_expoperf = 0 if expoperfcont_num_4 == 1
   replace qualityfail_expoperf = 1 if expoperfcont_num_5 == 1

forvalues i = 1/5 {
   encode expoconscont`i', generate(expoconscont_num_`i')
}

gen qualityfail_expocons = .
   replace qualityfail_expocons = 1 if expoconscont_num_1 == 1
   replace qualityfail_expocons = 1 if expoconscont_num_2 == 1
   replace qualityfail_expocons = 1 if expoconscont_num_3 == 1
   replace qualityfail_expocons = 0 if expoconscont_num_4 == 1
   replace qualityfail_expocons = 1 if expoconscont_num_5 == 1

gen qualityfail_global = .
   replace qualityfail_global = 1 if qualityfail_behaperf == 1
   replace qualityfail_global = 1 if qualityfail_behacons == 1
   replace qualityfail_global = 1 if qualityfail_verdperf == 1
   replace qualityfail_global = 1 if qualityfail_verdcons == 1
   replace qualityfail_global = 1 if qualityfail_exerperf == 1
   replace qualityfail_global = 1 if qualityfail_exercons == 1
   replace qualityfail_global = 1 if qualityfail_commperf == 1
   replace qualityfail_global = 1 if qualityfail_commcons == 1
   replace qualityfail_global = 1 if qualityfail_expoperf == 1
   replace qualityfail_global = 1 if qualityfail_expocons == 1

tab qualityfail_global


/* sample */
drop if qualityfail_global == 1
keep if lastpage == 67

encode age, generate(age_num)

gen age_group = .
   replace age_group = 1 if age_num >= 18 & age_num < 30
   replace age_group = 2 if age_num >= 30 & age_num < 40
   replace age_group = 3 if age_num >= 40 & age_num < 50
   replace age_group = 4 if age_num >= 50 & age_num < 60
   replace age_group = 5 if age_num >= 60 & age_num < 75
label define age_group_lb 1 "18 – 29" 2 "30 – 39" 3 "40 – 49" 4 "50 – 59" 5 "60 – 74", replace
   label values age_group age_group_lb

sum age
tab age_group

gen gender = .
   replace gender = 0 if gen1 == "Y"
   replace gender = 1 if gen2 == "Y"
   replace gender = 2 if gen3 == "Y"
label define gender_lb 0 "Female" 1 "Diverse" 2 "Male", replace
   label values gender gender_lb

tab gender


/* behabitives */
forvalues i = 1/5 {
   encode behaperf`i', generate(behaperf_num_`i')
   encode behacons`i', generate(behacons_num_`i')
}

gen treatment = .
   replace treatment = 0 if randnumber == 1
   replace treatment = 1 if randnumber == 2
label define treatment_lb 0 "Performative" 1 "Constative"
   label values treatment treatment_lb

forvalues i = 1/5 {
   preserve
      keep if randnumber == 1 | randnumber == 2
      keep treatment behaperf_num_`i' behacons_num_`i'

      gen answer = .
         replace answer = 0 if behaperf_num_`i' == 1
         replace answer = 1 if behaperf_num_`i' == 2
         replace answer = 0 if behacons_num_`i' == 1
         replace answer = 1 if behacons_num_`i' == 2
      label define answer_lb 0 "No" 1 "Yes"
         label values answer answer_lb

      histogram answer, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
         xtitle("Answers") ///
         xlabel(0 "No" 1 "Yes") ///
         yscale(range(0 100))
      graph export beha_`i'.pdf, replace

      tab answer treatment, cell chi2 V
   restore
}


/* verdictives */
forvalues i = 1/5 {
   encode verdperf`i', generate(verdperf_num_`i')
   encode verdcons`i', generate(verdcons_num_`i')
}

replace treatment = 0 if randnumber == 3
replace treatment = 1 if randnumber == 4

forvalues i = 1/5 {
   preserve
      keep if randnumber == 3 | randnumber == 4
      keep treatment verdperf_num_`i' verdcons_num_`i'

      gen answer = .
         replace answer = 0 if verdperf_num_`i' == 1
         replace answer = 1 if verdperf_num_`i' == 2
         replace answer = 0 if verdcons_num_`i' == 1
         replace answer = 1 if verdcons_num_`i' == 2
      label define answer_lb 0 "No" 1 "Yes"
         label values answer answer_lb

      histogram answer, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
         xtitle("Answers") ///
         xlabel(0 "No" 1 "Yes") ///
         yscale(range(0 100))
      graph export verd_`i'.pdf, replace

      tab answer treatment, cell chi2 V
   restore
}


/* exercitives */
forvalues i = 1/5 {
   encode exerperf`i', generate(exerperf_num_`i')
   encode exercons`i', generate(exercons_num_`i')
}

replace treatment = 0 if randnumber == 5
replace treatment = 1 if randnumber == 6

forvalues i = 1/5 {
   preserve
      keep if randnumber == 5 | randnumber == 6
      keep treatment exerperf_num_`i' exercons_num_`i'

      gen answer = .
         replace answer = 0 if exerperf_num_`i' == 1
         replace answer = 1 if exerperf_num_`i' == 2
         replace answer = 0 if exercons_num_`i' == 1
         replace answer = 1 if exercons_num_`i' == 2
      label define answer_lb 0 "No" 1 "Yes"
         label values answer answer_lb

      histogram answer, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
         xtitle("Answers") ///
         xlabel(0 "No" 1 "Yes") ///
         yscale(range(0 100))
      graph export exer_`i'.pdf, replace

      tab answer treatment, cell chi2 V
   restore
}


/* commissives */
forvalues i = 1/5 {
   encode commperf`i', generate(commperf_num_`i')
   encode commcons`i', generate(commcons_num_`i')
}

replace treatment = 0 if randnumber == 7
replace treatment = 1 if randnumber == 8

forvalues i = 1/5 {
   preserve
      keep if randnumber == 7 | randnumber == 8
      keep treatment commperf_num_`i' commcons_num_`i'

      gen answer = .
         replace answer = 0 if commperf_num_`i' == 1
         replace answer = 1 if commperf_num_`i' == 2
         replace answer = 0 if commcons_num_`i' == 1
         replace answer = 1 if commcons_num_`i' == 2

      label define answer_lb 0 "No" 1 "Yes"
         label values answer answer_lb

      histogram answer, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
         xtitle("Answers") ///
         xlabel(0 "No" 1 "Yes") ///
         yscale(range(0 100))
      graph export comm_`i'.pdf, replace

      tab answer treatment, cell chi2 V
   restore
}


/* expositives */
forvalues i = 1/5 {
   encode expoperf`i', generate(expoperf_num_`i')
   encode expocons`i', generate(expocons_num_`i')
}

replace treatment = 0 if randnumber == 9
replace treatment = 1 if randnumber == 10

forvalues i = 1/5 {
   preserve
      keep if randnumber == 9 | randnumber == 10
      keep treatment expoperf_num_`i' expocons_num_`i'

      gen answer = .
         replace answer = 0 if expoperf_num_`i' == 1
         replace answer = 1 if expoperf_num_`i' == 2
         replace answer = 0 if expocons_num_`i' == 1
         replace answer = 1 if expocons_num_`i' == 2

      label define answer_lb 0 "No" 1 "Yes"
         label values answer answer_lb

      histogram answer, percent discrete by(treatment, note("") graphregion(fcolor(white))) ///
         xtitle("Answers") ///
         xlabel(0 "No" 1 "Yes") ///
         yscale(range(0 100))
      graph export expo_`i'.pdf, replace

      tab answer treatment, cell chi2 V
   restore
}


/* question 1 performative against equality */
preserve
   keep behaperf_num_1 verdperf_num_1 exerperf_num_1 commperf_num_1 expoperf_num_1

   replace behaperf_num_1 = 0 if behaperf_num_1 == 1
   replace behaperf_num_1 = 1 if behaperf_num_1 == 2

   replace verdperf_num_1 = 0 if verdperf_num_1 == 1
   replace verdperf_num_1 = 1 if verdperf_num_1 == 2

   replace exerperf_num_1 = 0 if exerperf_num_1 == 1
   replace exerperf_num_1 = 1 if exerperf_num_1 == 2

   replace commperf_num_1 = 0 if commperf_num_1 == 1
   replace commperf_num_1 = 1 if commperf_num_1 == 2

   replace expoperf_num_1 = 0 if expoperf_num_1 == 1
   replace expoperf_num_1 = 1 if expoperf_num_1 == 2

   prtest behaperf_num_1 == .5
   prtest verdperf_num_1 == .5
   prtest exerperf_num_1 == .5
   prtest commperf_num_1 == .5
   prtest expoperf_num_1 == .5
restore
