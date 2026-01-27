////BH06
use "bhps/bf_hhresp.dta", clear
renpfix bf_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd nch02_dv nch34_dv nch511_dv nch1215_dv nch1618
save bf_hhresp1.dta,replace

use "bhps/bf_egoalt.dta", clear
renpfix bf_
keep pidp hidp relationship_bh
rename relationship_bh relationship_dv
save bf_egoalt1.dta,replace

use "bhps/bf_indresp.dta", clear
renpfix bf_
keep pidp hidp sex age rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv mastat lfsato lfsat7 scghq1_dv hlstat hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
rename (lfsato lfsat7)(sclfsato sclfsat7)
g wave=1

merge m:1 hidp using bf_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using bf_egoalt1
drop _merge

foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave1.dta,replace
erase bf_hhresp1.dta
erase bf_egoalt1.dta

////BH08
use "bhps/bh_hhresp.dta", clear
renpfix bh_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd nch02_dv nch34_dv nch511_dv nch1215_dv nch1618 
save bh_hhresp1.dta,replace

use "bhps/bh_egoalt.dta", clear
renpfix bh_
keep pidp hidp relationship_bh
rename relationship_bh relationship_dv
save bh_egoalt1.dta,replace

use "bhps/bh_indresp.dta", clear
renpfix bh_
keep pidp hidp sex age rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv mastat lfsato lfsat7 scghq1_dv hlstat hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
rename (lfsato lfsat7)(sclfsato sclfsat7)
g wave=2

merge m:1 hidp using bh_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using bh_egoalt1
drop _merge

foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave2.dta,replace
erase bh_hhresp1.dta
erase bh_egoalt1.dta

////BH10
use "bhps/bj_hhresp.dta", clear
renpfix bj_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd nch02_dv nch34_dv nch511_dv nch1215_dv nch1618 
save bj_hhresp1.dta,replace

use "bhps/bj_egoalt.dta", clear
renpfix bj_
keep pidp hidp relationship_bh
rename relationship_bh relationship_dv
save bj_egoalt1.dta,replace

use "bhps/bj_indresp.dta", clear
renpfix bj_
keep pidp hidp sex age rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv mastat lfsato lfsat7 scghq1_dv hlstat hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
rename (lfsato lfsat7)(sclfsato sclfsat7)
g wave=3

merge m:1 hidp using bj_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using bj_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave3.dta,replace
erase bj_hhresp1.dta
erase bj_egoalt1.dta

////BH12
use "bhps/bl_hhresp.dta", clear
renpfix bl_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd nch02_dv nch34_dv nch511_dv nch1215_dv nch1618 
save bl_hhresp1.dta,replace

use "bhps/bl_egoalt.dta", clear
renpfix bl_
keep pidp hidp relationship_bh
rename relationship_bh relationship_dv
save bl_egoalt1.dta,replace

use "bhps/bl_indresp.dta", clear
renpfix bl_
keep pidp hidp sex age rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv mastat lfsato lfsat7 scghq1_dv hlstat hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
rename (lfsato lfsat7)(sclfsato sclfsat7)
g wave=4

merge m:1 hidp using bl_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using bl_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave4.dta,replace
erase bl_hhresp1.dta
erase bl_egoalt1.dta

////BH14
use "bhps/bn_hhresp.dta", clear
renpfix bn_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd nch02_dv nch34_dv nch511_dv nch1215_dv nch1618 
save bn_hhresp1.dta,replace

use "bhps/bn_egoalt.dta", clear
renpfix bn_
keep pidp hidp relationship_bh
rename relationship_bh relationship_dv
save bn_egoalt1.dta,replace

use "bhps/bn_indresp.dta", clear
renpfix bn_
keep pidp hidp sex age rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv mastat lfsato lfsat7 scghq1_dv hlstat hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
rename (lfsato lfsat7)(sclfsato sclfsat7)
g wave=5

