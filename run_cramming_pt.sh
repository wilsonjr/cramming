!python cramming/pretrain.py\
   name=cramming-bert-pt\
   arch=crammed-bert\
   train=bert-o4\
   data=giga-verbo-full\
   wandb.enabled=True\
   wandb.entity=...\
   wandb.project=...\
   wandb.tags=[full,crammed,pt]\
   budget=24\
   impl.microbatch_size=64\
   impl.batch_size=4096\
   impl.gradient_accumulation_steps=16