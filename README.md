<div align="center">
	<p>
  	<img alt="ghcr Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/ghcr.png" width=200 />
		<h2>NOTE: The ThoughtWorks EMPC CircleCI convenience images are moving from Dockerhub to the Github Container Registry. Docker is discontinuing the free Teams tier for opensource projects, so we are moving to ghcr. Prior versions will ONLY remain available on dockerhub until mid-May.</h2>
		<br />
		<img alt="Thoughtworks Logo" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/thoughtworks_flamingo_wave.png?sanitize=true" width=200 />
    <br />
		<img alt="DPS Title" src="https://raw.githubusercontent.com/ThoughtWorks-DPS/static/master/EMPCPlatformStarterKitsImage.png" width=350/>
	</p>
  <h3>EMPC Convenience Images</h3>
  <h1>twdps/circleci-base-image</h1>
  <a href="https://app.circleci.com/pipelines/github/ThoughtWorks-DPS/circleci-base-image"><img src="https://circleci.com/gh/ThoughtWorks-DPS/circleci-base-image.svg?style=shield"></a> <a href="https://opensource.org/licenses/MIT"><img src="https://img.shields.io/github/license/ThoughtWorks-DPS/circleci-base-image"></a> <a href="https://keybase.io/twdps"><img src="https://img.shields.io/keybase/pgp/twdps?label=keybase&logo=keybase"></a>
</div>
<br />

Within most teams or organizations, every executor image will require a certain amount of common configuration regardless of the build purpose for which it is designed.  

Packages that typically fall into this set of shared executor requirements include things like:  
- USER definition and filesystem customization  
- tool for accessing secrets (such as Vault, chamber, 1password, teller)  
- standard shell (bash, zsh)  
- multi-language support (locales)  

The labs circleci-base-image is an example of such a common executor base. You will see the labs specific tools and configuration, but this can readily be adapted to any organizational requirements.  

Keep in mind that the shared configuration made to the executor base is intended for configuration that must be available in every executor, regardless of the role or purpose of the executor.  

See release notes for detailed version information.  
