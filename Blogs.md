This read-me file was written before we discovered that the 'Print_page' field was a better way to filter between articles that were published in the paper version of the newspaper and the digital one (or other sources).

Blogs

On the website of the New York Times you can find several blogs about different topics. The question is: have these blogs also been published in the newspapers or are they only available online? If these blogs are only published online then we need to filter the blogs out of the scripts.

To check this we downloaded a newspaper from 31-10-2012. In this newspaper we couldn’t find blogs. The next step was searching for a blog from that date to control this in the csv file. We used the article ‘What State Polls Suggest About the National Popular Vote’ from Nate Silver. This was published on the website but had not been published in the newspaper. This article was originally from (the website or section) FiveThirtyEight. This was identically the case with an article of Clifford Krauss (http://green.blogs.nytimes.com/2012/10/).

When we used grep ‘blog’ the output gave several articles with blogs from 1898. In this period the word ‘blog’ didn’t exist yet. It may be explained that there is a page with editorials and letters in the newspaper. So it is possible that the page ‘editorials and letters’ was labeled as a blog.

There was another remarkable result from a random test. We took several names and sections from the blog list and we used grep to get results. According to the output several blogs are classified as ‘opinion’, but on the website they are classified as ‘blog’. That for example the author ‘Frank Bruni’ and the blogsection ‘atwar’. In the case of Bruni there is only the word ‘opinion’. Atwar gives a result as a blog and as an opinion.
