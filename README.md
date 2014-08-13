Create `test_dep` as follows:

    mix new test_dep
    cd test_dep
    git init; git add .; git commit -m 'Initial commit'

Then build the docker image and run it:

    docker build -t mixbug .

    docker run -t mixbug         # default ulimit
    docker run -t mixbug --fast  # ulimit set to 1024
