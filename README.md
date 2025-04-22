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


**signature**. Images are signed using `cosign`. Verify images using the twplatformlabs [public key](https://raw.githubusercontent.com/twplatformlabs/static/master/cosign.pub).  
```bash
cosign verify --key cosign.pub twdps/circleci-base-image:alpine-2025.04
```  
**software bill of materials**. For each published image, a _Software Bill of Materials_ is generated using [syft](https://github.com/anchore/syft) and added as an attestation.  

validate attestation:  
```bash
cosign verify-attestation --type https://spdx.dev/Document --key cosign.pub twdps/circleci-base-image:alpine-2025.04
```
download manifest and extract bill of materials (sbom.spdx.json):  
```
cosign download attestation twdps/circleci-base-image:alpine-2025.04 > attestation.json  
jq -r '.payload' attestation.json | base64 -d > envelope.json
jq '.predicate' envelope.json > sbom.spdx.json
```
_Note. Dockerhub Scout does not appear to support non-docker attestations_  

### Tagging Scheme

This image has the following tagging scheme:

```
twdps/circleci-base-image:-<YYYY.MM>
twdps/circleci-base-image:-stable
twdps/circleci-base-image:-edge
```

`<YYYY.MM>` - Release version of the image, referred to by the 4 digit year, dot, and a 2 digit month. For example `2025.04` would be the monthly tag from April 2025. This image is generated monthly, based on the then current release of the base image and related packages and provides a predictable fixed point for use in an executor Dockerfile. Review the build log in the pipeline artifacts for the specific image and package versions. Occasionally there will be interim patches released and you may see `2025.04.1` or addtional numbered versions.  

`stable` - generic tag that always points to the latest, monthly release image. Typically used by other recurring builds and not recommended for pipeline usage. Pin pipelines to specific month-tagged builds.  

`edge` - is the latest development of the Base image. Built from the `HEAD` of the `main` branch. Intended to be used as a testing version of the image with the most recent changes.  
