#set document(
  title: [Group Project 6C3]
)
#set heading(numbering: (first, ..other) =>
  if other.pos().len() == 0 { return first }
)
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

Listing out all twenty elments works but sucks, so how could we make this easier to understand. well we have $6$ diffrent elements that we are choosing in any order, which is $binom(6, 3)$. But how can we get this awnser? Well this is 6 choose 3. $6$ oviuslly comes from how many beans we have. $3$ comes from how many beans that we are choosing.

= Node

We are given a hexagon with verticies labeled $A - F$. Interestingly this look supprisingly a lot like Node 1. We have $6$ total nodes of a Hexagon to choose from and we need to create a triangle from it. A triangle has $3$ sides each of diffrent nodes, so this also becomes a $binom(6,3)$.
