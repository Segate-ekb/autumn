#Использовать ".."
#Использовать asserts
#Использовать "../tests/ТестКлассы"

Перем ВремяНачалаЗамера;
Перем ВремяВыполненияВСекундах;

Процедура ПередЗапускомТеста() Экспорт
	ВремяНачалаЗамера = Неопределено;
	ВремяВыполненияВСекундах = Неопределено;
КонецПроцедуры

&Тест
Процедура ПроверкаПроизводительностиСозданияКомпанейскихЖелудей() Экспорт
	
	// Дано
	Поделка = Новый Поделка();
	Поделка.ЗапуститьПриложение();
		
	
	КоличествоИтераций = КоличествоИтерацийСозданияОбъектов();
	ПорогПрохождения = ДопустимыйПорогПрохожденияВСекундах();
	
	// Когда 

	НачатьЗамерВремени();

	Для _Н = 1 по КоличествоИтераций Цикл
		Желудь = Поделка.НайтиЖелудь("КомпанейскийЖелудь");
	КонецЦикла;

	ЗавершитьЗамерВремени();

	ИнформацияОВремениВыполненияТеста("Создание компанейских желудей");

	// Тогда
	Ожидаем.Что(ВремяВыполненияВСекундах, "Компанейские желуди создаются слишком долго").Меньше(ПорогПрохождения);

КонецПроцедуры

&Тест
Процедура ПроверкаПроизводительностиСозданияКомпанейскихЖелудейТабакеркой() Экспорт
	
	// Дано
	Поделка = Новый Поделка();
	Поделка.ЗапуститьПриложение();

	Желудь = Поделка.НайтиЖелудь("ЖелудьСКомпанейскойТабакеркой");
		
	
	КоличествоИтераций = КоличествоИтерацийСозданияОбъектов();
	ПорогПрохождения = ДопустимыйПорогПрохожденияВСекундах();
	
	// Когда 

	НачатьЗамерВремени();

	Для _Н = 1 по КоличествоИтераций Цикл
		КомпанейскийЖелудь = Желудь.КомпанейскийЖелудь.Достать();
	КонецЦикла;

	ЗавершитьЗамерВремени();

	ИнформацияОВремениВыполненияТеста("Создание компанейских желудей из табакерки");

	// Тогда
	Ожидаем.Что(ВремяВыполненияВСекундах, "Компанейские желуди из табакерки создаются слишком долго").Меньше(ПорогПрохождения);

КонецПроцедуры

&Тест
Процедура ПроверкаПроизводительностиИнициализацииПоделки() Экспорт
	
	// Дано
	ПорогПрохождения = 1;

	// Когда
	НачатьЗамерВремени();
	Поделка = Новый Поделка();
	Поделка.ЗапуститьПриложение();
	ЗавершитьЗамерВремени();

	ИнформацияОВремениВыполненияТеста("Инициализация пустой поделки");

	// Тогда
	Ожидаем.Что(ВремяВыполненияВСекундах, "Время инициализация пустой поделки слишком велико").Меньше(ПорогПрохождения);

КонецПроцедуры

&Тест
Процедура ПроверкаПроизводительностиСозданияКомпанейскихЖелудейСПластилиномНаПолнях() Экспорт
	
	// Дано
	Поделка = Новый Поделка();
	Поделка.ЗапуститьПриложение();
		
	
	КоличествоИтераций = КоличествоИтерацийСозданияОбъектов();
	ПорогПрохождения = ДопустимыйПорогПрохожденияВСекундах() * 3;
	
	// Когда 

	НачатьЗамерВремени();

	Для _Н = 1 по КоличествоИтераций Цикл
		Желудь = Поделка.НайтиЖелудь("КомпанейскийЖелудьСПластилиномНаПолях");
	КонецЦикла;

	ЗавершитьЗамерВремени();

	ИнформацияОВремениВыполненияТеста("Создание компанейских желудей с пластилином на полях");

	// Тогда
	Ожидаем.Что(ВремяВыполненияВСекундах, "Компанейские желуди с пластилином на полях создаются слишком долго").Меньше(ПорогПрохождения);

КонецПроцедуры

&Тест
Процедура ПроверкаПроизводительностиСозданияКомпанейскихЖелудейСПластилиномВКонструкторе() Экспорт
	
	// Дано
	Поделка = Новый Поделка();
	Поделка.ЗапуститьПриложение();
		
	
	КоличествоИтераций = КоличествоИтерацийСозданияОбъектов();
	ПорогПрохождения = ДопустимыйПорогПрохожденияВСекундах() * 3;
	
	// Когда 

	НачатьЗамерВремени();

	Для _Н = 1 по КоличествоИтераций Цикл
		Желудь = Поделка.НайтиЖелудь("КомпанейскийЖелудьСПластилиномВКонструкторе");
	КонецЦикла;

	ЗавершитьЗамерВремени();

	ИнформацияОВремениВыполненияТеста("Создание компанейских желудей с пластилином в конструкторе");

	// Тогда
	Ожидаем.Что(ВремяВыполненияВСекундах, "Компанейские желуди с пластилином на полях создаются слишком долго").Меньше(ПорогПрохождения);

КонецПроцедуры

Процедура НачатьЗамерВремени()
	ВремяНачалаЗамера = ТекущаяУниверсальнаяДатаВМиллисекундах();
КонецПроцедуры

Процедура ЗавершитьЗамерВремени()
	ВремяВыполненияВСекундах = (ТекущаяУниверсальнаяДатаВМиллисекундах() - ВремяНачалаЗамера) / 1000;
КонецПроцедуры

Процедура ИнформацияОВремениВыполненияТеста(СодержаниеТеста)
	ТекстСообщения = СтрШаблон("Время выполнения <%1> составило %2 сек.", СодержаниеТеста, ВремяВыполненияВСекундах);
	Сообщить(ТекстСообщения);
КонецПроцедуры

Функция КоличествоИтерацийСозданияОбъектов()
	Возврат 100000;
КонецФункции

Функция ДопустимыйПорогПрохожденияВСекундах()
	Возврат 30;
КонецФункции