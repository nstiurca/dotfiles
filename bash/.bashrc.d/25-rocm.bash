if [ -f /opt/rocm/bin/rocminfo ]; then
    export PATH="/opt/rocm/bin:$PATH"
    # rocm has shoddy official support for gfx1103 (780m), and this helps, maybe
    export HSA_OVERRIDE_GFX_VERSION=11.0.0
fi

