# Container Structure Tests Action

> GitHub Action that leverages Google´s [Container Structure Tests](https://github.com/GoogleContainerTools/container-structure-test) to run unit tests on your Docker images.

[![GitHub Action](https://img.shields.io/badge/GitHub-Action-blue?style=for-the-badge)](https://github.com/features/actions)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg?style=for-the-badge)](http://commitizen.github.io/cz-cli/)
[![CI Status](https://github.com/brpaz/structure-tests-action/workflows/CI/badge.svg?style=for-the-badge)](https://github.com/brpaz/structure-tests-action/actions)


## Usage

```yml
steps:
    uses: brpaz/structure-tests-action@v1
    with:
        image: myimage:latest
        configFile: structure-tests.yaml
```

## Inputs

**`image`**

**Required** The image name to test

**`configFile`**

**Required** The path to the structure tests configuration file. Defaults to `structure-tests.yaml`


## 🤝 Contributing

Check [CONTRIBUTING.md](CONTRIBUTING.md) for details.

## 🫶 Support

If you find this project helpful and would like to support its development, there are a few ways you can contribute:

[![Sponsor me on GitHub](https://img.shields.io/badge/Sponsor-%E2%9D%A4-%23db61a2.svg?&logo=github&logoColor=red&&style=for-the-badge&labelColor=white)](https://github.com/sponsors/brpaz)

<a href="https://www.buymeacoffee.com/Z1Bu6asGV" target="_blank"><img src="https://www.buymeacoffee.com/assets/img/custom_images/orange_img.png" alt="Buy Me A Coffee" style="height: auto !important;width: auto !important;" ></a>

## Author

👤 **Bruno Paz**

* Website: [https://github.com/brpaz](https://github.com/brpaz)
* Github: [@brpaz](https://github.com/brpaz)

## 📝 License

Copyright © 2019 [Bruno Paz](https://github.com/brpaz).

This project is [MIT](LICENSE) licensed.
