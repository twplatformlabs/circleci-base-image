## 11-11-2021 base image and package updates in circleci-base-image: 3.1.4

^changes

FROM twdps/circleci-remote-docker:alpine-2021.11^  

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.7_p1-r1  |
| bash            | 5.1.4-r0     |
| libintl         | 0.21-r0      |
| musl-locales    | master       |
| secrethub-cli   | 0.43.0-r0    |

FROM twdps/circleci-remote-docker:slim-2021.11^    

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.5p2-3    |
| locales         | 2.32-4^      |
| secrethub-cli   | 0.43.0       |

## 09-01-2021 package updates in circleci-base-image: 3.1.3

^changes

FROM twdps/circleci-remote-docker:alpine-2021.09.1^  

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.7_p1-r1  |
| bash            | 5.1.4-r0     |
| libintl         | 0.21-r0      |
| musl-locales    | master       |
| secrethub-cli   | 0.43.0-r0    |

FROM twdps/circleci-remote-docker:slim-2021.09.1^    

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.5p2-3    |
| locales         | 2.32-3^      |
| secrethub-cli   | 0.43.0       |

## 09-01-2021 package updates in circleci-base-image: 3.1.2

^changes

FROM twdps/circleci-remote-docker:alpine-2021.09^  

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.7_p1-r1  |
| bash            | 5.1.4-r0     |
| libintl         | 0.21-r0      |
| musl-locales    | master       |
| secrethub-cli   | 0.43.0-r0    |

FROM twdps/circleci-remote-docker:slim-2021.09^    

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.5p2-3    |
| locales         | 2.31-17^     |
| secrethub-cli   | 0.43.0       |

## 08-27-2021 package updates in circleci-base-image: 3.1.1

^changes

FROM twdps/circleci-remote-docker:alpine-2021.08.2^  

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.7_p1-r1  |
| bash            | 5.1.4-r0     |
| libintl         | 0.21-r0      |
| musl-locales    | master       |
| secrethub-cli   | 0.43.0-r0    |

FROM twdps/circleci-remote-docker:slim-2021.08.2^    

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.5p2-3    |
| locales         | 2.31-17^     |
| secrethub-cli   | 0.43.0       |


## 08-26-2021 package updates in circleci-base-image: 3.1.0

^changes

FROM twdps/circleci-remote-docker:alpine-2021.08  

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.7_p1-r1  |
| bash            | 5.1.4-r0     |
| libintl         | 0.21-r0      |
| musl-locales    | master       |
| secrethub-cli   | 0.43.0-r0^   |

FROM twdps/circleci-remote-docker:slim-2021.08    

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.5p2-3    |
| locales         | 2.31-13^     |
| secrethub-cli   | 0.43.0       |

## 08-17-2021 convenience image organizational change in circleci-base-image:3.0.0

Contents of base image reduced to strictly those things that must be part of every  
organizations or teams executors, regardless of the intended pipeline tasks.  

^changes

Removed packages:  
curl  
openssl  
gnupg   
docker  
openrc  
nodejs  
npm   
jq   
snyk   
bats   
conftest   
chamber   

FROM twdps/circleci-remote-docker:alpine-2021.08 

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.7_p1-r1  |
| bash            | 5.1.4-r0     |
| libintl         | 0.21-r0      |
| musl-locales    | master       |
| secrethub-cli   | 0.42.1-r0    |

## 07-15-2021 package versions in di-circleci-base-image:2.1.2, 2.1.3

No package changes, just modified the way a couple things were installed.  

## 07-08-2021 package versions in di-circleci-base-image:2.1.1

^changes  

No changes to alpine-2021.07  

FROM twdps/di-circleci-remote-docker:slim-2021.07.1   

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.5p2-3    |
| bash            | 5.1.4        |
| curl            | 7.74.0       |
| locales         | 2.31-12      |
| gnupg           | 2.2.27-2     |
| openssl         | 1.1.1k-r0^   |
| docker          | 20.10.7      |
| nodejs          | 14.17.1-r0   |
| npm             | 7.17.0-r0    |
| jq              | 1.6-2.1      |
| secrethub-cli   | 0.42.1       |
| snyk            | 1.653.0      |
| bats            | 1.3.0        |
| conftest        | 0.25.0       |
| chamber         | 2.10.1       |

## 07-02-2021 package versions in di-circleci-base-image:2.1.0

^changes

No changes to alpine-2021.07

FROM twdps/di-circleci-remote-docker:slim-2021.07.1^  
bullseye update

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.5p2-3^   |
| bash            | 5.1.4^       |
| curl            | 7.74.0^      |
| locales         | 2.31-12^     |
| gnupg           | 2.2.27-2^    |
| docker          | 20.10.7      |
| nodejs          | 14.17.1-r0   |
| npm             | 7.17.0-r0    |
| jq              | 1.6-2.1^     |
| secrethub-cli   | 0.42.1       |
| snyk            | 1.653.0      |
| bats            | 1.3.0        |
| conftest        | 0.25.0       |
| chamber         | 2.10.1       |


