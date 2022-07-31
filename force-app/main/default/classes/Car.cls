public class Car {
   public string carColor = '';
   public string carName = ''; 
   private integer maxSpeedKmPerHour = 150;
   
   public void switchOn(){
      system.debug('Starting the car');
   }

   public void drive(){
      system.debug('driving ' + carName);
   }

   public void driveAtMaxSpeed(){
      string drivingDescription = 'Driving a ' + carColor + ' color  ' + carName + ' at ' + maxSpeedKmPerHour + ' km/h.';
      system.debug(drivingDescription);
   }


}
