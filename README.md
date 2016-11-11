Jenkins Plugin Fixator
======================

This is a CLI tool to manage Jenkins plugins.

Main features are:

- Install plugins from `JenkinsPlugins.lock`
- Upgrade plugins installed
- Dump installed plugins to `JenkinsPlugins.lock`
- Print installed plugins



Quick start
-----------

```console
$ git clone https://github.com/Kuniwak/jenkins-plugin-fixator ~/.jenkins-plugin-fixator
$ echo 'export PATH="$HOME/.jenkins-plugin-fixator/bin:$PATH"' >> ~/.bash_profile
$ exec $SHELL -l
```


Requirements
------------

- Java 1.8 or later
- curl 7 or later



Usage
-----
### install

Install Jenkins plugins from JenkinsPlugins.lock (requied `$ENDPOINT`).

```console
$ ENDPOINT="http://my-jenkins.example.com:8080" jenkins-plugin-fixator install
```



### upgrade

Upgrade plugins from JenkinsPlugins.lock and update JenkinsPlugins.lock (requied `$ENDPOINT`).

```console
$ ENDPOINT="http://my-jenkins.example.com:8080" jenkins-plugin-fixator upgrade
```



### dump

Dump installed plugins to JenkinsPlugins.lock (requied `$ENDPOINT`).

```console
$ ENDPOINT="http://my-jenkins.example.com:8080" jenkins-plugin-fixator dump
```



### list

List installed plugins (requied `$ENDPOINT`).

```console
$ ENDPOINT="http://my-jenkins.example.com:8080" jenkins-plugin-fixator list
```



### help

Print the help and exit successfully.

```console
$ jenkins-plugin-fixator help
```



About `JenkinsPlugins.lock`
---------------------------

`JenkinsPlugins.lock` is a file that have a list of plugin names and versions.
This is an example for `JenkinsPlugins.lock`:

```
ssh-credentials SSH Credentials Plugin 1.12
git-client      Git client plugin      2.0.0 (2.1.0)
```

As you can see, this format is equivalent to the result of JenkinsCLI's `list-plugins`.



About `$ENDPOINT`
-----------------

`$ENDPOINT` is an endpoint URL for your Jenkins master.
This is an example for `$ENDPOINT`:

```
ENDPOINT="http://my-jenkins.example.com:8080"
```

NOTE: this URL MUST not include `/` at last.



License
-------

The MIT License (MIT)

Copyright (c) 2016 Kuniwak

Permission is hereby granted, free of charge, to any person obtaining a copy of this software and associated documentation files (the “Software”), to deal in the Software without restriction, including without limitation the rights to use, copy, modify, merge, publish, distribute, sublicense, and/or sell copies of the Software, and to permit persons to whom the Software is furnished to do so, subject to the following conditions:

The above copyright notice and this permission notice shall be included in all copies or substantial portions of the Software.

THE SOFTWARE IS PROVIDED “AS IS”, WITHOUT WARRANTY OF ANY KIND, EXPRESS OR IMPLIED, INCLUDING BUT NOT LIMITED TO THE WARRANTIES OF MERCHANTABILITY, FITNESS FOR A PARTICULAR PURPOSE AND NONINFRINGEMENT. IN NO EVENT SHALL THE AUTHORS OR COPYRIGHT HOLDERS BE LIABLE FOR ANY CLAIM, DAMAGES OR OTHER LIABILITY, WHETHER IN AN ACTION OF CONTRACT, TORT OR OTHERWISE, ARISING FROM, OUT OF OR IN CONNECTION WITH THE SOFTWARE OR THE USE OR OTHER DEALINGS IN THE SOFTWARE.