## 07-02-2021 package versions in di-circleci-base-image:2.0.0

^changes  

FROM twdps/di-circleci-remote-docker:alpine-2021.07*  

| package         | version      |
|-----------------|--------------|
| sudo            | 1.9.7_p1-r1* |
| bash            | 5.1.4-r0     |
| curl            | 7.77.0-r1    |
| openssl         | 1.1.1k-r0    |
| gnupg           | 2.2.27-r0    |
| docker          | 20.10.7-r1*  |
| openrc          | 0.43.3-r1    |
| nodejs          | 14.17.1-r0   |
| npm             | 7.17.0-r0    |
| jq              | 1.6_rc1-r1   |
| secrethub-cli   | 0.42.1-ro    |
| snyk            | 1.653.0*     |
| bats            | 1.3.0        |
| conftest        | 0.25.0       |
| chamber         | 2.10.1       |

FROM twdps/di-circleci-remote-docker:slim-2021.07*  

| package         | version      |
|-----------------|--------------|
| sudo            | 1.8.27-1*    |
| bash            | 5.0.3*       |
| curl            | 7.64.0-4*    |
| openssl         | 1.1.1d-0*    |
| gnupg           | 2.2.12-1*    |
| docker          | 20.10.7*     |
| nodejs          | 14.17.1-r0   |
| npm             | 7.17.0-r0*   |
| jq              | 1.5+dfsg-2*  |
| secrethub-cli   | 0.42.1*      |
| snyk            | 1.653.0*     |
| bats            | 1.3.0*       |
| conftest        | 0.25.0*      |
| chamber         | 2.10.1*      |


## 06-25-2021 package versions in di-circleci-base-image:1.29.0

FROM twdps/di-circleci-remote-docker:2021.06*  

| package         | version     |
|-----------------|-------------|
| bash            | 5.1.4-r0*   |
| curl            | 7.77.0-r1*  |
| openssl         | 1.1.1k-r0*  |
| gnupg           | 2.2.27-r0   |
| docker          | 20.10.7-r0* |
| openrc          | 0.43.3-r1*  |
| nodejs          | 14.17.1-r0* |
| npm             | 7.17.0-r0*  |
| jq              | 1.6_rc1-r1  |
| secrethub-cli   | 0.42.1-ro   |
| snyk            | 1.646.0*    |
| bats            | 1.3.0       |
| conftest        | 0.25.0      |
| chamber         | 2.10.1*     |

*changes

## 05-29-2021 package versions in di-circleci-base-image:1.28.0

FROM twdps/di-circleci-remote-docker:2021.04.1  

| package         | version     |
|-----------------|-------------|
| bash            | 5.1.0-r0    |
| curl            | 7.77.0-r0*  |
| openssl         | 1.1.1j-r0   |
| gnupg           | 2.2.27-r0   |
| docker          | 20.10.3-r0  |
| openrc          | 0.42.1-r19  |
| nodejs          | 14.16.0-r0  |
| npm             | 14.16.0-r0  |
| jq              | 1.6_rc1-r1  |
| secrethub-cli   | 0.42.1-ro   |
| snyk            | 1.605.0*    |
| bats            | 1.3.0       |
| conftest        | 0.25.0      |
| chamber         | 2.10.0      |

*changes


## 05-11-2021 package versions in di-circleci-base-image:1.26.0

FROM twdps/di-circleci-remote-docker:2021.04.1  

| package         | version     |
|-----------------|-------------|
| bash            | 5.1.0-r0    |
| curl            | 7.74.0-r1   |
| openssl         | 1.1.1j-r0   |
| gnupg           | 2.2.27-r0   |
| docker          | 20.10.3-r0  |
| openrc          | 0.42.1-r19  |
| nodejs          | 14.16.0-r0  |
| npm             | 14.16.0-r0  |
| jq              | 1.6_rc1-r1  |
| secrethub-cli   | 0.42.1-ro   |
| snyk            | 1.586.0     |
| bats            | 1.3.0       |
| conftest        | 0.25.0      |
| chamber         | 2.10.0      |


## 03-09-2021 package versions in di-circleci-base-image:1.24.0

FROM twdps/di-circleci-remote-docker:2021.02.1  

| package         | version     |
|-----------------|-------------|
| bash            | 5.1.0-r0    |
| curl            | 7.74.0-r1   |
| openssl         | 1.1.1j-r0   |
| gnupg           | 2.2.27-r0   |
| docker          | 20.10.3-r0  |
| openrc          | 0.42.1-r19  |
| nodejs          | 14.16.0-r0  |
| npm             | 14.16.0-r0  |
| jq              | 1.6_rc1-r1  |
| secrethub-cli   | 0.41.2-ro   |
| snyk            | 1.478.0     |
| bats            | 1.2.1       |
| conftest        | 0.23.0      |
| chamber         | 2.9.1       |
