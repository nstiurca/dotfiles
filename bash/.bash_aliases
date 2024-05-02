# https://github.com/wagoodman/dive
alias dive="docker run -ti --rm  -v /var/run/docker.sock:/var/run/docker.sock wagoodman/dive"
# alias nvrun="__NV_PRIME_RENDER_OFFLOAD=1 __GLX_VENDOR_LIBRARY_NAME=nvidia"

alias use_clang='export CC="clang"; export CXX="clang++"'
alias use_clang_9='export CC="clang-9"; export CXX="clang++-9"'
alias use_clang_10='export CC="clang-10"; export CXX="clang++-10"'
alias use_gcc='export CC="gcc"; export CXX="g++"'
alias use_gcc_8='export CC="gcc-8"; export CXX="g++-8"'
alias use_gcc_9='export CC="gcc-8"; export CXX="g++-9"'
alias use_ccache='export PATH="/usr/lib/ccache:${PATH}"'
alias catkin_ninja='catkin_make --use-ninja'
alias catkin_ninja_isolated='catkin_make_isolated --use-ninja'
# alias catkin_ninja='catkin_make --use-ninja  -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE'
# alias catkin_ninja_isolated='catkin_make_isolated --use-ninja -DCMAKE_EXPORT_COMPILE_COMMANDS=TRUE'
# alias catkin_ninja='catkin_make -G"Ninja Multi-Config"'
# alias catkin_ninja_isolated='catkin_make_isolated -G"Ninja Multi-Config"'
alias cninja='catkin_ninja'
alias cninjai='catkin_ninja_isolated'
alias rosed='EDITOR=code rosed'

