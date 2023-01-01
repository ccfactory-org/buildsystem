FROM debian:bullseye

# refresh package repo
RUN apt-get update -y

# install all dependencies needed commonly by buildsystems
RUN apt-get install -y \
  # downloading files \
  wget ca-certificates \
  # compiler collection \
  gcc g++ \
  # extract .bz2 archives \
  bzip2 \
  # extract .xz archives \
  xz-utils \
  # build tools \
  make gawk texinfo file m4 patch flex bison \
  # building glibc requires python \
  python python3 \
  # menuconfigs \
  libncurses5-dev \
  # kernel deps \
  rsync