merge m:1 hidp using bn_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using bn_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave5.dta,replace
erase bn_hhresp1.dta
erase bn_egoalt1.dta

////BH16
use "bhps/bp_hhresp.dta", clear
renpfix bp_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd nch02_dv nch34_dv nch511_dv nch1215_dv nch1618 
save bp_hhresp1.dta,replace

use "bhps/bp_egoalt.dta", clear
renpfix bp_
keep pidp hidp relationship_bh
rename relationship_bh relationship_dv
save bp_egoalt1.dta,replace

use "bhps/bp_indresp.dta", clear
renpfix bp_
keep pidp hidp sex age rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv mastat lfsato lfsat7 scghq1_dv hlstat hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
rename (lfsato lfsat7)(sclfsato sclfsat7)
g wave=6

merge m:1 hidp using bp_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using bp_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave6.dta,replace
erase bp_hhresp1.dta
erase bp_egoalt1.dta

////BH18
use "bhps/br_hhresp.dta", clear
renpfix br_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd nch02_dv nch34_dv nch511_dv nch1215_dv nch1618 
save br_hhresp1.dta,replace

use "bhps/br_egoalt.dta", clear
renpfix br_
keep pidp hidp relationship_bh
rename relationship_bh relationship_dv
save br_egoalt1.dta,replace

use "bhps/br_indresp.dta", clear
renpfix br_
keep pidp hidp sex age rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv mastat lfsato lfsat7 scghq1_dv hlstat hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
rename (lfsato lfsat7)(sclfsato sclfsat7)
g wave=7

merge m:1 hidp using br_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using br_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave7.dta,replace
erase br_hhresp1.dta
erase br_egoalt1.dta

////UKHLS02
use "ukhls/b_hhresp.dta", clear
renpfix b_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd
save b_hhresp1.dta,replace

use "ukhls/b_egoalt.dta", clear
renpfix b_
keep pidp hidp relationship_dv
save b_egoalt1.dta,replace

use "ukhls/b_indresp.dta", clear
renpfix b_
keep pidp hidp sex dvage rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv marstat_dv sclfsato sclfsat7 scghq1_dv sf1 hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
ren (dvage sf1)(age hlstat)
g wave=8

merge m:1 hidp using b_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using b_egoalt1
drop _merge

foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave8.dta,replace
erase b_hhresp1.dta
erase b_egoalt1.dta

////UKHLS04
use "ukhls/d_hhresp.dta", clear
renpfix d_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd
save d_hhresp1.dta,replace

use "ukhls/d_egoalt.dta", clear
renpfix d_
keep pidp hidp relationship_dv
save d_egoalt1.dta,replace

use "ukhls/d_indresp.dta", clear
renpfix d_
keep pidp hidp sex dvage rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv marstat_dv sclfsato sclfsat7 scghq1_dv sf1 hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
ren (dvage sf1)(age hlstat)
g wave=9

merge m:1 hidp using d_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using d_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave9.dta,replace
erase d_hhresp1.dta
erase d_egoalt1.dta

////UKHLS06
use "ukhls/f_hhresp.dta", clear
renpfix f_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd
save f_hhresp1.dta,replace

use "ukhls/f_egoalt.dta", clear
renpfix f_
keep pidp hidp relationship_dv
save f_egoalt1.dta,replace

use "ukhls/f_indresp.dta", clear
renpfix f_
keep pidp hidp sex dvage rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv marstat_dv sclfsato sclfsat7 scghq1_dv sf1 hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
ren (dvage sf1)(age hlstat)
g wave=10

merge m:1 hidp using f_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using f_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave10.dta,replace
erase f_hhresp1.dta
erase f_egoalt1.dta

////UKHLS08
use "ukhls/h_hhresp.dta", clear
renpfix h_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd
save h_hhresp1.dta,replace

use "ukhls/h_egoalt.dta", clear
renpfix h_
keep pidp hidp relationship_dv
save h_egoalt1.dta,replace

