# encoding: utf-8

# PRODUCTS
Product.delete_all

# English products
Product.create(:title => 'Web Design for Developers',
  :description => 
    %{<p>
        <em>Web Design for Developers</em> will show you how to make your
        web-based application look professionally designed. We'll help you
        learn how to pick the right colors and fonts, avoid costly interface
        and accessibility mistakes -- your application will really come alive.
        We'll also walk you through some common Photoshop and CSS techniques
        and work through a web site redesign, taking a new design from concept
        all the way to implementation.
      </p>},
  :image_url =>   '/assets/wd4d.jpg',    
  :price => 42.95,
  :locale => 'en')
# . . .
Product.create(:title => 'Programming Ruby 1.9',
  :description =>
    %{<p>
        Ruby is the fastest growing and most exciting dynamic language
        out there. If you need to get working programs delivered fast,
        you should add Ruby to your toolbox.
      </p>},
  :image_url => '/assets/ruby.jpg',
  :price => 49.50,
  :locale => 'en')

Product.create(:title => 'Rails Test Prescriptions',
  :description => 
    %{<p>
        <em>Rails Test Prescriptions</em> is a comprehensive guide to 
        testing Rails applications, covering Test-Driven Development 
        from both a theoretical perspective (why to test) and from a 
        practical perspective (how to test effectively). It covers the 
        core Rails testing tools and procedures for Rails 2 and Rails 3, 
        and introduces popular add-ons, including Cucumber, Shoulda, 
        Machinist, Mocha, and Rcov. 
      </p>},
  :image_url => '/assets/rtp.jpg',
  :price => 43.75,
  :locale => 'en')
# . . .
#Spanish products
Product.create(:title => 'Diseño Web para desarrolladores',
  :description => 
    %{<p>
        <em>Diseño Web para desarrolladores</em> le mostrará cómo hacer que su
        aplicación basada en web diseñada profesionalmente mirar. Nosotros le ayudaremos
        aprender a elegir los colores y fuentes, evitar la interfaz de costosos
        y errores de accesibilidad - una aplicación realmente va a cobrar vida.
        También vamos a caminar a través de algunos comunes de Photoshop y las técnicas de CSS
        y trabajar a través de un rediseño del sitio web, tomando un nuevo diseño desde el concepto
        todo el camino a la aplicación.
      </p>},
  :image_url =>   '/assets/wd4d.jpg',    
  :price => 42.95,
  :locale => 'es')
# . . .
Product.create(:title => 'Programación Ruby 1.9',
  :description =>
    %{<p>
        Ruby es el lenguaje más rápido crecimiento y emocionante más dinámico
        por ahí. Si usted necesita para obtener los programas de trabajo entregado rápido,
        se debe añadir a Ruby a su caja de herramientas.
      </p>},
  :image_url => '/assets/ruby.jpg',
  :price => 49.50,
  :locale => 'es')
# . . .

Product.create(:title => 'Rails prescripciones de prueba',
  :description => 
    %{<p>
        <em>Rails prescripciones de prueba</em>  es una guía completa
         prueba de aplicaciones Rails, cubriendo Desarrollo basado en pruebas
         tanto desde el punto de vista teórico (¿por qué poner a prueba) y de una
         punto de vista práctico (cómo probar con eficacia). Se cubre el
         Rails principales herramientas de prueba y los procedimientos para Rails Rails 2 y 3,
         e introduce populares add-ons, como pepino, Shoulda,
         Maquinista, Mocha y Rcov.
      </p>},
  :image_url => '/assets/rtp.jpg',
  :price => 43.75,
  :locale => 'es')

#Russian products
Product.create(:title => 'Веб-дизайн для разработчиков',
  :description => 
    %{<p>
        <em>Веб-дизайн для разработчиков</em> покажет вам, как сделать ваше
        веб-приложение стильным. Мы поможем вам научиться подбирать цвета и 
        шрифты, избегать ошибок в интерфейсе и доступности - ваше веб-приложение
        обретёт новую жизнь. Также мы покажем вам технику использования Photoshop
        и CSS и проведём редизайн сайта от концепции до реализации.
      </p>},
  :image_url =>   '/assets/wd4d.jpg',    
  :price => 42.95,
  :locale => 'ru')
# . . .
Product.create(:title => 'Программирование в Ruby 1.9',
  :description =>
    %{<p>
        Ruby - быстро развивающийся и захватывающий язык программирования.
        Если вы хотите, чтобы ваши программы писались быстро и работали стабильно - 
        Ruby будет отличным инструментом для вас
      </p>},
  :image_url => '/assets/ruby.jpg',
  :price => 49.50,
  :locale => 'ru')
# . . .

Product.create(:title => 'Рецепты тестирования в Rails',
  :description => 
    %{<p>
        <em>Рецепты тестирования в Rails</em>  - всестороннее руководство по 
        тестированию приложений Rails, раскрывавающее тему TDD как с теоретической
        (зачем тестировать), таки с практической(как тестировать эффективно).
        В нём рассказывается о встроенных в Rails инструментах и методиках в 
        Rails 2 и Rails 3, а также даётся введение в популярные дополнения, такие как
        Cucumber, Shoulda, Machinist, Mocha и Rcov.
      </p>},
  :image_url => '/assets/rtp.jpg',
  :price => 43.75,
  :locale => 'ru')



#PAYMENT_TYPES
PaymentType.delete_all
PaymentType.create(:name => "Check", locale: "en")
PaymentType.create(:name => "Credit card", locale: "en")
PaymentType.create(:name => "Purchase order", locale: "en")

PaymentType.create(:name => "Jaque", locale: "es")
PaymentType.create(:name => "Tarjeta de crédito", locale: "es")
PaymentType.create(:name => "Order de compra", locale: "es")

PaymentType.create(:name => "Чек", locale: "ru")
PaymentType.create(:name => "Кредитная карта", locale: "ru")
PaymentType.create(:name => "Наличные", locale: "ru")

#USERS
User.delete_all
User.create!(  name: "Alex Teut", 
              email: "jaturken@gmail.com",
              password: "jaturken",
              password_confirmation: "jaturken"
              )
#role cannot be mass-assigned, so all non-default values creates in this way:
@admin = User.find_by_name("Alex Teut")
@admin.role = "admin"
@admin.save!

User.create!(  name: "User", 
              email: "user@gmail.com",
              password: "useruser",
              password_confirmation: "useruser")

#EXCHANGE_RATES
ExchangeRate.delete_all
ExchangeRate.create(name: "dollar", rate: 1, locale: "en", sign: "$")
ExchangeRate.create(name: "euro", rate: 1.4, locale: "es", sign: "€")
ExchangeRate.create!(name: "rouble", rate: 0.000125, locale: "ru", sign: "р")