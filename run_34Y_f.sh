deepspeed --include localhost:0,1,2,3,4,5,6,7 --master_port 29000 train_adam.py \
                --train_path result.json  \
                --model_name_or_path /root/llama/rl_dpo/Yi-34B-200K \
                --per_device_train_batch_size 1 \
                --max_len 1560 \
                --max_src_len 1024 \
                --learning_rate 1e-4 \
                --weight_decay 0.1 \
                --num_train_epochs 3 \
                --gradient_accumulation_steps 1 \
                --warmup_ratio 0.1 \
                --mode baichuan2 \
                --train_type freeze \
                --freeze_module_name "layers.59.,layers.58.,layers.57.,layers.56." \
                --seed 1234 \
                --ds_file ds_zero3_no_offload.json  \
                --gradient_checkpointing \
                --show_loss_step 10 \
                --output_dir ./output-bc13