use "ukhls/h_indresp.dta", clear
renpfix h_
keep pidp hidp sex dvage rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv marstat_dv sclfsato sclfsat7 scghq1_dv sf1 hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
ren (dvage sf1)(age hlstat)
g wave=11

merge m:1 hidp using h_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using h_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave11.dta,replace
erase h_hhresp1.dta
erase h_egoalt1.dta

////UKHLS10
use "ukhls/j_hhresp.dta", clear
renpfix j_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd
save j_hhresp1.dta,replace

use "ukhls/j_egoalt.dta", clear
renpfix j_
keep pidp hidp relationship_dv
save j_egoalt1.dta,replace

use "ukhls/j_indresp.dta", clear
renpfix j_
keep pidp hidp sex dvage rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv marstat_dv sclfsato sclfsat7 scghq1_dv sf1 hubuys hufrys humops huiron ///
husits aidhh aidhrs wktime
ren (dvage sf1)(age hlstat)
g wave=12

merge m:1 hidp using j_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using j_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave12.dta,replace
erase j_hhresp1.dta
erase j_egoalt1.dta

////UKHLS12
use "ukhls/l_hhresp.dta", clear
renpfix l_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd
save l_hhresp1.dta,replace

use "ukhls/l_egoalt.dta", clear
renpfix l_
keep pidp hidp relationship_dv
save l_egoalt1.dta,replace

use "ukhls/l_indresp.dta", clear
renpfix l_
keep pidp hidp sex dvage rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv marstat_dv sclfsato sclfsat7 scghq1_dv sf1 hubuys hufrys humops huiron ///
aidhh aidhrs wktime hucbed hucdress hucferry huchomework hucunwell hucplay
ren (dvage sf1)(age hlstat)
g wave=13

merge m:1 hidp using l_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using l_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave13.dta,replace
erase l_hhresp1.dta
erase l_egoalt1.dta

////UKHLS14
use "ukhls/n_hhresp.dta", clear
renpfix n_
keep hidp fihhmngrs_dv agechy_dv nkids_dv hhsize hsownd
save n_hhresp1.dta,replace

use "ukhls/n_egoalt.dta", clear
renpfix n_
keep pidp hidp relationship_dv
save n_egoalt1.dta,replace

use "ukhls/n_indresp.dta", clear
renpfix n_
keep pidp hidp sex dvage rach16_dv nchild_dv howlng jbhrs jbot jbstat jbsemp jbnssec8_dv hiqual_dv ///
fimnlabgrs_dv fimngrs_dv marstat_dv sclfsato sclfsat7 scghq1_dv sf1 ///
aidhh aidhrs wktime hucbed hucdress hucferry huchomework hucunwell hucplay
ren (dvage sf1)(age hlstat)
g wave=14

merge m:1 hidp using n_hhresp1
keep if _merge==3
drop _merge
merge 1:m pidp using n_egoalt1
drop _merge


foreach var of varlist pidp-wave{
	replace `var' = . if `var' < 0
}

save wave14.dta,replace
erase n_hhresp1.dta
erase n_egoalt1.dta


///////////////////////////////////////////////////////////////////////
//1. Data merging and basic cleanup
//making them into a longitudinal datasets with all 14 waves 
use wave1,clear
append using wave2 wave3 wave4 wave5 wave6 wave7 wave8 wave9 wave10 wave11 wave12 wave13 wave14
save "spouse_raw.dta",replace
//1,306,864

use "spouse_raw.dta",clear
// Restrict the sample to couples
keep if relationship==1|relationship==2
//obs： 268,514

drop if sex==.
//32,278 deleted 
drop if hidp==.
//0 deleted 

//Thinking about your (main) job, how many hours
//excluding overtime and meal breaks, are you expected to work in a normal week?
drop if jbhrs<0
drop if jbhrs==.
//(111,464 observations deleted )
sum jbhrs

