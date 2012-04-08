require "#{RAILS_ROOT}/app/models/main_page"
require "#{RAILS_ROOT}/app/models/about_page"
require "#{RAILS_ROOT}/app/models/services_page"
require "#{RAILS_ROOT}/app/models/travelling_page"
require "#{RAILS_ROOT}/app/models/contacts_page"

class AddNewContent < ActiveRecord::Migration
  def self.up
    MainPage.destroy_all
    AboutPage.destroy_all
    ServicesPage.destroy_all
    TravellingPage.destroy_all
    ContactsPage.destroy_all

    MainPage.create :title => "Дома, виллы и аппартаменты в Таиланде, остров Самуи.",
      :body => "<p> </p>
<p><span style='font-size: larger;'>Наше агентство DreamyDays поможет вам найти и снять <strong>виллы и дома на тропическом острове Самуи,</strong> в Таиланде. </span><span style='font-size: larger;'>Собственная вилла или дом на Самуи - это альтернатива гостиничному отдыху. Даже самая дорогая гостиница - это массовый отдых, конвеер, вокруг вас всегда находятся чужие люди. Отдых на своей вилле в Таиланде - это незабываемый опыт единения с близкими людьми и природой в комфорте уровня пятизвездочного отеля.</span> <span style='font-size: larger;'><br/>
</span></p>
<p><span style='font-size: larger;'>Аренда дома в Таиланде это выход для семей с маленькими детьми - возможность убежать от серой российской зимы на собственную южную дачу.</span><span style='font-size: larger;'> Чем хорош именно остров Самуи и Таиланд вообще для семейного отдыха? Это ощущение безопасности и расслабленности. Приятные и дружелюбные люди вокруг. Современные торговые моллы с привычными для россиян продуктами. Развитые медицинские услуги (например, на острове несколько современных международных клиник). Мягкий климат и красивая природа вокруг. Что нужно еще, чтобы забыть обо всем на свете и заниматься собственным ребенком?</span><span style='font-size: larger;'><br/>
</span></p>
<p><span style='font-size: larger;'>Мы постараемся ответить на все вопросы, связанные с путешествием в Таиланд. На нашем сайте вы найдете всю необходимую информацию про визы в Таиланд, </span><span style='font-size: larger;'>тайские экзотические фрукты, тайскую еду и многое другое.</span></p>"
		
    AboutPage.create :title => "О самуи",
      :body => "<p><span style='font-size: larger;'>Общая информация </span></p>
<p><span style='font-size: larger;'>Остров Ко Самуи находится в провинции Сурат Тхани. Это третий по размеру остров Таиланда с площадью около 230 км2. Население около 50 000. Остров располагается в Cиамском заливе, примерно в 35 км от материка. В ширину остров около 21 км, в длинну - 25 км. В центре острова - необитаемые джунгли с высшей точкой на 635 метрах над уровнем моря. Большинство дорог проложено вокруг острова вдоль моря. Столицей считается деревня Натон, на западном побережье Самуи. Впрочем, туристы попадают туда только в том случае, если приплывают на остров на пароме с материка, в противном случае там делать нечего.</span></p>
<p><span style='font-size: larger;'>Перелет до Самуи - с пересадкой в Банкоке. Это обычно занимает не более 2 часов, так как самолеты Банкок-Самуи летают каждые 40 минут. Из зала международного прилета в аэропрорту Банкока вам просто нужно будет подняться на самый верхний этаж того же здания.</span><br/>
 </p>
