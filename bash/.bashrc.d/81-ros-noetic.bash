if [ -f /opt/ros/noetic/setup.bash ]; then
    source /opt/ros/noetic/setup.bash
    export ROSCONSOLE_FORMAT='[${severity}] [${time:%T%F}] [${node}] ${file}:${line}.${function} -- ${message}'
fi