//housework hours: hours spent on housework per week
//(7,988 observations deleted)
drop if howlng<0
drop if howlng==.
//(8,370 observations deleted)
//116,402
save "spouse_basic.dta", replace

//2. Handling of individual-level variables
use "spouse_basic.dta", clear
///////////////////////////////////////////////////////////////////////
//2: paid employment(ft+pt)| 5: maternity leave | 
//14: shared parental leave : only includes in wave 13 
keep if jbstat==2|jbstat==5
//(2,967 observations deleted)

// Restrict the sample to couples aged 18-65
drop if age<18|age>65
//(1,906 observations deleted)
gen age_sq = age^2

//income fimnlabgrs_dv(personal) fihhmngrs_dv(household)
gen loginc = log(fimnlabgrs_dv)
gen loghouseinc = log(fihhmngrs_dv)

//own accommodation
recode hsownd 1/2=1 3/max=0
replace hsownd=. if hsownd<0 
lab def hsownd 0"Rented&shared" 1"Owned", replace
lab val hsownd hsownd
tab hsownd

//education level
g edu=hiqual_dv
recode edu 9=1 3/5=2 1/2=3 min/-1=.
lab def edu 1"No qualification" 2"A-level&GCSE$other" 3"degree&other higher", replace
lab val edu edu
tab edu

//work hours//no. of overtime hours in normal week
replace jbot=. if jbot<0
sum jbot
//0 to change
egen workh=rowtotal(jbhrs jbot)
replace workh = . if missing(jbhrs) & missing(jbhrs)
//(0 real changes made)
sum workh

//parenthood
g parenthood=nchild_dv
recode parenthood 0=0 1/max=1
lab def parenthood 0"non-parents" 1"parents"
lab val parenthood parenthood
tab parenthood

replace agechy_dv = . if agechy_dv < 0
gen ych_stage = .
label var ych_stage "Youngest child developmental stage (incl. no children)"
replace ych_stage = 0 if parenthood==0
* babies: 0-2 years 
replace ych_stage = 1 if parenthood==1 & inrange(agechy_dv,0,2)
* preschool: 3–4
replace ych_stage = 2 if parenthood==1 & inrange(agechy_dv,3,4)
* grade school: 5–11 (avoid overlap with teen at 12)
replace ych_stage = 3 if parenthood==1 & inrange(agechy_dv,5,11)
* teen: >=12
replace ych_stage = 4 if parenthood==1 & agechy_dv>=12

label define ych_stage 0 "No children" ///
                      1 "Babies (0-2)" ///
                      2 "Preschool (3–4)" ///
                      3 "Grade school (5–11)" ///
                      4 "Teen (12–15)", replace
label values ych_stage ych_stage
tab ych_stage

save "individual_cleaned.dta", replace

****************************couple level*************************************
//3. Construct the couple level
use "individual_cleaned.dta", clear
rename relationship_dv relationship
//ssc install unique
unique pidp wave
// Original sample  111529
//unique pidp wave

bysort pidp: egen s=mean(sex)
keep if s==1|s==2
drop s
drop if sex==.

bysort hidp: g a=_N
ta a
keep if a==2
bysort hidp sex: g b=_N
ta b
drop if b!=1
drop a b
drop if sex<0
ta sex, m

order wave, last
foreach var of varlist pidp-wave{
replace `var'=. if `var'<0
}

order wave, last
reshape wide pidp age-wave, i(hidp) j(sex)

save "couple_wide.dta", replace

//4. Data cleaning and outlier handling
use "couple_wide.dta", clear
//manage outliers in the data by capping them at a certain percentile value
//ensuring that extremely high values do not unduly influence analyses.
// keep the original variables to sensitivity test
foreach var in howlng workh fimnlabgrs_dv {
    gen original_`var'1 = `var'1
    gen original_`var'2 = `var'2
}

