public class Cat {
    public string name = '';
    public string color = '';

    public Cat(string name1, string color1){
        name = name1;
        color = color1;
        // sleeping();
    }
    
    public Cat() {
        system.debug('Constructor called.');
    }

    public void sleeping(){
        system.debug(name + ' sleeping');
    }
}
