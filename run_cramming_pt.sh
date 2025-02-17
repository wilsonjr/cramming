python pretrain.py\
   name=cramming-bert-pt\
   arch=crammed-bert\
   train=bert-o4\
   data=giga-verbo\
   wandb.enabled=True\
   dryrun=True\
   # budget=5\
   # impl.microbatch_size=64\
   # train.batch_size=4096\
   # impl.push_to_huggingface_hub=True\
   # impl.hf_directoy_name=crammedBERT-subset-GigaVerbo