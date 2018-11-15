# accelerometer
El acelerómetro del dispositivo es comúnmente usado para mostrar al usuario una retroalimentación sobre el movimiento de su dispositivo y cuál es el cambio de velocidad en el desplazamiento que éste sufre.  En este proyecto debes realizar una aplicación que contenga una vista centrada en la pantalla y se mueva de acuerdo a los datos del acelerómetro instantáneamente al abrir la aplicación. Además, deberá tener dos botones que permitirán limitar el desplazamiento de la vista únicamente de forma horizontal o vertical respectivamente.  

Instrucciones  
Crear un nuevo proyecto para iOS de tipo SingleViewApplication llamado accelerometer.  
Crear una vista centrada en la escena principal y dos botones en la parte inferior: uno que diga Horizontal y otro que diga Vertical.  
Crear un singleton que maneje una instancia de CMMotionManager e incluya métodos para activarlo o desactivarlo.  
Hacer que el acelerómetro se active en el viewDidLoad y, cada vez que reciba dato, se actualice el movimiento de la vista con respecto a estos datos usando un CGAffineTransform.  
Crear una variable que indique si el movimiento será horizontal o vertical, de esta forma, antes de mover la vista, se debe verificar si esta variable indica que será horizontal, por lo que se debe ejecutar la acción de movimiento únicamente de forma horizontal, lo mismo aplica para la forma vertical.  
Crear un IBAction para cada botón donde se cambie la propiedad que indica si debe ser horizontal o vertical respectivamente.
