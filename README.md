# dockerCape
Trying to write a decent Dockerfile for the Cuckoo fork CAPE

### Dockercape todo list
- [X] Let it start in some way
- [ ] Install timezonectl on the image (Error line 555)
- [ ] ./build.sh: line 578: python3-pyelftools: command not found
- [ ] Malformed entry 50 in list file /etc/apt/sources.list
- [ ]  /etc/default/suricata.yaml : No such file or directory
- [ ] Resolve the lack of a init system in docker, 
      neither service nor systemctl works
- [ ] Resolving mongodb error
- [ ] Write a entrypoint

This : WARNING: You have enabled webgui but mongo isn't working, see mongodb manual for correct installation and configuration

./build.sh: line 606: -u: command not found
./build.sh: line 607: -u: command not found
./build.sh: line 608: -u: command not found

ERROR: Cache read/write disabled: interface file missing. (Kernel needs AppArmor 2.4 compatibility patch.)
Warning: unable to find a suitable fs in /proc/mounts, is it mounted?
Use --subdomainfs to override.

Error in `/usr/share/doc-base/re2', line 12: all `Format' sections are invalid.
Note: `install-docs --verbose --check file_name' may give more details about the above error.
