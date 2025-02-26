import java.util.Scanner;

public class ex3 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("valor do cateto 1");
        double cat1 = scanner.nextDouble();
        if (cat1 < 0) {
            do {
                System.out.println("insira um valor positivo");
                cat1 = scanner.nextDouble();
            } while (cat1 < 0);
        }

        double cat2 = scanner.nextDouble();
        if (cat2 < 0) {
            do {
                System.out.println("insira um valor positivo");
                cat2 = scanner.nextDouble();
            } while (cat2 < 0);
        }
        scanner.close();
        double hipotenusa = Math.sqrt(Math.pow(cat1, 2) + Math.pow(cat2, 2)) ;
        System.out.println("hipotenusa: " + hipotenusa);
    }
}
