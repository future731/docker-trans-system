#!/bin/bash

MY_WS=/userdir/my_ws/
CATKIN_WS=/userdir/catkin_ws/

cd ${MY_WS}/src/osqp
mkdir build && cd build && cmake .. && make -j $(nproc) && make install

cd ${MY_WS}/src/osqp-eigen
mkdir build && cd build && cmake .. && make -j $(nproc) && make install

cd ${MY_WS}
sed -i 's@set(orocos_kdl_DIR /home/riku/catkin_ws/jaxon_tutorial/devel/share/orocos_kdl/cmake)@set(OSQP_DIR '${MY_WS}'/devel/share/orocos_kdl/cmake)@' ${MY_WS}/src/isk_solver/CMakeLists.txt
sed -i 's@set(OSQP_DIR /home/riku/osqp)@set(OSQP_DIR '${MY_WS}'/src/osqp)@' ${MY_WS}/src/isk_solver/CMakeLists.txt
sed -i 's@set(OSQP-EIGEN_DIR /home/riku/osqp)@set(OSQP-EIGEN_DIR '${MY_WS}'/src/osqp-eigen)@' ${MY_WS}/src/isk_solver/CMakeLists.txt

cd ${MY_WS}
source ${CATKIN_WS}/devel/setup.bash
catkin build
