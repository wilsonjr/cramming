

# Sanity checks for pytorch issue https://github.com/pytorch/pytorch/issues/96693
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_base arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_simplecomp arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_gemm arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null +impl._inductor_vars.max_autotune_gemm=True seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_pw arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null  +impl._inductor_vars.max_autotune_pointwise=True seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_default arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null impl.mode=max-autotune seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_no_cudagraphs arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null impl.mode=max-autotune-no-cudagraphs seed=233

python pretrain.py name=DA6000amp_b8192_cb_o4_premade_base_tfoff arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl.tf32_allowed=False seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_simplecomp_tfoff arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null impl.tf32_allowed=False seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_gemm_tfoff arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null +impl._inductor_vars.max_autotune_gemm=True impl.tf32_allowed=False seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_pw_tfoff arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null  +impl._inductor_vars.max_autotune_pointwise=True impl.tf32_allowed=False seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_default_tfoff arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null impl.mode=max-autotune impl.tf32_allowed=False seed=233
python pretrain.py name=DA6000amp_b8192_cb_o4_premade_max_autotune_no_cudagraphs_tfoff arch=crammed-bert train=bert-o4  data=pile-readymade data.hf_location=JonasGeiping/the_pile_WordPiecex32768_53b28db05413b6497e702f178268e1e2 base_dir=/cmlscratch/jonas0/cramming  impl.microbatch_size=512 impl._inductor_vars=null impl.mode=max-autotune-no-cudagraphs impl.tf32_allowed=False seed=233

