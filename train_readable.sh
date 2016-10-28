rm -rf .train.dataset.cache .linear_binary_model model
#./vowpal_wabbit/vowpalwabbit/vw  --l2 0.01  --bfgs --termination 0.001 -d dataset.train  --loss_function squared  --passes 2 -f .linear_binary_model  --cache_file .train.dataset.cache -l 0.1 -b 20
./vowpal_wabbit/vowpalwabbit/vw --sgd -d dataset.train  --loss_function squared  --passes 1 -f .linear_binary_model  --cache_file .train.dataset.cache -b 20 
#-l 0.1 random(0,1)  for sgd sucks, so -l is important
vw -d dataset.train   -i .linear_binary_model -t --invert_hash model
rm -rf .train.dataset.cache .linear_binary_model
echo "=================="
echo "training  result:"
echo "=================="
cat model
