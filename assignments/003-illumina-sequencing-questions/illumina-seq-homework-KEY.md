

These are the questions that appear in the video about Illumina sequencing by synthesis that
can be viewed at: [https://eriqande.github.io/erics-captioned-vids/vids/illumina-sbs/](https://eriqande.github.io/erics-captioned-vids/vids/illumina-sbs/).

Copy this template to a new file in the same directory called simply
`illumina-seq-homework.md`.  Please answer each question by typing in the space below each question, or by retaining the words corresponding to
your answers in the "dual-choice in parentheses" questions.

When you are done.  Save the file then commit it
to a branch called `illumina-seq` and push it back to your
fork of the course repo on GitHub then send me a pull request.



* Q1: True or False. This animation is showing that each of the two "fragments" is a double-stranded segment of DNA. (_from 30.0 to 33.0 seconds in the video_).

False each of the two fragments is a single strand and they
are complementary to one another.


* Q2: How does the sequence of the fragment on top compare to the sequence of the fragment on the bottom? (_from 36.5 to 39.0 seconds in the video_).


The fragment on the bottom is the reverse complement of the fragment on top.


* Q3: What is the purpose of the sequencing binding sites? Your answer should include the words "oligonucleotide," "polymerase," "3'-hydroxyl," and "synthesize." (_from 39.0 to 40.5 seconds in the video_).

This is hard to get from the video, and you don't get it till later
when they are talking about sequencing, but it appears that the
sequencing binding site is a short piece of DNA of known sequence.
When it is time to do sequencing by synthesis, an oligonucleotide
that has a free 3' hydroxyl group and which is complementary to the
sequencing binding site sticks down on that sequencing binding site
and allows the DNA polymerase to add bases to that 3' end that are
complementary to the other strand.  This synthesizes a new strand, and
after each new base is inserted, the sequencer can report which base it
was in each of the clusters.


* Q4: Given the direction of travel of the polymerase, is the Original Template anchored to the lawn by its 3' or its 5' end? (_from 78.0 to 81.0 seconds in the video_).

The polymerase synthesizes the new strand from 5' to 3', which means
that the original template must be oriented with 3' at the bottom
and 5' at the top.  So, it is anchored by its 3' end.

* Q5: How does the remaining strand relate to the Original Template? Is the remaining strand anchored by its 3' or 5' end? (_from 85.0 to 88.0 seconds in the video_).

The remaining strand is the reverse complement of the Original
Template.  It is anchored by its 5' end.


* Q6: Choose one from the parentheses: the purple part on the remaining strand is (the same as || complementary to) the purple lawn oligos.  (_from 88.2 to 92.2 seconds in the video_).

the purple part on the remaining strand is _the same as_ the purple lawn oligos (At least, it was, itself a purple lawn oligo!)

* Q7: Choose one from each set of parentheses: the blue part of the remaining strand is at the (3'|5') end and is (the same as|complementary to) the blue oligos on the lawn.  (_from 93.0 to 96.0 seconds in the video_).

the blue part of the remaining strand is at the _3'_ end and is _complementary to_ the blue oligos on the lawn. (It has to be
complementary to the blue oligos on the lawn because in just a moment
it sticks to one!)


* Q8: The polymerase grows the new daughter strand from 5' to 3'.  Does that accord with your previous answers?  Make sure your answers are consistent with this. (_from 98.0 to 101.0 seconds in the video_).

That does accord with the previous answer!  The remaining strand's
blue part is at the 3' end, which means that the daughter strand
is growing from the 5' to 3' end.


* Q9: Choose one: Every oligo, purple or blue, on the lawn is attached by its (5'|3') end. (_from 105.0 to 109.0 seconds in the video_).

Every oligo, purple or blue, on the lawn is attached by its _5'_ end.

It has to be that way: because new strands are synthesized from those
lawn oligos, always in the 5' to 3' direction.

* Q10: Choose one: Every blue or purple sequence dangling at the unattached end of a strand is at the (5'|3') end of the strand. (_from 109.0 to 113.0 seconds in the video_).


Every blue or purple sequence dangling at the unattached end of a strand is at the 3' end of the strand.


* Q11: Is read 2 sequenced off the same strand as read 1? (_from 240.0 to 250.0 seconds in the video_).

No, read 2 is sequenced off the reverse complement of the strand
that read 1 was sequenced off of.  