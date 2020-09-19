# normez-docker

Docker image for NormEZ

## Table of Contents

- [About](#about)
  - [Built with](#built-with)
- [Getting started](#getting-started)
  - [Prerequisites](#prerequisites)
- [Using](#using)
  - [Current directory](#current-directory)
  - [Help](#help)
- [Contributing](#contributing)
- [License](#license)

## About

Docker image for portable use of NormEZ, a coding-style checker for Epitech C projects.

### Built with

- [Docker](https://www.docker.com/)
- [NormEZ](https://github.com/ronanboiteau/NormEZ)

## Getting started

### Prerequisites

1. [Install Docker](https://docs.docker.com/get-docker/)

## Using

### Current directory

```shell script
docker run --rm -v "$PWD:/files" cyberryteam/normez-docker:latest
```

### Help

```shell script
docker run --rm -v "$PWD:/files" cyberryteam/normez-docker:latest -h
```

## Contributing

Bug reports, feature requests, other issues and pull requests are welcome.
See [CONTRIBUTING.md](CONTRIBUTING.md) for more information.

## License

Distributed under the [MIT](https://spdx.org/licenses/MIT.html) License.
See [LICENSE](LICENSE) for more information.
