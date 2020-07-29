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