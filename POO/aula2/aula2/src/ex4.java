import java.util.LinkedList;
import java.util.Scanner;

public class ex4 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);
        System.out.println("Enter a number: ");
        double firstnumb = scanner.nextDouble();
        LinkedList<Double> list = new LinkedList<>();
        list.add(firstnumb);
        double nextnumb;
        int listlen;
        do {
            listlen = list.size();
            nextnumb = scanner.nextDouble();
            if (nextnumb > list.get(listlen-1)) {
                list.addLast(nextnumb);
            }
            else if (nextnumb < list.get(0)) {
                list.addFirst(nextnumb);
            }
            else {
                list.add(nextnumb);
            }
        } while (nextnumb !=firstnumb);
        double sum = list.stream().reduce(0.0, Double::sum);
        System.out.println("media = "+ (sum/listlen));
        System.out.println("valor max: "+ list.get(listlen-1));
        System.out.println("valor min: "+ list.get(0));
        scanner.close();
    }
}
