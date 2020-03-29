# Python for microscopists

Following videos from [Python for Microscopists by Sreeni](https://www.youtube.com/channel/UC34rW-HtPJulxr5wp2Xa04w/videos).

## Running the notebook

1. First you need to make sure to install [Docker](https://www.docker.com/)
2. Clone this repository `git clone https://github.com/matq007/python-for-microscopists.git`
3. Download the docker image: `mproksik/python-microscopy:1.0`
4. Run the container:

```bash
cd python-for-microscopists && \
docker run -d -p 10000:8888 --name python-microscopy -v (pwd):/home/jovyan/work mproksik/python-microscopy:1.0 start.sh jupyter lab --NotebookApp.token=''
```

5. Visit [http://localhost:10000](http://localhost:10000)
6. Good job!
