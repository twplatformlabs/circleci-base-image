<div align="center">
	<p>
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/twplatformlabs/static/master/psk_banner.png" width=800 />
	</p>
  <h1>twdps/circleci-base-image</h1>
  <h3>PSK CircleCI Convenience Images</h3>
  <a href="https://app.circleci.com/pipelines/github/twplatformlabs/circleci-base-image"><img src="https://circleci.com/gh/twplatformlabs/circleci-base-image.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/twplatformlabs/circleci-base-image"></a>
</div>
<br />

Within most teams or organizations, every executor image will require a certain amount of common configuration regardless of the purpose for which it is built.  

Packages that typically fall into this set of shared executor requirements include things like:  
- nonroot USER definition
- tool for accessing secrets (such as Vault, chamber, 1password)  
- standard shell (bash, zsh)  
- multi-language support (locales)  
- common dependencies for installing packages (curl, wget, unzip, common os build dependencies)

_Review the build and CVE scan logs in the release artifacts for specific packages versions and known vulnerabilities (if any)._

**signature**. Images are signed using `cosign`. You can verify an image using the twdps public key found [here](https://raw.githubusercontent.com/twplatformlabs/static/master/cosign.pub).  
```bash
cosign verify --key cosign.pub twdps/circleci-base-image:alpine-2023.04
```  

**software bill of materials**. For each published image, an SBOM is generated using [syft](https://github.com/anchore/syft) and uploaded to the container registry tagged using the manifest id and .spdx extension. You can pull the sbom using the oras tool as follows:  

fetch image manifest:  
```
docker image inspect --format='{{index .RepoDigests 0}}' twdps/circleci-base-image:alpine-2023.04

twdps/circleci-base-image@sha256:9d8e8eef60900fcf207e3b258b4ce13b4cdb1765f0f7ca3022fd685cd53b8a14
```

download sbom:  
```
oras pull docker.io/twdps/circleci-base-image:sha256-9d8e8eef60900fcf207e3b258b4ce13b4cdb1765f0f7ca3022fd685cd53b8a14.spdx
```
### Tagging Scheme

This image has the following tagging scheme:

```
twdps/circleci-base-image:-<YYYY.MM>
twdps/circleci-base-image:-stable
twdps/circleci-base-image:-edge
```

`<YYYY.MM>` - Release version of the image, referred to by the 4 digit year, dot, and a 2 digit month. For example `2020.05` would be the monthly tag from May 2020. This image is generated monthly, based on the then current release of the base image and related os packages and provides a predictable fixed point for use in an executor Dockerfile. The purpose-specific packages can be pinned depending on theh type of package and organizational practices. Occasionally there will be interim patches released and you may see `2021.08.1` or addtional numbered versions.  

`stable` - generic tag that always points to the latest, monthly release image. Provides a decent level of stability while recieving all software updates and recommended security patches.  

`edge` - is the latest development of the Base image. Built from the `HEAD` of the `main` branch. Intended to be used as a testing version of the image with the most recent changes.  
