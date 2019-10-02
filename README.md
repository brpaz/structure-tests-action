# Container Structure Tests Action

> GitHub Action that leverages Google´s [Container Structure Tests](https://github.com/GoogleContainerTools/container-structure-test) to run unit tests on your Docker images.

[![GitHub Action](https://img.shields.io/badge/GitHub-Action-blue?style=for-the-badge)](https://github.com/features/actions)
[![License](https://img.shields.io/badge/License-MIT-yellow.svg?style=for-the-badge)](LICENSE)
[![Commitizen friendly](https://img.shields.io/badge/commitizen-friendly-brightgreen.svg?style=for-the-badge)](http://commitizen.github.io/cz-cli/)
[![semantic-release](https://img.shields.io/badge/%20%20%F0%9F%93%A6%F0%9F%9A%80-semantic--release-e10079.svg?style=for-the-badge)](https://github.com/semantic-release/semantic-release?style=for-the-badge)

[![GitHub Actions](https://github.com/brpaz/structure-tests-action/workflows/CI/badge.svg?style=for-the-badge)](https://github.com/brpaz/structure-tests-action/actions)


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

Contributions are what make the open source community such an amazing place to be learn, inspire, and create. Any contributions you make are **greatly appreciated**.

1. Fork the Project
2. Create your Feature Branch (`git checkout -b feature/AmazingFeature`)
3. Commit your Changes (`git commit -m 'Add some AmazingFeature'`)
4. Push to the Branch (`git push origin feature/AmazingFeature`)
5. Open a Pull Request

## Useful Resources

* [Building actions - GitHub Help](https://help.github.com/en/articles/building-actions)
* [actions/toolkit: The GitHub ToolKit for developing GitHub Actions.](https://github.com/actions/toolkit)

## FAQ

<details>
<summary> How can I use an envrionment variable as input</summary>
<p>

Using Environment variables directly as input arguments is not supported by GitHub Actions.
You can define an intermidiate step that outputs the desired value and use that value as the input

```yaml
- name: Get Image name
  id: image_name
  run: echo "##[set-output name=image;]$(echo $TEST_IMAGE_NAME)"
```

And then use it as input:

```sh
image: ${{steps.image_name.outputs.image}}
```

</p>
</details>  

## Author

👤 **Bruno Paz**

* authorWebsite: [https://github.com/brpaz](https://github.com/brpaz)
* Github: [@brpaz](https://github.com/brpaz)

## 📝 License

Copyright © 2019 [Bruno Paz](https://github.com/brpaz).

This project is [MIT](LICENSE) licensed.
