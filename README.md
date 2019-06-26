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

### Docker

Для сборки в CI используется Docker-образ [itmo-logic-texlive](https://hub.docker.com/r/nsychev/itmo-logic-texlive).

> **Важно**: образ скачивает `texlive-full` и имеет размер более 3 ГБ

Использовать образ для сборки файла можно следующим образом:

```
docker pull nsychev/itmo-logic-texlive # necessary only for the first time
git clone https://github.com/itmo-logic/logic-notes
cd logic-notes
docker run -v $(pwd):/home --rm nsychev/itmo-logic-texlive make
```

