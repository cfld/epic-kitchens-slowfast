BASE='/home/ebarnett/epic-kitchens-slowfast/'
mkdir $BASE/labels
mkdir $BASE/pretrained

# download labels
wget -O $BASE/labels/EPIC_100_validation.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/raw/master/EPIC_100_validation.pkl
wget -O $BASE/labels/EPIC_100_train.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/raw/master/EPIC_100_train.pkl
wget -O $BASE/labels/EPIC_100_test_timestamps.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/blob/master/EPIC_100_test_timestamps.pkl
wget -O $BASE/labels/EPIC_100_noun_classes.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/blob/master/EPIC_100_noun_classes.pkl
wget -O $BASE/labels/EPIC_100_verb_classes.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/blob/master/EPIC_100_verb_classes.pkl

wget -O $BASE/labels/EPIC_100_uda_source_train.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/blob/master/UDA_annotations/EPIC_100_uda_source_train.csv
wget -O $BASE/labels/EPIC_100_uda_source_val.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/blob/master/UDA_annotations/EPIC_100_uda_source_val.csv
wget -O $BASE/labels/EPIC_100_uda_target_train.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/blob/master/UDA_annotations/EPIC_100_uda_target_train.csv
wget -O $BASE/labels/EPIC_100_uda_target_val.pkl https://github.com/epic-kitchens/epic-kitchens-100-annotations/blob/master/UDA_annotations/EPIC_100_uda_target_val.csv

# download model
wget -O $BASE/pretrained/slowfast_pretrained.pyth https://www.dropbox.com/s/l94hhe6u9f4e6na/SlowFast.pyth?dl=0

# (future) format labels into correct train / val / test split
# python split_data.py