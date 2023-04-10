# Oumuamua_KK1384

## Инструкция по запуску
Скомпилировать проект можно используя скрипт start.sh или Makefile. Для запуска необходимо ввести команду `./oumuamua`

### Makefile
Для того, чтобы скомпилировать проект, достаточно воспользоваться командой `make -f Makefile` или же `make`. После сборки в корневой директории и директории sofa/src будут находиться объектные файлы. Убрать их можно командой `make clean`

### Скрипт
Скрипт делает всё за одно нажатие - сборку и очистку директории от объектных файлов, а также установку необходимых для программ зависимостей (см. Визуализация данных). Чтобы запустить скрипт, достаточно воспользоваться командой `./start.sh`. Обратите внимание, что при запуске может быть отказано в доступе - добавить доступ на исполнение файла можно командой `chmod ugo+x script.sh`, после чего можно будет воспользоваться предыдущей командой `./start.sh`

## Визуализация данных
Для того, чтобы визуализировать данные, необходимо перейти в директорию visualization и ввести следующую команду: `python3 graphics.py` (или же запустить файл из корневой директории проекта, т.е `python3 ./graphics.py`, однако полученные графики будут все-равно сохраняться в виде изображений в папке visualization). Для работы данного модуля необходимо дополнительно установить пакет MatPlotlib для Python3 командой `pip install matplotlib`. Обратите внимание, что при запуске проекта с использованием скрипта `./script.sh` данная зависимость устанавливается самостоятельно. Полученные в результате работы данной программы графики сохраняются в той же директории visualization в качестве `.png` изображений

## Последние изменения
01.04.2023 - Добавлена визуализация данных из ./output_data (графики прямого склонения и восхождения для базовых данных и модельных (полученных в результате интегрирования)

01.04.2023 - Исправлены смысловые ошибки для выходных данных (longitude -> RA; latitude -> DEC)

01.04.2023 - Убран класс CelestialCoord из проекта. Данный класс предназначался для хранения сферических координат на небесной сфере (прямое восхождение (RA) и склонение (DEC)) в системе часы-минуты-секунды, в которых она была в файлах ./input_data. Для более лучшего понимания систем координат в проекте и ее корректности соотвествующая система была имплементирована в соотвествующий по логике и смыслу класс SphericalCoord.

03.04.2023 - Исправили большинство ошибок. Добавили класс LightCorrector

05.04.2023 - Доделали класс LightCorrector. Поправили названия классов в Converter

10.04.2023 - Исправили опечатку в методе Дормана-Принса
