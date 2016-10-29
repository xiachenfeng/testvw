rm -rf .c .m
#vw --bfgs --l2 0.1 -d abcde.train --passes 100 --cache_file .c -f .m
vw --sgd  -d abcde.train --passes 1 --cache_file .c -f .m
#vw -d abcde.train --passes 1 --cache_file .c -f .m
vw -d abcde.train -t  -i .m --invert_hash model
rm -rf .c .m
cat model
