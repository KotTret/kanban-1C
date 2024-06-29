Процедура ПередЗаписью(Отказ)
	Если Автор.Пустая() Тогда
		Автор = ПараметрыСеанса.ТекущийПользователь;
	КонецЕсли;
КонецПроцедуры 

Процедура ОбработкаПроверкиЗаполнения(Отказ, ПроверяемыеРеквизиты)
	Если Автор = Исполнитель Тогда
		Сообщение = Новый СообщениеПользователю;
		Сообщение.Текст = "Автор не может быть исполнителем задачи, пожалуйста, перепроверьте введенные данные";
		Сообщение.Поле = "Исполнитель";
		Сообщение.Сообщить();
	КонецЕсли;
КонецПроцедуры

Процедура ПриЗаписи(Отказ)
	МенеджерЗаписи = РегистрыСведений.СведенияОЗадачах.СоздатьМенеджерЗаписи();
	
	МенеджерЗаписи.Задача = Ссылка;
	МенеджерЗаписи.Дата = ТекущаяДатаСеанса();
	МенеджерЗаписи.Наименование = Наименование;
	МенеджерЗаписи.Описание = Описание;
	МенеджерЗаписи.Статус = Статус;
	МенеджерЗаписи.СрокВыполнения = СрокВыполнения;
	МенеджерЗаписи.Автор = Автор;
	МенеджерЗаписи.Записать();

КонецПроцедуры   




