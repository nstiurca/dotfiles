case $TOOLBX_NAME.$HOSTNAME in
    .shadowfax)
        export CFLAGS="-fstack-protector-strong -Wformat -Werror=format-security"
        # export CFLAGS="$CFLAGS -Wall -Wextra"
        export CFLAGS="$CFLAGS -g -fno-limit-debug-info -fno-omit-frame-pointer"  # some nice debugging flags
        # export CFLAGS="$CFLAGS -march=native" # this seems to cause bad crashes with Eigen stuff :skull-bones:

        export CXXFLAGS="$CFLAGS -Wno-inconsistent-missing-override"

        export CMAKE_C_FLAGS_DEBUG="-Og $CFLAGS"
        export CMAKE_CXX_FLAGS_DEBUG="-Og $CXXFLAGS"
        export CMAKE_C_FLAGS_RELWITHDEBINFO="-O2 $CFLAGS"
        export CMAKE_CXX_FLAGS_RELWITHDEBINFO="-O2 $CXXFLAGS"
        export CMAKE_BUILD_TYPE="RelWithDebInfo"
        export CMAKE_CONFIGURATION_TYPES="RelWithDebInfo;Debug"
        export CMAKE_EXPORT_COMPILE_COMMANDS="TRUE"
	use_clang
        ;;
esac

use_ccache

