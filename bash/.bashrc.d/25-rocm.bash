if [ -f /opt/rocm/bin/rocminfo ]; then
    export ROCM_PATH=/opt/rocm
    export PATH="${ROCM_PATH}/bin:$PATH"
    export LD_LIBRARY_PATH="$LD_LIBRARY_PATH:${ROCM_PATH}/lib"
    # rocm has shoddy official support for gfx1103 (780m), and this helps, maybe
    export HSA_OVERRIDE_GFX_VERSION=11.0.0
    export HSA_ENABLE_SDMA=0
fi
export THEROCK_AMDGPU_FAMILIES=gfx110X-igpu

