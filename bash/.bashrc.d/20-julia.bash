if [ -d "$HOME/.juliaup/bin" ]; then
# >>> juliaup initialize >>>

# !! Contents within this block are managed by juliaup !!

case ":$PATH:" in
    *:$HOME/.juliaup/bin:*)
        ;;

    *)
        export PATH=$HOME/.juliaup/bin${PATH:+:${PATH}}
        ;;
esac

# <<< juliaup initialize <<<
export JULIA_PKG_DEVDIR=~/src
export JULIA_PROJECT=@.
export JULIA_NUM_THREADS=auto
fi

