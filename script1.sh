#!/bin/bash

echo "You can list numbers and text like this:"
for n in 1 2 3 four
do
  echo "Number $n"
done

echo "Or specify a range of numbers:"
for n in {1..5}
do
  echo "Number $n"
done

echo "Or use the output of another command:"
for f in $(ls)
do
  echo $f
done

