#Использовать 1testrunner

Тестер = Новый Тестер;
Тестер.УстановитьФорматЛогФайла(Тестер.ФорматыЛогФайла().GenericExec);

ПутьКОтчетуJUnit = "out";

РезультатТестирования = Тестер.ТестироватьФайл(
	Новый Файл(АргументыКоманднойСтроки[0]),
	Новый Файл(ПутьКОтчетуJUnit)
);

ЗавершитьРаботу(РезультатТестирования);
