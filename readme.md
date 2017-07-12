# Ruby Concatenation Method Speed Test
## The Question
There are three primary ways to concatenate strings in Ruby: using <code>+</code>, using <code><<</code>, and using <code>"#{expression}"</code>.
For example, let's assume 
  a = "Hello,"
and
  b = "World!"
There are three ways to add string <code>a</code> to string <code>b</code> with a space in-between:
  a + " " + b
  a << " " << b
  "#{a} #{b}"
The question is, which method is the fastest?
## The Test
This code tests the speed - but not the space - it takes to complete each concatenation method.
Each test works by taking a sample string and concatenating it to itself repeatedly <code>x</code> number of times. The amount of time it took to complete that test is recorded. The test is then run repeatedly <code>y</code> number of times. This is done for each of the three concatenation methods and the results are printed at the end.
## The Conclusion
From my results, it seems that using <code><<</code> is the fastest of the three methods. It's consistently faster than <code>+</code> or <code>"#{expression}"</code>, has lower minimum and maximum times, and varies less between minimum and maximum times.
## The Caveats
Remember that processors and Ruby interpreters vary. Your processor might be faster or slower than mine so you might get different measurements. Your interpreter might also be different and might concatenate differently at different speeds. As always, test it for yourself and see what you get. You can also adjust the code if you disagree with my methodology.