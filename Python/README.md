# Python

project_ImplToF.ipynb:
Проект по реализации обработки данных, полученных с кольцевого ультразвукового томографа и записанных в бинарный файл (массив 16-битовых сигналов, полученных после 70 проходов кольца, составленного из 2048 ультразвуковых приёмопередатчиков). Оформлен в виде кода на Jupyter Notebook.
Цель - найти точное время прихода акустического сигнала (Time o Flight, ToF) среди массива данных с датчиков двумя способами: через библиотечные функции и через преобразованное выражение для задачи вычисления во время поступающего потока данных.
Поиск ToF происходит в программной реализации математического метода Акаике (подробное описание в файле project_ImplToF_description.pdf)