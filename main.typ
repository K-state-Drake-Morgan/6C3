#set document(
  title: [Group Project 6C3],
  author: "Drake Morgan"
)
#set heading(numbering: (..nums) => {
  let arr = nums.pos()

  // Only modify top-level headings
  if arr.len() == 1 {
    let first = arr.at(0)
    if first >= 8 {
      let output = first - 7
      output
    } else {
      first
    }
  }
})

#show heading: set align(center)
#show heading: it => block[
  #emph(it.body)
  #counter(heading).display()
]
#show title: set align(center)

#title()
#context[
  #align(center)[#document.author]
]

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

We are given a hexagon with verticies labeled $A - F$. Interestingly this look supprisingly a lot like Node 1. We have $6$ total nodes of a Hexagon to choose from and we need to create a triangle from it. A triangle has $3$ sides each of diffrent nodes, so this also becomes a $binom(6,3)$.

= Node

#heading(bookmarked: false, level: 2)[List]
1. RRRDDD
2. RRDDDR
3. RDDDRR
4. DDDRRR
5. DDRRRD
6. DRRRDD
7. RDRDRD
8. DRDRDR
9. DDRRDR
10. RRDDRD
11. RDRRDD
12. DRDDRR
13. RRDRDD
14. RDRDDR
15. RDDRRD
16. RDDRDR
17. DRRDRD
18. DRRDDR
19. DRDRRD
20. DDRDRR

We are given a path to a node that is 3 right and 3 down. Once again this is a 6 from the total walks and 3 from how many diffrent ways to move right.

= Node

#heading(bookmarked: false, level: 2)[List]
1. T1,1
2. T2,1
3. T2,2
4. T2,3
5. T3,1
6. T3,2
7. T3,3
8. T3,4
9. T3,5
10. T4,1
11. T4,2
12. T4,3
13. T4,4
14. T4,5
15. T4,6
16. T4,7
17. T4,8
18. T4,9
19. T4,10
20. T4,11

We are given 4 triangles made up of an increasing number of points. We are asked to sum up to total number of dots. Notably triangle numbers exist, which are defined in such a way to solve this problem. so our awnser looks like:
$
  sum_(t=1)^4 sum_(n=1)^(4-t) 1
$

= Node

We are asked to sum up $1*4+2*3+3*2+4*1$ which equals $20$

= Node

We are asked to sum all the balls making up a Pyramid. A pyramid is just 4 triangles of balls put togeather or problem 4.

#heading(bookmarked: false, level: 2)[List]
1. T1,1
2. T2,1
3. T2,2
4. T2,3
5. T3,1
6. T3,2
7. T3,3
8. T3,4
9. T3,5
10. T4,1
11. T4,2
12. T4,3
13. T4,4
14. T4,5
15. T4,6
16. T4,7
17. T4,8
18. T4,9
19. T4,10
20. T4,11


= Node

#heading(bookmarked: false, level: 2)[List]
1. (4,1,1,1)
2. (3,2,1,1)
3. (3,1,2,1)
4. (3,1,1,2)
5. (2,3,1,1)
6. (2,1,3,1)
7. (2,1,1,3)
8. (2,2,2,1)
9. (2,2,1,2)
10. (2,1,2,2)
11. (1,4,1,1)
12. (1,1,4,1)
13. (1,1,1,4)
14. (1,3,2,1)
15. (1,3,1,2)
16. (1,2,3,1)
17. (1,2,1,3)
18. (1,1,3,2)
19. (1,2,2,2)
20. (1,1,2,3)​

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

$
  1 + 1 + 1 + 1 = D_x = 3\
  2 + 2 + 2 = D_x = 2, D_y = 1\
  3 + 3 = D_x = 1, D_y = 1, D_z = 1\
  4 = D_x = 0\
$

#title("Arrows")

= Arrow
From: 1
to: 2

replace jellybeans with the vertecies of the hexagon

= Arrow
From: 2
to: 3

Label each vertex Right or Down then choose the order you arive at each vertex at

= Arrow
From: 3
to: 4
// I know that this should be 3 to 4, I just saw this
// So to go from walking to cookie eating, we just assume that each time you go right you give someone a cookie and each time you go down you skip a person. This works as you then split the 4 remaining cookies evenly between you friends.

Assign each route to a ball and eventually after enough walking you will count the balls

= Arrow
From: 4
to: 5

Replace the given triangle summations with the given arithmatic

= Arrow
From: 5
to: 6

Replace the numbers with the diagnal sequences in the triangles, you have 1 four long diagnal, 2 three long diagnals, som on an so forth

= Arrow
From: 6
to: 7

There are 4 triangles that make up this pryamid, instead of having balls make up the Pyramid, have your friends, the single represents giving one person 3 cookies, then 2 cookies, then 1 cookie, then 0.

= Arrow
From: 7
To: 1

Reconize that the addition needed to solve this problem is the same as for Node 1 and move it over.

== General Arrow

=== Tail Node

All choices from Node $X$ with positions from Node $X$

==== Code:

The list of choices

=== Head Node

Create a string of $3$ 0's and $3$ 1's

==== code:

String

=== Tail -> Head

Find the list from all the permutations of the string
