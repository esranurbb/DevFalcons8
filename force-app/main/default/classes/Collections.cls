public class Collections {
    public static string myList(integer x){
        list<string> LstMonth = new List<String>();
        string outputMonth;
        LstMonth.add('January');
        LstMonth.add('February');
        LstMonth.add('March');
        LstMonth.add('April');
        LstMonth.add('May');
        LstMonth.add('June');
        LstMonth.add('July');
        LstMonth.add('August');
        LstMonth.add('September');
        LstMonth.add('October');
        LstMonth.add('November');
        LstMonth.add('December');
        integer sizeOfList = LstMonth.size(); 
        if(x>0 && x<=sizeOfList){
            outputMonth = LstMonth[x-1];
        }else{
            outputMonth = 'Not a valid month.';
        }
        return outputMonth;
    }
}
