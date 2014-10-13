# Print number of news-items with New York Times as a source, and give a total count per month. Paste results into a text file.
cat nytimes_humanities_tabbed.csv | awk -F '\t' '{print $1}' | grep - | sed -e 's/....-//' | sed 's/-..T..:..:..Z//' | sort | uniq -c | awk '{print $1 "\t" $2}' > artikelen_per_maand.txt

# Print number of Front-page-articles with New York Times as a source (the dataset only contains Front-page-articles from the New York Times), and give a total count per month.  Paste results into a text file.
cat nytimes_humanities_tabbed.csv | awk -F '\t' '{if ($2 ~ "Front Page" || $8 ~ "Front Page") print $1}' | sed -e 's/....-//' | sed 's/-..T..:..:..Z//' | sort | uniq -c | awk '{print $1}' > voorpagina_artikelen_per_maand.txt

# Combine the previously created text files into one new text file.
paste artikelen_per_maand.txt voorpagina_artikelen_per_maand.txt > artikelen_berekening.txt

# Calculate percentage of front page articles by dividing number of front page articles by total number of articles in the previously created text file. Paste results into a new text file.
cat artikelen_berekening.txt | awk -F '\t' '{printf"%2.1f\n",($3/$1*100)}' | awk '{print $1,"%"}' > percentage_voorpagina_artikelen.txt

# Show an explanation of output (create legenda):
echo -e "art\tmonth\tfr_ar\tperc"

# Create output by pasting the previously created text files
paste artikelen_per_maand.txt voorpagina_artikelen_per_maand.txt percentage_voorpagina_artikelen.txt
