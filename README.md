# circleci-base-image

Within most teams or organizations every executor image will require certain amount of configuration regardless of the build purpose for which it is designed.  

Things that often fall into this set of shared executor requirements include things like:  
- USER definition and filesystem customization
- tool for accessing secrets (Vault, chamber, secrethub)
- standard shell (bash, zsh)
- multi-language support (locales)

The labs circleci-base-image is an example of such a common executor base. You will see the labs specific tools and configuration, but this can readily be adapted to any organizational requirements.  

Keep in mind that the shared configuration made to the executor base is intended for configuration that must be available in every executor, regardless of the role or purpose of the executor.  

See CHANGES.md for detailed version information.  
