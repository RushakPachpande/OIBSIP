package oasis.infobyte.util;

import java.text.SimpleDateFormat;
import java.util.Date;

public class Date_Time {
    
    public static void main(String[] args) {
        System.out.println(new Date_Time().getDateTime());
    }
    
    public String getDateTime() {
        SimpleDateFormat sdf = new SimpleDateFormat("dd/MM/yyyy [HH:mm]");
        return sdf.format(new Date());
    }
}