# Because I have both a book format and individual lecture slides
# to put in the docs directory, I do it this way.

# render the book
quarto render .


# render the slides, then copy them into docs
echo 
echo "RENDERING SLIDES AND COPYING TO DOCS"
echo

SLIDES="snake-slides"

for i in $SLIDES; do
  quarto render slides/$i.qmd;
  cp slides/$i.html docs/;
done  