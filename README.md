# Attempting to Dockerize Pygame (It hasn't happened yet, I'm still trying)

With this repo, I'm trying to create a Docker container that works with a pygame file.

A couple months ago I was following this [tutorial](https://realpython.com/pygame-a-primer/) on Real Python to create this pygame. Which is the one I have now.

## What currently works
If you want to try this game out on you computer, you can clone this folder & install the requirements needed via the following command in command line.
```bash
pip3 install -r requirements.txt
```

After that you should be able to run the game using:
```bash
python3 sky_dodge.py
```

TADA! Clap for me please.

## What currently doesn't work

So I'm currently trying to put this into a docker container.

I'm currently using the `python:3.6-slim` image to build my container off of.

This is what I learned so far as of today (May 16,2020):
* How to start a Dockerfile (see [here](Dockerfile)!)
* That each `RUN` command in the Dockerfile opens up a new bash terminal inside the computer.
* `ENTRYPOINT` allows you to point out starting point to start at.
  * note: If you have this to start in Python, you can exit and go into bash to check out what is in the file path of the container.
* How to exit a container that's not detached.
  * bash: `ctrl + d` twice or `exit`
  * Python: `exit()`
* If you're copying folders from your local drive into the container, you need to specify a folder or they get copied in as individual files.....

What doesn't work:
* Well the game doesn't run in the current container.
* Pygame mixer doesn't work
* Don't have any video thing attached to the python container.

What I want to try:
- [ ] Pygame specific containers on DockerHub
