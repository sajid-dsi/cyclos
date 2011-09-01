﻿<p class="head_description">Функция "Бухгалтерия" может использоваться как связующее звено (или зеркало) с "Внешними счетами" такими как банковские счета нац.валют или счета дополнительных валют в других системах как Cyclos.
<p>Так как функция "Бухгалтерия" позволяет зеркально отображать внешние счета и операции по ним, то это позволяет административно увязывать операции Системы с импортируемыми операциями. Это означает , что обе операции будут ссылаться друг на друга и приобретают дополнительный статус. Этот статус отображается специальным значком в журнале операций. Также возможен поиск и печать результатов списка операций по их статусу (состоянию).
<p>Типичное использование модуля "Бухгалтерия" для контроля состояния счетов в системах где используемая валюта обеспечена банковским счетом в нац.валюте. В таком случае операции по банковскому счету имеют прямое отношение к операциям в Системе дополнительной валюты. Например: Перевод средств в нац.валюте на счет Организации может соотносится с платежом Units система-участнику. Вы как бы покупаете Units Системы или погашаете ссуду в Units. И наоборот: Платеж с счета в нац.валюте организации участнику может соотноситься с платежом участник-системе в Units. Функция "Согласования" помогает контролировать обеспечение валюты Системы (Unuts). Например: Согласование счета в системе где валюта Системы (Units) на 100% обеспечены нац.валютой будет один к одному.
<p>Входящие операции (по внешним счетам) могут автоматически генерировать соответствующие платежи Система - участнику. Это подробно объясняется в секции настойках импорта модуля Бухгалтерии.<br>

<p>Контроль обеспечения валюты - это только пример использования модуля Бухгалтерия. Его можно использовать в других случаях где внешние операции генерируют внутренние платежи или изменяют состояние ссуд в Системе.</p>

<i>Где это находится.</i>
<br>
Модуль "Бухгалтерия" находится в &quot;Меню: Бухгалтерия&quot; (для отображения этого пункта меню необходимо установить соответствующие разрешения для группы администраторов)

<p><i>Как эта функция включается.</i><br>
Включение модуля находится в <a
	href="${pagePrefix}groups#manage_group_permissions_admin_system"><u>разрешениях админа</u></a> в разделе &quot;Внешние счета (бухгалтерия)&quot;.
<p>Для возможности импорта внешних операций в Систему следует произвести следующие действия:
<ol>
	<li>Проверьте <a
		href="${pagePrefix}account_management#transaction_types"><u>
	типы платежей</u></a> которые потребуются для этих операций
	<li>Создайте внешний счет в &quot;Меню: Управление внешними счетами >
	Создать новый внешний счет&quot;.
	<li><b>соответствие файлов:</b> Задайте соответствия для файла импорта для которого вы создали внешний счет.
	<li><b>соответствие полей:</b> Тут задайте как должны использоваться поля этого файла.
	<li><b>соответствие поля типа платежа:</b> Тут укажите какие значения в поле типа платежа будут соответствовать типам платежей.
</ol>
Только после этих шагов вы сможете импортировать новые внешние операции через файл соответствия который вы получите с банковского счета.
<a href="#using"><u>Нажмите здесь</u></a>
чтобы получить обзор того как импортировать новые операции из файла.
<hr>


<A NAME="external_accounts_list"></A>

<h3>Список внешних счетов</h3>
Это окно показывает список всех внешних счетов.
<ul>
	<li><img border="0" src="${images}/edit.gif" width="16" height="16">
	Нажмите на значок чтобы изменить внешние счета.
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">
	Нажмите на значок если вы хотите удалить внешние счета.
</ul>
Вы можете добавить новые внешние счета нажав кнопку &quot;Создать новый внешний счет&quot;.
<hr class="help">


<A NAME="new_edit_external_account"></A>

<h3>Создание нового / изменение внешнего счета</h3>
На этой странице вы сможете определить внешние счета, внутреннюю фин. систему и счета участников которые будут соотносится к ним.<br>
Операции по внешнему счету будут по большей части относиться к операциям образования Юнитов (ссуды) и их "утилизации".
Поэтому системный счет относящийся к внешним счетам обычно бывает "неограниченного" типа. За подробной информацией смотрите <a href="${pagePrefix}account_management#account_details"><u>
файл помощи</u></a>&quot;создание счета&quot;. 
<hr class="help">


<A NAME="edit_file_mapping"></A>

