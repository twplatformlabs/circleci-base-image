<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/twplatformlabs/static/master/EMPCPlatformStarterKitsImage.png" width=350/>
	</p>
  <h3>PSK Convenience Images</h3>
  <h1>twdps/circleci-base-image</h1>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-base-image"><img src="https://circleci.com/gh/twplatformlabs/circleci-base-image.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-base-image"></a>
</div>
<br />

Within most teams or organizations, every executor image will require a certain amount of common configuration regardless of the purpose for which it is built.  

Packages that typically fall into this set of shared executor requirements include things like:  
- nonroot USER definition
- tool for accessing secrets (such as Vault, chamber, 1password)  
- standard shell (bash, zsh)  
- multi-language support (locales)  
- common dependencies for installing packages (curl, wget, unzip, common build dependencies)

The psk circleci-base-image is an example of such a common executor base. You will see the psk specific tools and configuration, but this can readily be adapted to any organizational requirements.  

Keep in mind that the shared configuration made to the executor base is intended for configuration that must be available in every executor, regardless of the role or purpose of the executor.  

See release notes for detailed version information.  

**signature**. Images are signed using `cosign`. You can verify an image using the twdps public key found [here](https://raw.githubusercontent.com/twplatformlabs/static/master/cosign.pub).  
```bash
cosign verify --key cosign.pub twdps/circleci-base-image:alpine-2023.04
```  

**software bill of materials**. For each published image, an SBOM is generated using [syft](https://github.com/anchore/syft) and uploaded to the container registry tagged using the manifest id and .spdx extension. You can pull the sbom using the oras tool as follows:  

fetch image manifest:  
```
docker image inspect --format='{{index .RepoDigests 0}}' twdps/circleci-base-image:alpine-2023.04
```
twdps/circleci-base-image@sha256:9d8e8eef60900fcf207e3b258b4ce13b4cdb1765f0f7ca3022fd685cd53b8a14

download sbom:  
```
oras pull docker.io/twdps/circleci-base-image:sha256-9d8e8eef60900fcf207e3b258b4ce13b4cdb1765f0f7ca3022fd685cd53b8a14.spdx
```

Review `.snyk` for current vulnerability status.  