// outliers 99% 
foreach var in howlng1 howlng2 workh1 workh2 fimnlabgrs_dv1 fimnlabgrs_dv2 {
    centile `var', c(99)
    replace `var' = r(c_1) if `var' > r(c_1) & !missing(`var')
}

save "couple_cleaned.dta", replace

///////////////////////////couple level match/////////////////////////////
//5. Generate variables at the couple level
use "couple_cleaned.dta", clear
//couple_inc
g couple_inc=fimngrs_dv1 + fimngrs_dv2
//3 missing
g husband_incp=(fimngrs_dv1)/(fimngrs_dv1 + fimngrs_dv2)
//(3 missing values generated)
g wife_incp=(fimngrs_dv2)/(fimngrs_dv1 + fimngrs_dv2)
//(3 missing values generated)
//hourly pay for labour income
gen hourly1=fimnlabgrs_dv1/4.345/workh1
//(117 missing values generated)
gen hourly2=fimnlabgrs_dv2/4.345/workh2
//(88 missing values generated)
gen wife_hourly=hourly2/(hourly1+hourly2)
//(186 missing values generated)

gen original_hourly1=original_fimnlabgrs_dv1/4.345/original_workh1
gen original_hourly2=original_fimnlabgrs_dv2/4.345/original_workh2

//以下方法是先cap各自的hourly pay
gen withcap_hourly1 = original_hourly1
gen withcap_hourly2= original_hourly2
centile withcap_hourly1, c(99)
replace withcap_hourly1 =r(c_1) if withcap_hourly1 ~=. & withcap_hourly1 >r(c_1)
centile withcap_hourly2, c(99)
replace withcap_hourly2 =r(c_1) if withcap_hourly2 ~=. & withcap_hourly2 >r(c_1)

g mean_cappay = (withcap_hourly1+withcap_hourly2)/2
gen wife_cappay = withcap_hourly2/(withcap_hourly1+withcap_hourly2)


// income mode
gen income_pattern = .
replace income_pattern = 1 if wife_incp > 0.60  // female is the main earner
replace income_pattern = 2 if wife_incp >= 0.40 & wife_incp <= 0.60
replace income_pattern = 3 if wife_incp < 0.40  // male is the main earner
label define income_pattern 1 "Female main earner" 2 "Equal earners" 3 "Male main earner"
label values income_pattern income_pattern
tab income_pattern

//Highest qualification: 3:husband's edu > wife's edu 2:equal 1: husband's edu < wife's edu
g edu_mating=hiqual_dv1-hiqual_dv2
g edu_mating3=edu_mating
recode edu_mating3 min/-1=3 0=2 1/max=1
lab def edu_mating3 1"female partner has higher edu" 2"equal" 3"male partner has higher edu", replace
lab val edu_mating3 edu_mating3
tab edu_mating3

//occupational class 3:husband's class > wife's class 2:equal 1: husband's class < wife's class
g occu_mating=jbnssec8_dv1-jbnssec8_dv2
g occu_mating3=occu_mating
recode occu_mating3 min/-1=3 0=2 1/max=1
lab def occu_mating3 1"female partner has higher class" 2"equal" 3"male partner has higher class", replace
lab val occu_mating3 occu_mating3
tab occu_mating3

//the division of housework hours
g mean_howlong=(howlng1+howlng2)/2
sum mean_howlong
g wife_howlong=howlng2/(howlng1+howlng2)
//(4,409 missing values generated)
g husband_howlong=howlng1/(howlng1+howlng2)
//(4,409 missing values generated)
sum wife_howlong

//work hours
gen mean_workh=(workh1+workh2)/2
sum mean_workh
gen wife_workh=workh2/(workh1+workh2)
gen husband_workh=workh1/(workh1+workh2)
//(270 missing values generated)
sum wife_workh

drop if wife_workh<0 | wife_workh==.
//17 deleted
drop if wife_howlong<0 | wife_howlong==.
//3 deleted
drop if wife_cappay<0 | wife_cappay==.
//169 deleted
drop if edu_mating3<0 | edu_mating3==.
//441 deleted 
drop if occu_mating3<0 | occu_mating3==.
//791 deleted 
drop if relationship1<0 | relationship1==.

//couple id
egen couple_id=group(pidp1 pidp2)
order couple_id
bysort couple_id wave1: g a=_n
drop if a==2
drop a
xtset couple_id wave1, delta(1)
save "couple_vars.dta", replace

use "couple_vars.dta", clear
bysort couple_id: egen inconsistent_parenthood = max(abs(parenthood1 - parenthood2))
drop if inconsistent_parenthood == 1
drop inconsistent_parenthood
tab parenthood1
tab parenthood2

bysort couple_id: egen n_waves = nvals(wave1)
drop if n_waves == 1
bysort couple_id: gen tag_couple = _n == 1
tab n_waves if tag_couple == 1
summ n_waves if tag_couple == 1


sort couple_id wave1
xtset couple_id wave1
by couple_id (wave1), sort: gen prev_nchild_dv1 = L.nchild_dv1
by couple_id (wave1), sort: gen next_nchild_dv1 = F.nchild_dv1
gen lost_kid = (nchild_dv1 < prev_nchild_dv1) & prev_nchild_dv1 != .
tab lost_kid
//26,157 normal 92.96, 1,981kids number decreased 7.04
drop if lost_kid==1

//twin or more children in one birth
sort couple_id wave1
gen multiple_birth = (prev_nchild_dv1 == 0 & nchild_dv1 > 1)
tab multiple_birth
//26,119 normal 99.85%, 38 multiple birth 0.15%
drop if multiple_birth==1
//38 multiple birth deleted
tab parenthood1
tab parenthood2
//26,119

egen a_age1 = mean(age1)
gen  cage1  = age1 - a_age1
gen  cage1_sq = cage1^2

egen a_age2 = mean(age2)
gen  cage2  = age2 - a_age2
gen  cage2_sq = cage2^2

save "couple_final.dta", replace

///////////////////////////////////////////////////
//7.parenthood status
use "couple_final.dta", clear
unique couple_id

//parenthood status
sort couple_id wave1

by couple_id: gen lag_nchild = nchild_dv1[_n-1]
//generate
gen parenthood_status4 = .

//(Base Categories)
//status 0: no children
replace parenthood_status4 = 0 if nchild_dv1 == 0
//status 3: >=2 (Post, 2+)
replace parenthood_status4 = 3 if nchild_dv1 >= 2
//status 2: only 1 child (categorise all of them into status 2 first)
replace parenthood_status4 = 2 if nchild_dv1 == 1
//status 1:  only 1 child，new transition aged 0-2 (overlap status2)
replace parenthood_status4 = 1 if nchild_dv1 == 1 & ych_stage1 == 1
label define status4_lab 0 "No children" 1 "Transitioning" 2 "Post, 1 child" 3 "Post, 2+", replace
label values parenthood_status4 status4_lab
//check
tab parenthood_status4, m
save "analysis_dataset.dta", replace


/////////////8. Panel Data Model Analysis//////////////////
////////////////////////KHB models///////////////////////
use "analysis_dataset.dta", clear
xtset couple_id wave1, delta(1)

ta (parenthood_status4),gen(parenthood_status4)
ta (edu_mating3),g(edu_mating3)
ta (occu_mating3),g(occu_mating3)
ta (relationship1),g(relationship1)
ta (wave1),g(wave1)

foreach var of varlist parenthood_status41-wave114 wife_workh wife_howlong wife_cappay mean_workh mean_howlong mean_cappay age1 age2 cage1_sq cage2_sq {

	bysort couple_id: egen m_`var'=mean(`var') //generate means
	
	gen d_`var'=`var'-m_`var' //gen deviations from means
	
	label var m_`var' "Personal mean of `var'"
	
	label var d_`var' "Deviation from personal mean of `var'"
	
	order m_`var' d_`var', after(`var') //Restructures variable order
}


