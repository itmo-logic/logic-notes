# Конспект лекций по курсу «Математическая логика»

[Скачать конспект](https://itmo-logic.github.io/logic-notes/notes.pdf)

## Работа над конспектом

### Зависимости

* [TeX Live](https://www.tug.org/texlive/), а именно следующие пакеты:
    * `texlive-common` (минимальный пакет)
    * `texlive-lang-cyrillic` (кириллица)
    * `texlive-fonts-recommended` (шрифт T2A)
    * `texlive-science` (в некоторых источниках — `texlive-math-extra`, математические символы)
    * `texlive-fonts-extra` (для библиотеки `cmll`)
* [Rubber](https://launchpad.net/rubber)
* Make

### Сборка

```
make
```

Конспект появится в директории `build/`.

### CI

Для автоматической проверки пулл-реквестов и публикации готового PDF в ветку `gh-pages` используется [Circle CI](https://circleci.com/).

Для сборки коммитов из `master` и публикации готовых PDF нужно сгенерировать SSH-ключ, добавить его в *Deploy Keys* репозитория с правами на запись, а затем добавить его в раздел *SSH Permissions* в Circle CI, указав `hostname = github.com`.

Для сборки пулл реквестов установите в Circle CI следующие настройки в разделе *Advanced Settings*:
* Build forked pull requests = On
* Pass secrets to builds from forked pull requests = Off
* Only build pull requests = On

Для сборки в CI используется Docker-образ [itmo-logic-texlive](https://hub.docker.com/r/nsychev/itmo-logic-texlive).

> **Важно**: образ скачивает `texlive-full` и имеет размер более 3 ГБ

Использовать образ для сборки файла можно следующим образом:

```
docker pull nsychev/itmo-logic-texlive # necessary only for the first time
git clone https://github.com/itmo-logic/logic-notes
cd logic-notes
docker run -v $(pwd):/home --rm nsychev/itmo-logic-texlive make
```

