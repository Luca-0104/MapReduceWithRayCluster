#!/bin/bash

sort mr_wc.output | grep . > mr_wc_sorted

if cmp mr_wc_sorted mr_correct_wc.txt
then
  echo '---' wc test: PASS
else
  echo '---' wc output is not the same as mr_correct_wc.txt
  echo '---' wc test: FAIL
fi

rm mr_wc_sorted