<p><img width='475' height='460' src='http://www.ljplus.ru/img4/k/a/kawaii_factory/MAP_thai.jpg' alt='карта таиланда, таиланд карта'/></p>
<p> </p>
<p><span style='font-size: larger;'><b>Пляжи острова Самуй</b></span></p>
<p><span style='font-size: larger;'>Вокруг острова проложена кольцевая дорога, по которой можно добраться до любого пляжа. Чтобы объехать Самуи по кольцевой дороге, понадобится около 1,5 часов. Пляжи все песчаные, но песок везде разный - где-то крупный, золотого цвета (например, Майнам), а где-то мелкий и белый (Чавенг)</span></p>
<p> </p>
<p><img width='475' height='460' src='http://www.ljplus.ru/img4/k/a/kawaii_factory/mapbeache.jpg' alt='85.72 КБ'/><span style='font-size: larger;'><b><br/>
Пляж Чавенг / Чавенг Ной (Chaweng Beach / Chaweng Noi)</b><br/>
Пляж Чавенг - самый большой пляж острова, с  мелким песочком и чистой водой. Однако, это скорее вариант для отдыха с компанией друзей, но не с маленькими детьми. Здесь всегда больше людей, громкая музыка может играть прямо на пляже, найти свободные лежаки может быть проблемой. Вообще Чавенг - это туристический центр острова. Одна линия отелей отделяет пляж от шумной улицы с магазинами, барами, ресторанами и Макдональдсом. Но при этом пляж чистый и красивый. Чтобы добраться из его южной части в  северную нужно воспользоваться такси. Пляж Чавенг Ной - это  северная часть пляжа Чавенг.<br/>
<br/>
<b>Пляж Ламай (Lamai) и Хинта Хин яй (Hinta Hinyai)</b><br/>
Пляж Ламай - это второй по величине туристический центр  острова. Песок на пляже несколько более грубый, а море  глубже, чем на Чавенге. Ламай намного спокойнее Чавенга, особенно ближе к южному краю. Пляж можно пройти пешком (это займет минут 40). На самом юге пляжа - местная достопримечательность - большое каменное  образование </span><span style='font-size: larger;'>Хинта Хин яй</span><br/>
<span style='font-size: larger;'> 				<br/>
<b>Пляж Большого Будды / Пляж Банг По / Пляж Бо Пхут / Пляж  Маенам</b><br/>
Эти пляжи расположены на Севере острова Самуй, здесь тоже  мягкий песок и отличное море. Эти пляжи более тихие и  спокойные.<br/>
<br/>
<b>Пляж Чонгмон (Choengmon) </b><strong><br/>
</strong>Пляж Чонгмон находится на северо-востоке острова. Это отличный пляж для семейного отдаха, здесь же предпочитают селиться иностранцы, живущие в Таиланде по долгу. Многие считают этот пляж самым красивым на острове.<br/>
</span></p>"
      ServicesPage.create :title => "Наши услуги",
        :body => "<p><span style='font-size: larger;'>Мы подробно расскажем о вашем будещем путешествии, ответим на все ваши вопросы в нашем офисе и оформим страховку.<br/>
Найдем и купим авиабилеты на удобные для вас даты. На Самуи можно добраться с пересадкой в Таиланде (самолеты летают из Банкока на остров каждые 40 минут). <br/>
Водитель будет встречать вас в аэропорту Самуи и доставит вас до виллы. Там вас встретит вилла-менеджер, который расскажет все о вилле, а так же будет в дальнейшем решать все вопросы, связанные с проживанием и исполнять все пожелания гостей. Он же организует экскурсии по острову и на соседние острова Ко Пханган и Ко Тао.<br/>
</span></p>"
      
      TravellingPage.create :title => "Путешествие с детьми",
        :body => "<p><!--StartFragment--></p>
