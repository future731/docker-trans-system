# setup
execute commands below
```bash
./clone_catkin_ws.sh # to revert, call rm -rf catkin_ws
./clone_choreonoid.sh # to revert, call rm -rf choreonoid_ws
./docker_build.sh # to revert, call docker rm choreonoidsim
./choreonoid_build.sh # to revert, call ./choreonoid_clean.sh
./catkin_build.sh # to revert, call ./catkin_clean.sh
```

## for isk-solver
```bash
./my_clone_isk_solver
./my_isk_solver_build.sh
```

# execute
```bash
./jaxon_red_choreonoid.sh
```