reg d_wife_workh d_parenthood_status42 d_parenthood_status43 d_parenthood_status44 d_edu_mating31 d_edu_mating33 d_occu_mating31 d_occu_mating33 d_relationship12 d_mean_workh ///
d_mean_howlong d_mean_cappay d_wave12 d_wave13 d_wave14 d_wave15 d_wave16 d_wave17 d_wave18 ///
d_wave19 d_wave110 d_wave111 d_wave112 d_wave113 d_wave114

save "analysis_dataset2",replace

///////////////////////////////////////////////////////////////////////////
use "analysis_dataset2.dta",clear
xtset couple_id wave1, delta(1)
unique couple_id

//main FE model 1-3
xtreg workh1 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
lincom 2.parenthood_status4 - 1.parenthood_status4
lincom 3.parenthood_status4 - 2.parenthood_status4

xtreg workh2 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
lincom 2.parenthood_status4 - 1.parenthood_status4
lincom 3.parenthood_status4 - 2.parenthood_status4


xtreg wife_workh i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.mean_workh c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
lincom 2.parenthood_status4 - 1.parenthood_status4
lincom 3.parenthood_status4 - 2.parenthood_status4

//sensitivety test 1-3
xtreg original_workh1 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
outreg2 using A1.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) replace
xtreg original_workh2 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
outreg2 using A1.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) append
gen wife_original_workh=original_workh2/(original_workh1+original_workh2)
xtreg wife_original_workh i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.mean_workh c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
outreg2 using A1.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) append

