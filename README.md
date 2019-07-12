# Docker-образ для сборки конспектов

Использование:

    docker pull nsychev/itmo-logic-texlive
    git clone https://github.com/itmo-logic/logic-notes
    cd logic-notes
    docker run -v $(pwd):/home --rm nsychev/itmo-logic-texlive make

