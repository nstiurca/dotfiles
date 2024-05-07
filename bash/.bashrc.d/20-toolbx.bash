if [ -f /var/run/.containerenv ]; then
    . /var/run/.containerenv
    export TOOLBX_NAME=$name
    export TOOLBOX_NAME=$name
fi

