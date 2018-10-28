$(document).ready(function() {

    /* For custom file inputs
            Based on code
            by Osvaldas Valutis, www.osvaldas.info (Available for use under the MIT License)
            and adapted for our project usage
    */
    $( '.file' ).each( function() {
        var $input   = $( this ).find('.file__input'),
            $caption = $( this ).find( '.file__inner-caption' ),
            captionVal = $caption.html();

        $input.on( 'change', function( e ) {
            var fileName = '';

            if( this.files && this.files.length > 1 )
                fileName = ( this.getAttribute( 'data-multiple-caption' ) || '' ).replace( '{count}', this.files.length );
            else if( e.target.value )
                fileName = e.target.value.split( '\\' ).pop();

            if( fileName )
                $caption.html( fileName );
            else
                $caption.html( captionVal );
        });

    });

    setTimeout(function() {

       $("[data-notify-hide]").fadeOut(400); 
        
    }, 1500);

    $("[data-notify-hide]").dblclick(function() {
        $(this).fadeOut(400);
    });

    // Delete img
    $('#button--remove').on('click', function() {

        $('.delete-description').toggleClass('hidden');
    });

    // Плавная прокрутка
    $("a[href='#comments']").click(function() {
          $("html, body").animate({
             scrollTop: $($(this).attr("href")).offset().top + "px"
          }, {
             duration: 400,
             easing: "swing"
          });
          return false;
       })

    // initMap() - функция инициализации карты
    function initMap() {

        // Координаты центра на карте. Широта: 56.2928515, Долгота: 43.7866641
        // var centerLatLng = new google.maps.LatLng(55.751227, 37.622932);
        var moscow = { lat: 55.684207, lng: 37.888492 };

        // Создаем карту внутри элемента #map
        var myMap = new google.maps.Map(document.getElementById("map"), {
            center: moscow,
            zoom: 13,
            disableDefaultUI: true,
            styles: [
                {
                    "featureType": "administrative",
                    "elementType": "labels.text.fill",
                    "stylers": [
                        {
                            "color": "#444444"
                        }
                    ]
                },
                {
                    "featureType": "landscape",
                    "elementType": "all",
                    "stylers": [
                        {
                            "color": "#f2f2f2"
                        }
                    ]
                },
                {
                    "featureType": "poi",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "road",
                    "elementType": "all",
                    "stylers": [
                        {
                            "saturation": -100
                        },
                        {
                            "lightness": 45
                        }
                    ]
                },
                {
                    "featureType": "road.highway",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "simplified"
                        }
                    ]
                },
                {
                    "featureType": "road.arterial",
                    "elementType": "labels.icon",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "transit",
                    "elementType": "all",
                    "stylers": [
                        {
                            "visibility": "off"
                        }
                    ]
                },
                {
                    "featureType": "water",
                    "elementType": "all",
                    "stylers": [
                        {
                            "color": "#46bcec"
                        },
                        {
                            "visibility": "on"
                        }
                    ]
                }
            ]
        });

        // Описание маркера на карте
        var markerMoscow = new google.maps.Marker({
            position: moscow,
            map: myMap,
            title: 'Где-то здесь',
            icon: 'img/point.png'
        });

        // Задаем инфу для окна
        var contentString = '<div class="infowindow">' +
            '<h3>Москва, Люберцы</h3>' +
            '<p>Штаб-квартира Анатолия Булыги</p>' +
            '</div>';

        // Создаем объект информационного окна и помещаем его в переменную infoWindow
        var infoWindow = new google.maps.InfoWindow({
            content: contentString
        });

        markerMoscow.addListener("click", function () {
            // infoWindow.open - показывает информационное окно.
            // Параметр map - это переменная содержащие объект карты (объявлена ранее)
            // Параметр marker - это переменная содержащие объект маркера (объявлена ранее)
            infoWindow.open(myMap, markerMoscow);
        });
    }

    // Запуск карты
    initMap();
    // Ждем полной загрузки страницы, после этого запускаем initMap()
    google.maps.event.addDomListener(window, "load", initMap);


});