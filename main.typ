#set document(
  title: [Group Project 6C3]
)
#set heading(numbering: "I")
#show heading: set align(center)
#show heading: it => block[
  #emph(it.body)
  #counter(heading).display(it.numbering)
]
#show title: set align(center)

#title()

= Node

Here we have 6 different badly flavored jellybeans that we can represent as $A - F$ where all possibilities can be listed as shown below.

#heading(bookmarked: false, level: 2)[List]
1. ABC
2. ABD
3. ABE
4. ABF
5. ACD
6. ACE
7. ACF
8. ADE
9. ADF
10. AEF
11. BCD
12. BCE
13. BCF
14. BDE
15. BDF
16. BEF
17. CDE
18. CDF
19. CEF
20. DEF

#heading(bookmarked: false, level: 2)[Better Mode]

Listing out all twenty elments works but sucks, so how could we make this easier to understand. well we have $6$ diffrent elements that we are choosing in any order, which is $binom(6, 3)$.
