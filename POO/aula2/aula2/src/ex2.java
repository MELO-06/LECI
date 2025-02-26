import java.util.Scanner;

public class ex2 {
    public static void main(String[] args) {
        Scanner scanner = new Scanner(System.in);

        System.out.println("Valor de x1:");
        double x1 = scanner.nextDouble();

        System.out.println("Valor de x2:");
        double x2 = scanner.nextDouble();

        System.out.println("Valor de y1");
        double y1 = scanner.nextDouble();

        System.out.println("Valor de y2");
        double y2 = scanner.nextDouble();

        scanner.close();
        double distancia = Math.sqrt(Math.pow(x2 - x1, 2) + Math.pow(y2 - y1, 2));
        System.out.printf("A distância entre os pontos p1(%.2f; %.2f) e p2(%.2f; %.2f) é: %.2f%n", 
        x1, y1, x2, y2, distancia);
    }
}