<h3>Редактирование файловых соответствий</h3>
Для импорта информации по операции по внешнему счету необходимо определить соответствия полей внешнего счета и соответствующих полей в Системе. Сразу после создания внешнего счета появиться запрос о создании файлового соответствия. Доступны следующие поля соответствий.
<ul>
	<li><b>Тип: </b>CSV или дополнительный (файл классов)<br>
	Обычно файлы операций содержат неформатированный текст со значениями разделяемыми символами разделения. В этом случае можно использовать опции<a
		href="${pagePrefix}loans#csv"> <u>CSV</u></a>.<br>
	Если файл операции более сложного типа, например xml, то возможно создать дополнительный класс который будет обрабатывать этот формат. Для этого вам потребуется следующее:
	<ol>
		<li>Создать класс Java который обеспечивает интерфейс Системы: TransactionFileImport (in the utils package)
		<li>разместить его в пути классов и в папках WEB-INF/classes на сервере или в разшареной директории библиотек, если он упакован в jar.
	</ol>
	<li><b>Разделитель столбцов: </b><br>
	Символ для разделения, обычно - запятая &quot;,&quot;.
	<li><b>Строчек заголовка: </b><br>
	Количество линий (строк) заголовка без данных. Они не будут обрабатываться.
	<li><b>Формат чисел: </b><br>
	Имеется два варианта формата чисел:
	<ul>
		<li><b>С фиксированной дробной ч.:</b> В некоторых случаях формат чисел в файле операции не содержит "разделителя целой части", потому что он фиксирован и отсчитывается справа налево. Например значение 50000 с фиксированными 2-мя знаками после десятичной запятой даст 500 (или 500,00 с запятой).<br>
		При выборе этого варианта, вам нужно ввести число Знаков после "," - обычно &quot;2&quot;.
		<li><b>С разделителем дроб.ч.:</b> Обычно он используется. Вы можете задаете его в поле  &quot;Разделитель дробной части&quot;. Обычно это точка &quot;.&quot; или запятая ","
	</ul>
	<li><b>Символ отриц. значений: </b><br>
	В некоторых случаях формат числа в поле файла операции никогда не отрицательный, но для отрицательных чисел используется специальный символ в дополнительном столбце. Это может быть например &quot;-&quot; или D (Дебет). Например значение в поле столбца |-500,00| будет тоже что в столбцах |D|500,00| (где "|" - разделитель столбцов). В этом случае следует вводить этот символ в этом поле.<br>
	Обычно значение имеет символ отрицательного числа в одном поле и столбец для символа отрицательных значений не используется.
	<li><b>Кавычки для текста: </b><br>
	Файлы операции и CSV-файлы часто содержат кавычки для текста (для предотвращения разрыва строки или столбца). Здесь вы можете их задать	(обычно ").
	<li><b>Формат даты: </b><br>
	Здесь вы задаете формат даты. Используйте y для года, M для месяца (только заглавными) и d для числа. Можете использовать любой разделитель значений как dd/mm/yy or yyyy-MM-dd и т.п.
</ul>
Нажмите &quot;Выполнить&quot; для создания файлового соответствия. Нажатие кнопки &quot;Сброс&quot;  удалит все файловые соответствия и вас запросят создать новый. Тип платежа (окно внузу) не будет удален при Сбросе файлового соответствия.
<hr class="help">


<A NAME="file_mapping_fields_list"></A>

<h3>Поля файловых соответствий</h3>
Как только вы определили формат файлового соответствия (в верхнем окне) вы можете задать соответствия полей файла операций с полями Системы. Все строки в списке означают одну строку в файле операций и каждое поле - это один столбец.
<P>При первом открытии этого окна в нем не будет полей в списке. Для добавления нового соответствия полей нажмите на  &quot;Добавить новое соответствие полей&quot;. Вам предстоит повторить это для всех полей файла операции.<br>
Первое поле (с порядковым номером 1) будет первым (левым) столбцом в файле операций. Порядок полей должен соответствовать с порядком столбцов.
<p>Как только появятся список полей вы можете делать следующее.
<ul>
	<li>Вы можете изменить порядок полей нажав кнопку &quot;Изменить порядок соответствий полей&quot;.
	<li><img border="0" src="${images}/edit.gif" width="16" height="16">&nbsp;
	нажав этот значок вы сможете изменить содержимое этого поля.
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">&nbsp;нажав этот значок вы сможете удалить содержимое этого поля.
</ul>
<hr class="help">


<A NAME="edit_field_mapping"></A>

<h3>Создание нового/Изменение соответствия полей</h3>
Здесь задается соответствие полей. Вы можете задавать название, которое является всего лишь меткой и не несет никакой другой функции. В развертывающемся меню выбора доступны следующие варианты.
<ul>
	<li><b>Игнорируемое: </b>
	Если файл содержит дополнительные столбцы которым нет определенных соответствий с полями Системы, то все равно необходимо задать соответствия для них со значением &quot;Игнорируемое&quot;.
	<li><b>Идентификатор участника: </b>
	Эта опция позволяет задать соответствие внутреннему идентификатору участника в Системе. Хотя это не желательно если файл операции содержит внутренний идентификатор участника, но для полного набора опций так сделано.
	<li><b>Имя участника: </b>
		<li><b>Настраиваемое поле участника: </b>
	Если в файле операции не задается имя участника, то можно задать настраиваемое поле (со страницы личных данных) для идентификации участника. Это должно быть уникально. Например: фискальный номер.
	<li><b>Тип платежа: </b>
	Если вы хотите импортировать операции с составлением платежа из файла операции, вам следует указать тип платежа. Обычно операции в файле операций будет про нескольким типам платежей. Например: депозита, выплата ссуды, и т.п. Тип платежа определяется кодом в отдельном столбце. Этой опцией вы указываете какой столбец соответствует типу платежа. Возможные значения различных типов платежей могут быть заданы функцией типа платежа ниже этого окна.
	<li><b>Дата платежа: </b>
		<li><b>Сумма платежа: </b> 
	<li><b>Идентификатор отрицательного значения: </b> Это может быть знак ( &quot;-&quot;)
	или слово (&quot;D&quot; или &quot;debit&quot;)
</ul>
Нажмите &quot;Выполнить&quot; для сохранения.<p>
<b>Примечание:</b> Каждое поле может быть использовано только раз. Т.е. Если вы добавили тип поля, (напр. дата платежа) то нельзя его добавить еще раз. Исключение: поля со значением &quot;Игнорируемое&quot; Потому что различные столбцы могут не быть &quot;Игнорируемыми&quot; (не импортироваться).<br>
Так как поля Идентификатор участника, Имя участника, и настраиваемые поля участника используются для идентификации участника, то только одно может быть использовано в вашем файле операции.
<hr class="help<a name="set_field_mappings_order"></a>
<h3>Установка порядка соответствия полей</h3>
Порядок соответствия выбранных полей должен быть точно таким как и полей в файле операции для импорта.
<p>Перетаскивайте поля мышью и нажмите "Выполнить".
<hr class="help">


<A NAME="external_transfer_type_list"></A>
<h3>Тип платежа (соответствие действий)</h3>
Это окно отображает список с возможными типами платежей которые файл операции может содержать. Для добавления типов платежей должны существовать соответствующие соответствия полей - &quot;Тип платежа&quot;. В этом окне вы определяете для Системы какие значения кодов в этих полях соответствуют типам платежей в Системе. Помните, что вы должны задать соответствия каждому возможному значению этого поля; коды без соответствий определенным типам платежей получат соответствие &quot;Ничего&quot;.
<ul>
	<li><img border="0" src="${images}/edit.gif" width="16" height="16">
	Нажав этот значок вы сможете изменить соответствие типа платежа.
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">
	Нажав этот значок вы сможете удалить соответствие типа платежа.
</ul>
Чтобы добавить соответствие типа платежа нажмите &quot;Выполнить&quot; у кнопки с надписью 
&quot;Добавить новый тип платежа&quot;.
<hr class="help">

<A NAME="edit_external_transfer_type"></A>
<h3>Создание нового/Изменение типов платежей</h3>
На этой странице вы можете определить как Система должна интерпретировать код в поле типа платежа в файле операции из вашего банка. Здесь вы определяете какому типу платежа какой специфический код должен соответствовать. Повторите эту процедуру для каждого кода в поле. 
<br>
Название и описание здесь для внутреннего пользования и не выполняют никакой функции. Код - это одно из возможных значений поля содержащего 
<a href="#edit_field_mapping"> <u>соответствие типу платежа</u></a>
. Для примера смотрите список далее.
<br>
Возможны следующие действия.
<ul>
	<li><b>Ничего: </b>
	Этим Вы сообщаете, что определенный код не должен вызывать никакого действия. Операция появляется в обзоре ваших внешних счетов, так что состояние счета верно, однако никакой платеж , не производится в Системе.
	<li><b>Сформировать платёж участнику: </b>
	Поясним примером. Если столбец типа платежа в файле перевода может принимать различные значения (коды) и одно из них &quot;DEP1&quot; означающее что операция - депозит по банковскому счету. Если вам надо чтобы именно этот тип платежа автоматически генерировал платеж система-участник - выберите эту опцию.
	<li><b>Сформировать платёж системе: </b>
	Это редкий случай но он предусмотрен. Он означает что входящая операция на вешний счет будет генерировать платеж участник-системе (в вашей внутренней Системе).<br>
	Например, вы хотите импортировать бухгалтерию в нац.валюте в Систему, для проверки того как дисциплинированно участники платят (в нац.валюте) членские взносы. В этом случае вам необходимо создать счет для организации в нац.валюте и дополнительные счета участников в нац.валюте. Это позволит вам воспроизводить операции по банковским счетам с помощью созданных счетов и проверять как происходит оплата членских взносов (помимо этого вы можете сделать статистику по ним).
	<li><b>Списать ссуду: </b>
	В некоторых Системах <a href="${pagePrefix}loans"><u>ссуды</u></a> могут погашаться извне (обычными деньгами). При этом вы не захотите чтобы состояние ссуды сменилось на "выплачена". потому что это состояние зарезервировано для ссуд погашенных валютой Системы. В таком случае новое состояние будет - "возмещена". 
		<li><b>Согласовать платёж: </b>
	Состояние "Согласован" дается внутреннему платежу Системы означая что у него есть внешний "встречный" платеж и он подтвержден администрацией. Это используется для контроля за состояниями ряда внутренних (системы и участников) и внешних счетов.
</ul>
<hr class="help">

<a name="using"></a>
<p class="sub_description">
<h2>Использование внешнего счета</h2>
Вы можете импортировать внешние операции на внешние счета, и затем исполнить их. Вы также можете вести поиск операций во внешних счетах.
</p>
<i>Где это находится?</i>
<br>
&quot;Меню: Бухгалтерия > Внешние счета&quot;.
<p><i>Как это включается?</i><br>
Как только вы настроили согласование для внешнего файла, вы можете начать импорт операций из файла от вашего банка. Проделайте следующее чтобы это заработало:
<ol>
	<li>Следуйте в &quot;Меню: Бухгалтерия > Внешние счета&quot;, и нажмите значок импорта <img border="0" src="${images}/import.gif" width="16" height="16">&nbsp;.
	<li>Импортируйте файл. Если операция выдаст ошибки, исправляйте их, пока импорт не пройдет успешно.
	<li>Следуйте к обзору импортированных операций. Это можно сделать через окно поиска, и нажав значок обзора <img border="0" src="${images}/preview.gif" width="16" height="16">&nbsp;
	.
	<li>удалите или восстановите недооформленные операции; проверте  операции ожидающие проверки. Все это можно сделать нажав значок обзора <img border="0" src="${images}/preview.gif" width="16" height="16">&nbsp; напротив каждой операции.
	<li>Направьте к исполнению проверенные операции нажав кнопку &quot;Запуск Платежей&quot;.
</ol>
<hr>

<A NAME="external_accounts_overview"></A>
<h3>Обзор внешних счетов</h3>
Это список всех внешних счетов настроенных под Систему. Название столбца покажет название внешнего счета и состояние счета - сумму всех импортированных операций.
<ul>
	<li><img border="0" src="${images}/import.gif" width="16" height="16">
	Нажмите значок-стрелку для входа в функцию импорта для счета, позволяющую вам импортировать внешние счета из файла. Здесь также можно получить обзор всех прошлых импортов.
	<li><img border="0" src="${images}/preview.gif" width="16" height="16">
	Нажмите значок "увеличительное стекло" для просмотра и запуска уже импортированных счетов.
</ul>
<hr class="help">

<A NAME="external_transfer_import_new"></A>
<h3>Импорт новых внешних операций</h3>
В этом окне вы можете импортировать новые внешние счета. Выберите файл и нажмите "Выполнить". Если файл нечитаем из-за синтаксических ошибок, появится сообщение об ошибке с указанием строки и поля вызвавшего ошибку. 
<hr class="help">

<A NAME="external_transfer_import_list"></A>
<h3>Список импортов внешних операций</h3>
В этом окне вы можете вести поиск импортов файлов по периоду времени их создания. Используйте календать(
<img border="0" src="${images}/calendar.gif" width="16" height="16">
) для утазания дат.
<hr class="help">

<A NAME="external_transfer_import_result"></A>
<h3>Список всех импортов внешних операций</h3>
Это окно отображает список всех импортов внешних операций.
<ul>
	<li><img border="0" src="${images}/preview.gif" width="16" height="16">
	Нажмите значок "увеличительное стекло" для просмотра и запуска уже импортированных операций.<br>
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">
	Нажмите значок "удаления" для удаления импортированных операций. <br>
	Примечание: Вы не можете удалить импорты у которых операции в состояниях &quot;Проверенные&quot; или &quot;Запущенные&quot;.
</ul>
<hr class="help">

<A NAME="external_account_history"></A>
<h3>История по внешнему счету</h3>
В этом окне вы можете вести поиск импортированных операций. 
Поиск без дополнительных критериев покажет все импортированные операции по данному внутреннему счету.
Доступны следующие критерии поиска:
<ul>
	<li><b>Тип: </b>
	С этим критерием вы можете вести поиск по типу счета (определенному в настройках импорта). 
	<li><b>Состояние: </b>
	<ul>
		Импортированные операции могут быть следующих состояний.
		<li><b>Ожидающие проверки: </b>
		Операция импортирована но еще не проверена. Она пока не изменила &quot;состояние счета&quot;  (на главной странице Бухгалтерии) и не произвела никаких действий.<br>
		Примечание: Можно удалять импортированные операции в состоянии ожидания.
		<li><b>Проверенные: </b>
		Это проверенные операции. 
		<li><b>В исполнении: </b>
		Это операции "запущенные" к исполнению после того как из проверили.
	</ul>
	<li><b>Номер счета / Имя участника: </b>
		<li><b>По сумме: Начиная с / и до: </b>
		<li><b>По дате:  Начиная с / и до:</b>
	</ul>
Под окном три кнопки с действиями:
<ul>
	<li><b>К списку импорта:</b> Это перенесет вас к обзору импортированных файлов где вы также сможете импортировать новые файлы операций.
	<li><b>Запуск Платежей: </b>
	Это откроет окно запуска операций с опциями по ним. <br>
	"Запуск" означает одно из следующих
	<ul>
		<li>Согласовать платёж (с внешнего счета)
		<li>Сформировать платёж системе относящийся к входящему платежу по банковскому счету
		<li>Списать ссуду относящуюся к входящему платежу по внешнему счету.
	</ul>
	Кнопка "Запуск" сработает сразу для всех операций в списке (не важно они выбраны или нет). Главное чтобы они были в состоянии "Проверенные".
	<li><b>Добавить новый тип платежа: </b>
	Также возможно добавить операцию вручную, если она импортировалась неправильно.
</ul>
<hr class="help">

<a name="status"></a>
<h3>Состояние операции</h3>
Каждая импортированная операция приобретает определенное состояние. Вот возможные:
<ul>
	<li><b>Ожидающие проверки</b> <img border="0" src="${images}/pending.gif" width="16" height="16">:
	Операция импортирована но пока без какого-либо действия. Она в ожидании последующих действий.<br>
	Это состояние также будет показано в обзоре системных счетов если тип операции отмечен как "Подлежит согласованию&quot;. В этом случае вы можете проследить состояние "согласован" прямо со страницы обзора счета.<br>
	Только операции в состоянии Ожидания проверки могут быть удалены.
	<li><b>Проверенные</b> <img border="0" src="${images}/checked.gif" width="16" height="16">:
	Операция была проверена. Это означает что она поступит на внешний счет.<br>
	Операции с состоянием " проверенные" можно вернуть в состояние "ожидающее проверки".
	<li><b>Недооформленные</b> <img border="0" src="${images}/incomplete.gif" width="16" height="16">:
	Операция импортирована но одно или несколько полей не получили правильного соответствия.<br>
	<li><b>Согласованные</b> <img border="0" src="${images}/conciliated.gif" width="16" height="16">:
	Операция запущена к выполнению. Это означает она включена в состояние внешнего счета и производит действие в Системе (внутренний платеж или погашение ссуды).<br>
	Это состояние также будет показано в обзоре системных счетов если тип операции отмечен как "Подлежит согласованию&quot;. В этом случае вы можете проследить состояние "согласован" прямо со страницы обзора счета.<br>
	"Запущенные" операции не могут изменять статус или быть удалены.
</ul>
<hr class="help">


<A NAME="external_transfers_history_result"></A>
<h3>Внешние платежи</h3>
Это окно показывает результаты поиска предыдущего окна. По умолчанию оно показывает все импортированные операции. Столбец Типа покажет значок состояния. 
<a href="#status"><u>Нажмите здесь</u></a> для просмотра возможных состояний.  
Столбцы суммы и даты говорят сами за себя.
<p>
Следующие действия возможны для каждой операции.
<ul>
	<li><img border="0" src="${images}/preview.gif" width="16" height="16">
	Вы можете войти в Согласованные и Запущенные платежи выбрав значок просмотра.
	<li><img border="0" src="${images}/edit.gif" width="16" height="16">
	Вы можете редактировать данные операций с состояние "Ожидающие проверки" нажав на значок редактирования.<br>
	<li><img border="0" src="${images}/delete.gif" width="16" height="16">
	Для удаления операции нажмите значок удаления.<br>
</ul>
<hr class="help">


<A NAME="external_transfers_history_summary"></A>
<h3>Журнал истории по внешним операциям</h3>
Это окно показывает обзор и отчеты всех операций в списке заданного поиска.

<hr class="help">

<A NAME="new_external_transfer"></A>
<h3>Новый внешний платёж</h3>
Операцию можно добавить вручную. Обычно в этом нет необходимости, если импорт операций настроен правильно
<br>

<hr class="help">

<A NAME="edit_external_transfer"></A>
<h3>Просмотр и Редактирование  & внешних платежей</h3>
На этой странице вы можете просмотреть подробности импортированных операций. Если операция в состоянии "ожидания проверки" вы можете редактировать их.<br>

<hr class="help">

<A NAME="external_transfer_process"></A>
<h3>Запуск внешних операций</h3>
На этой странице вы можете "запускать" платежи. Платежи должны быть в состоянии <a href="#status"><u>&quot;проверенные&quot; </u></a> иначе они не не будут показаны в списке операций готовых к запуску.
<p>В окне приводится обзор платежей готовых к запуску. В каждом пункте, верхний ряд отображает строку из файла операции в ее оригинальном виде, и нижний ряд - запущенную к выполнению операцию. Отметьте операции для запуска отметками в кнопка-флажках в первом столбце. Если дата или сумма не верны, вы можете здесь же их подкорректировать.
<br>
Нажатие кнопки &quot;Выполнить&quot; запустит выбранные операции к выполнению. 
<p>
Имеется три вида "запуска".
<ul>
	<li><b>Согласовать платёж : </b>
	Этот вариант обычен для систем где внутренняя валюта обеспечены извне (обычными деньгами на банковских счетах. Согласование внешних операций и внутренних означает что они будут связаны так как они административно соотносятся. Это отобразится как <img border="0" src="${images}/conciliated.gif"
		width="16" height="16"> напротив платежа в обзоре внешних и системных счетов. В окне поиска этих обзоров будет опция поиска по состоянию "Согласован". Для возможности согласования внеш.операций с внутренними операциями, они должны быть отмечены как "Подлежащие согласованию" в настройках типа платежа. <br>
	<li><b>Сформировать платёж : </b><br>
	Входящий внешний платеж (только положительный) может быть настроен чтобы генерировать платеж в системе (система-пользователю или наоборот). Для запуска платежа отметьте его. После этого вы сможете его подкорректировать (обычно в этом нет необходимости.<br>
	Сгенерированный платеж будет автоматически иметь "Согласованное" состояние.
	<li><b>Списать ссуду : </b><br>
	Ссуда будет административно переведена в состояние &quot;выплачена&quot; когда она погашена. В системах где ссуды могут быть выплачены внешним способом это будет отражаться в состоянии "Возмещена". Входящий внешний платеж может генерировать платеж погашения ссуды.<br>
	Имеется специальный тип конфигурации внешнего счета, при обработке которого Система будет искать ссуды с такими же суммой и датой и выдаст наиболее близкие к нему. Админ сможет выбрать правильный. Затем сгенерированный платеж по возмещению ссуды перейдет в "Согласованное" состояние в обзоре внешних счетов.
</ul>
<hr class="help">


<div class='help'>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
<p>&nbsp;</p>
</div>
