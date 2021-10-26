Alias: $loinc = http://loinc.org
Alias: $SCT = http://snomed.info/sct

ValueSet: Yesnodontknow
Id: Yesnodontknow
Description: "Yes/no/don't know"
* ^publisher = "HL7 Deutschland"
* ^contact.telecom.system = #url
* ^contact.telecom.value = "https://hl7.de"
* ^status = #active
* ^language = #de
* $loinc#LA33-6 "Ja"
* $loinc#LA32-8 "Nein"
* $loinc#LA12688-0 "Ich weiß es nicht"

CodeSystem: OccupationClassCS
Id: occupation-class
* #medical "Im medizinischen Bereich tätig (Pflege, Arztpraxis, Krankenhaus o.ä.)"
* #community "In einer Gemeinschaftseinrichtung tätig (Schule, Kita, Universität, Heim o.ä.)"

ValueSet: OccupationClassVS
Id: occupation-class-vs
* include codes from system OccupationClassCS
* include $loinc#LA46-8 "Sonstiges"

Instance: YesNoToSCT
InstanceOf: ConceptMap
* status = #active
* group[+]
  * source = $loinc
  * target = $SCT
  * element[+]
    * code = #LA33-6
    * display = "Ja"
    * target[+]
      * code = #373066001
      * display = "Yes"
      * equivalence = #equal
  * element[+]
    * code = #LA32-8
    * display = "Nein"
    * target[+]
      * code = #373067005
      * display = "No"
      * equivalence = #equal
  * element[+]
    * code = #LA12688-0
    * display = "Ich weiß es nicht"
    * target[+]
      * code = #261665006
      * display = "Unknown"
      * equivalence = #equal      

