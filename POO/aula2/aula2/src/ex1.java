public class ex1 {
    public static void main(String[] sec) {
        if (sec.length > 0) {
        int seconds = Integer.parseInt(sec[0]); 
        int hours = seconds / 3600;
        int remainingsec = seconds % 3600;
        int minutes = remainingsec / 60;
        remainingsec = remainingsec % 60;
        System.out.print(hours+ ":"+ minutes+ ":"+ remainingsec);
        }
        else {
            System.out.println("no arguments provided");
        }

    }
}
