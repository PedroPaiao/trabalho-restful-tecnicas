<h1 align="center">Trabalho Tecnicas - Restfull</h1>
<p align="center">Basically it's an api in sqlite that works on top of the Student entity, we have CRUD and pagination</p>

<div align='center' id="technologies">
  <img src="https://img.shields.io/static/v1?label=Framework&message=Ruby-on-rails&color=7159c1&style=for-the-badge&logo=Ruby"/>
  <img src="https://img.shields.io/static/v1?label=Development&message=Docker&color=7159c1&style=for-the-badge&logo=Docker"/>
</div>


<h3 id="docker-dependencies" align="left">Docker dependencies</h3>

 - Docker >= 20.10.7
     - If you don't have Docker installed on your machine, I recommend to install [Docker Compose](https://phoenixnap.com/kb/install-docker-compose-on-ubuntu-20-04), to install both at the same time.
 - Docker Compose >= 1.29.2

**Download**

Access the location of your projects through the terminal and download the repository (ssh-version)
```bash
$ git clone git@github.com:PedroPaiao/trabalho-restful-tecnicas.git
```



<h1 id="project-setup">Project Setup</h1>

<h3 id="local-version">Local version</h3>

**Gemset setup (If you are using rvm)**

Inside the project folder, create the files `.ruby-version` and `.ruby-gemset` then enter the folder again to load the new settings.
```bash
$ echo "ruby-3.0.4" > .ruby-version && echo "trabalho-tecnicas" > .ruby-gemset
$ cd .
```

**Install gem dependencies**

The tool `bundle` will install all the gems that were defined in the project's Gemset.
```bash
$ gem install bundler:2.2.33
$ bundle install
```

Good! Now let's run the tasks you configured, and they will create and populate our database instance.
```bash
$  rails db:create db:migrate db:seed
```

<h3 id="docker-version">Docker version</h3>

[Docker Installation Manual](https://docs.docker.com/compose/install/)

**Build image**

Inside the project folder, run the build command for docker-compose.
```bash
$ docker-compose build
```

**Database configuration**

Good! Now let's run the tasks you configured, and they will create and populate our database instance.
```bash
$  docker-compose run web rails db:create db:migrate db:seed
```

<h3 id="starting-server">Starting server</h3>

```bash
$ rails s
```
Or if you are using docker
```bash
$ docker-compose up
```

<h4 align="center">
	<a href="https://www.ruby-lang.org" emoji-code="Ruby"><img class="emojidex-emoji" src="https://cdn.emojidex.com/emoji/px16/Ruby.png" emoji-code="Ruby" alt="Ruby" /></a> Yay! You’re on Rails!  <a href="https://www.ruby-lang.org" emoji-code="Ruby"><img class="emojidex-emoji" src="https://cdn.emojidex.com/emoji/px16/Ruby.png" emoji-code="Ruby" alt="Ruby" /></a>
</h4>