//main FE model 4-6
xtreg howlng1 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 ///
c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
lincom 2.parenthood_status4 - 1.parenthood_status4
lincom 3.parenthood_status4 - 2.parenthood_status4
outreg2 using 2.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) replace

xtreg howlng2 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 ///
c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
lincom 2.parenthood_status4 - 1.parenthood_status4
lincom 3.parenthood_status4 - 2.parenthood_status4
outreg2 using 2.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) append

xtreg wife_howlong i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 ///
c.mean_howlong c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
lincom 2.parenthood_status4 - 1.parenthood_status4
lincom 3.parenthood_status4 - 2.parenthood_status4
outreg2 using 2.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) append


///sensitivity test 4-6
xtreg original_howlng1 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
outreg2 using A2.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) replace
xtreg original_howlng2 i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
outreg2 using A2.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) append
xtreg wife_original_howlng i.parenthood_status4 ib2.edu_mating3 ib2.occu_mating3 i.relationship1 c.mean_howlong c.age1 c.age2 c.cage1_sq c.cage2_sq i.wave1, fe
outreg2 using A2.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) append

//KHB mediation
rename d_parenthood_status42 pstatus42
rename d_parenthood_status43 pstatus43
rename d_parenthood_status44 pstatus44

khb regress d_wife_cappay pstatus42 pstatus43 pstatus44|| d_wife_workh d_wife_howlong, ///
    concomitant( d_edu_mating31 d_edu_mating33 d_occu_mating31 d_occu_mating33 ///
    d_relationship12 d_mean_cappay d_age1 d_age2 d_cage1_sq d_cage2_sq d_wave12 d_wave13 ///
	d_wave14 d_wave15 d_wave16 d_wave17 d_wave18 d_wave19 d_wave110 d_wave111 d_wave112 ///
	d_wave113 d_wave114)summary disentangle vce(cluster couple_id)

//supplememtary
xtreg wife_cappay c.wife_workh c.wife_howlong ib2.edu_mating3 ib2.occu_mating3 i.relationship1 ///
c.mean_cappay c.age1 c.age2 c.cage1_sq c.cage2_sq c.mean_cappay c.wave1, fe
outreg2 using A3.doc, dec(2) alpha(0.001, 0.01, 0.05, 0.1) sym(***,**,*,+) replace 