<p class='MsoNormal'><span style='font-size: 14px;' class='Apple-style-span'><span style='font-family: Times; font-size: 16px;' class='Apple-style-span'>
<div style='margin: 0px; padding: 5px; background-color: rgb(255, 255, 255); font-family: Arial,Verdana,sans-serif; font-size: 12px;'>
<p> </p>
<p class='MsoNormal'><span style='font-size: larger;'>Если и есть место во всех смыслах отвечающее требованиям придирчивой мамочки с грудным (а потом уже и подрощенным) ребенком для комфортного и безопасного отдыха или долгосрочного проживания – то это Самуи.</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>Лучшее время для пребывания на этом острове как раз совпадает с нашей зимой (c декабря по апрель), а, соответственно, при длительном пребывании лишит вас массы проблем и забот, связанных с зимним временем в жизни ребенка.</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><b>Аренда дома на острове Самуи</b> – лучший способ позаботиться о первых месяцах жизни вашего ребенка.</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>Даже трехмесячный малыш чувствует перемену и полностью преображается, когда его место обитания из серого города переносится на берег моря, к солнцу и свежему воздуху.</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>Перечислять плюсы такого переселения можно бесконечно, но отметим самые главные:</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*24х часовое пребывание вашего ребенка на свежем воздухе в атмосфере абсолютного дружелюбия и заботы со стороны всего местного населения;</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*физическое развитие ребенка превзойдет все ваши ожидания, так как он сможет свободно перемещаться по суше и воде практически постоянно, упражняясь в ползании, хождении, беге, плавании, нырянии и так далее, а солнце укрепит его здоровье и иммунитет на долгое время вперед;</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*свежайшие продукты питания, <b>тайские фрукты</b>, овощи, морепродукты, а хорошее питание мамы – залог здоровья малыша;</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*отличное медицинское обслуживание, на острове находятся несколько госпиталей с современнейшим оборудованием и высококлассным персоналом;</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*безопасность пребывания как в социальном плане – более дружелюбного народа, чем тайцы, не найти нигде, а их отношение к детям вообще превосходит все ожидания, так и в плане природы – на побережье и в море нет опасных насекомых и рептилий, а также отсутствуют многие характерные для азиатских стран заболевания, никакая дополнительная вакцинация для отдыха и проживания на Самуи не нужна ни взрослым ни детям;</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*современные супермаркеты и торговые центры, где вы можете купить все необходимое для себя и ребенка (огромный выбор европейских товаров, а также товары от лучших производителей Японии, Таиланда и Сингапура), при этом по ценам гораздо более низким, чем в России и европейских странах;</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*развитая инфрастуктура обслуживания туристов – при желании, вы можете совершенно оградить себя от хозяйственных забот, так как существует масса ресторанов (подробнее про <b>рестораны на Самуи</b>)с возможностью еды на вынос, прачечных, которые в течении 24 часов выстирают и отгладят вашу одежду, пунктов прокатов машин, массажных салонов и прочее, прочее, причем все это за совсем скромные деньги;</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>*а самый главный плюс, что все время, которое освободится у вас благодаря всем вышеперечисленным пунктам вы сможете тратить на своего ребенка!</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>Также хочется добавить, что на острове есть масса развлечений для детей – игровые площадки с батутами, расположенные не только на суше, но и в воде; минизоопарки, качели-карусели, и даже музыкальная, балетная и художественная школы для детей от двух лет и старше.</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>А если вам понадобится помощь няни, повара, водителя или прислуги по дому или вы захотите, чтобы карапуз посещал деткий сад, то все это с легкостью вы также найдете на этом райском острове.</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>А результаты своего пребывания вы обязательно увидите в своем малыше – он наверняка будет здоровее, веселее и дружелюбнее многих своих сверстников и к тому же будет говорить на нескольких языках, так как на Самуи интернациональное сообщество людей, которые специально приезжают туда со всей европы для «зимовки» и дети общаются на нескольких языках одновременно.</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>А если вы приедете туда с грудничком, то он побьет все рекорды по первым переворотам, ползанию и шагам и обязательно удивит вас своим широким мировоззрением, с младенчества заложенным правильным местопребыванием, где просыпаясь вы слышите не гул зимнего мегаполиса, а морской прибой и видите не серую стену соседнего дома, а бесконечную синеву океана, уходящего в горизонт...</span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'><o:p> </o:p></span><span><o:p/></span></p>
<p class='MsoNormal'><span style='font-size: larger;'>Что хотите вы для вашего ребенка?</span><span><o:p/></span></p>
<p> </p>
<p><span style='font-size: larger;'> </span></p>
</div>
</span> </span></p>
<p> </p>
<p> </p>
		"
    ContactsPage.create :title => "Контакты",
      :body => "<p> </p>
<p> <span style='font-size: larger;'><span style='font-family: Helvetica;' class='Apple-style-span'>Наша почта: dreamydays@mail.ru</span></span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'> </p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><em><span style='color: rgb(128, 128, 128);'><span style='font-size: larger;'>Агентство DreamyDays в Москве:</span></span></em></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'><br/>
</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>ООО 'Дримидейс'</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>Газетный переулок, дом 5</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>Москва, Россия, 101999</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>Тел. (495) 629-51-31 и (495) 978 1543</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'><br/>
</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'><br/>
</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><em><span style='color: rgb(128, 128, 128);'><span style='font-size: larger;'>Агентство DreamyDays в Санкт-Петербурге:</span></span></em></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'><br/>
</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>1-й Предпортовый проезд 11Б, офис 402</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>Санкт-Петербург, Россия, 196247</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>Тел. (812) 969-55-12</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'><br/>
</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'><br/>
</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><em><span style='color: rgb(128, 128, 128);'><span style='font-size: larger;'>Офис на острове Самуи, Таиланд:</span></span></em></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'><br/>
</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>2/1 Moo 1, Tambon Maenam, Koh Samui,</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none; min-height: 14px;'><span style='font-size: larger;'>84320 Surrathani, Thailand</span></p>
<p style='margin: 0px; font-family: Helvetica; font-style: normal; font-variant: normal; font-weight: normal; font-size: 12px; line-height: normal; font-size-adjust: none; font-stretch: normal; -x-system-font: none;'><span style='font-size: larger;'>tel. 8(1066)843071435</span></p>
<p><span style='font-size: larger;'> </span></p>"
  end

  def self.down
  end
end
