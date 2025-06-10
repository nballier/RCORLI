library(tidyverse)
library(stringi)
library(udpipe)

# Example script building a custom UDPipe model
# Replace with any other models from the UniversalDependencies GitHub
# or your own tagged data.

# See here for more information:
# https://cran.r-project.org/web/packages/udpipe/vignettes/udpipe-train.html

base_url <- "https://raw.githubusercontent.com/UniversalDependencies/"
train_url <- file.path(
  base_url,
  "UD_French-ParisStories/refs/heads/master/fr_parisstories-ud-train.conllu"
)
test_url <- file.path(
  base_url,
  "UD_French-ParisStories/refs/heads/master/fr_parisstories-ud-test.conllu"
)
dev_url <- file.path(
  base_url,
  "UD_French-ParisStories/refs/heads/master/fr_parisstories-ud-dev.conllu"
)

download.file(train_url, "../data/fr_parisstories-ud-train.conllu")
download.file(test_url, "../data/fr_parisstories-ud-test.conllu")
download.file(dev_url, "../data/fr_parisstories-ud-dev.conllu")


# Train the model
m <- udpipe_train(
  file = "../data/example-fr-parisstories.udpipe",
  files_conllu_training = "../data/fr_parisstories-ud-train.conllu", 
  files_conllu_holdout = "../data/fr_parisstories-ud-dev.conllu", 
  annotation_tokenizer = list(
    dimension = 16, 
    epochs = 20, 
    batch_size = 100, 
    dropout = 0.7
  ),
  annotation_tagger = list(
    iterations = 20, 
    models = 1, 
    provide_xpostag = 1, 
    provide_lemma = 0, 
    provide_feats = 0
  ), 
  annotation_parser = list(
    iterations = 30
  )
)

# Load model back into R
ud_model <- udpipe_load_model("../data/example-fr-parisstories.udpipe")

# test on a small example
txt <- "Longtemps, je me suis couché de bonne heure."
x <- udpipe_annotate(ud_model, x = txt)
as_tibble(x)

# test on the test set
goodness_of_fit <- udpipe_accuracy(
  ud_model, "../data/fr_parisstories-ud-test.conllu",
  tokenizer = "default",
  tagger = "default",
  parser = "default"
)
cat(goodness_of_fit$accuracy, sep = "\n") 

