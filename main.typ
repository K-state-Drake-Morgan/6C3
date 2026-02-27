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

= Node

We are given a path to a node that is 3 right and 3 down. Once again this is a 6 from the total walks and 3 from how many diffrent ways to move right.

= Node

We are given 4 triangles made up of an increasing number of points. We are asked to sum up to total number of dots. Notably triangle numbers exist, which are defined in such a way to solve this problem. so our awnser looks like:
$
  sum_(t=1)^4 sum_(n=1)^(4-t) 1
$

= Node

We are asked to sum up $1*4+2*3+3*2+4*1$ which equals $20$

= Node

We are asked to sum all the balls making up a Pyramid. A pyramid is just 4 triangles of balls put togeather or problem 4.

= Node

How many ways can 7 cookies be split between 4 people where each person gets atleast 1 cookie. This looks like:

$
  P_1 + P_2 + P_3 + P_4 = 7
$

We can have a $D$ which will stand between each person and their minimum number of cookies.

$
  (D_1 + 1) + (D_2 + 1) + (D_3 + 1) + (D_4 + 1) = 7\
  D_1 + D_2 + D_3 + D_4 = 3
$

We have 3 cookies left and 4 poeple who can get them:

Lets make a list of possibilities:

- $D_1 = 3$
- $D_1 = 2, D_2 = 1$
- $D_1 = 1, D_2 = 1, D_3 = 1$
