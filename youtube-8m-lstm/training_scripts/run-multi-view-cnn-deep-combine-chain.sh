CUDA_VISIBLE_DEVICES=0 python train.py \
        --train_dir="../model/multi_view_cnn_deep_combine_chain/" \
        --train_data_pattern="/Youtube-8M/data/frame/train/train*" \
        --frame_features=True \
        --feature_names="rgb,audio" \
        --feature_sizes="1024,128" \
        --model=MultiViewCnnDeepCombineChainModel \
        --label_loss=MultiTaskCrossEntropyLoss \
        --batch_size=128 \
        --multitask=True \
        --support_type="label,label,label" \
        --support_loss_percent=0.05 \
        --moe_num_mixtures=4 \
        --reweight=True \
        --sample_vocab_file="resources/train.video_id.vocab" \
        --sample_freq_file="resources/train.video_id.freq" \
        --keep_checkpoint_every_n_hours=0.5 \
        --num_readers=8 \
        --deep_chain_layers=3 \
        --deep_chain_relu_cells=64 \
        --base_learning_rate=0.001
