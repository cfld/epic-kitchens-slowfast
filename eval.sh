BASE_DIR='/home/ebarnett/epic-kitchens-slowfast'
export PYTHONPATH='.'
export PYTHONPATH=$BASE_DIR/slowfast/:$PYTHONPATH

python tools/run_net.py \
    --cfg configs/EPIC-KITCHENS/SLOWFAST_8x8_R50.yaml \
        NUM_GPUS 0 \
        OUTPUT_DIR $BASE_DIR/eval/ \
        EPICKITCHENS.VISUAL_DATA_DIR /mnt/nas_backup/ebarnett/epic-kitchens/rgb_frames \
        EPICKITCHENS.ANNOTATIONS_DIR $BASE_DIR/data/ \
        TRAIN.ENABLE False \
        TEST.ENABLE True \
        TEST.CHECKPOINT_FILE_PATH $BASE_DIR/pretrained/slowfast_pretrained.pyth