# # TF1.2
# # g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# # TF1.4
# # g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0
# g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /Users/z004k4je/AppData/Local/Programs/Python/Python310/lib/site-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /Users/z004k4je/AppData/Local/Programs/Python/Python310/lib/site-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/Users/z004k4je/AppData/Local/Programs/Python/Python310/lib/site-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0



# g++ -std=c++11 tf_sampling.cpp -o tf_interpolate_so.so -shared -fPIC -I /Users/z004k4je/AppData/Local/Programs/Python/Python310/lib/site-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /Users/z004k4je/AppData/Local/Programs/Python/Python310/lib/site-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/Users/z004k4je/AppData/Local/Programs/Python/Python310/lib/site-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0
#TF_INC=/home/vcortex/anaconda3/envs/tensorflow36/lib/python3.6/site-packages/tensorflow_core/include
#TF_LIB=/home/vcortex/anaconda3/envs/tensorflow36/lib/python3.6/site-packages/tensorflow_core
#TF_LIB=/home/vcortex/anaconda3/envs/tensorflow36/lib/python3.6/site-packages/tensorflow_core/

TF_INC=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_include())')
TF_LIB=$(python -c 'import tensorflow as tf; print(tf.sysconfig.get_lib())')

# TF1.2
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -lcudart -L /usr/local/cuda-8.0/lib64/ -O2 -D_GLIBCXX_USE_CXX11_ABI=0

# TF1.4
#g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I /usr/local/lib/python2.7/dist-packages/tensorflow/include -I /usr/local/cuda-8.0/include -I /usr/local/lib/python2.7/dist-packages/tensorflow/include/external/nsync/public -lcudart -L /usr/local/cuda-8.0/lib64/ -L/usr/local/lib/python2.7/dist-packages/tensorflow -ltensorflow_framework -O2 -D_GLIBCXX_USE_CXX11_ABI=0

g++ -std=c++11 tf_interpolate.cpp -o tf_interpolate_so.so -shared -fPIC -I $TF_INC -I /usr/local/cuda/include -I $TF_INC/external/nsync/public -lcudart -L /usr/local/cuda/lib64/ -L$TF_LIB -ltensorflow_framework #-O2 -D_GLIBCXX_USE_CXX11_ABI=1