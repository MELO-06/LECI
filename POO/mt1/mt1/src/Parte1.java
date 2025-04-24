import java.io.File;
import java.io.FileNotFoundException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;
import java.util.Scanner;

public class Parte1 {
    // -----------------------------------------------------
    //          !!! Não alterar este código !!!
    // -----------------------------------------------------
    private static int v1;
    private static List<Integer> v2 = new ArrayList<>();
    private static String v3;
    private static List<String> v4 = new ArrayList<>();
    // -----------------------------------------------------

    private static String type;

    public static void lerTeclado() {
        Scanner teclado = new Scanner(System.in);
        String input = teclado.nextLine().trim();

        if (input.matches("-?\\d+")) {
            type = "INT";
            v1 = Integer.parseInt(input);
        } else if (input.matches("([\\[\\](){}])?\\s*(-?\\d+[\\s,]+)*-?\\d+\\s*([\\[\\](){}])?")) {
            type = "LISTINT";
            input = input.replaceAll("[\\[\\](){}]", "").trim();
            for (String s : input.split("[,\\s]+")) {
                if (!s.isEmpty()) {
                    v2.add(Integer.parseInt(s));
                }
            }
        } else if (input.matches("([\\[\\](){}])?\\s*\"?[\\w\\p{L}]+\"?(\\s*[,\\s]+\"?[\\w\\p{L}]+\"?)*\\s*([\\[\\](){}])?")) {
            type = "LISTSTRING";
            input = input.replaceAll("[\\[\\](){}\"]", "").trim();
            v4.addAll(Arrays.asList(input.split("[,\\s]+")));
        } else {
            type = "STRING";
            v3 = input;
        }

        teclado.close();
    }

    public static void lerFicheiro() throws FileNotFoundException {
        File file = new File("inputs.txt");
        Scanner scanner = new Scanner(file);

        if (!scanner.hasNextLine()) {
            System.err.println("Ficheiro vazio.");
            scanner.close();
            return;
        }

        String tipo = scanner.nextLine().trim().toUpperCase();
        if (!scanner.hasNextLine()) {
            System.err.println("Ficheiro sem valor.");
            scanner.close();
            return;
        }

        String valor = scanner.nextLine().trim();

        switch (tipo) {
            case "INT":
                v1 = Integer.parseInt(valor);
                break;
            case "LISTINT":
                valor = valor.replaceAll("[\\[\\](){}]", "").trim();
                for (String s : valor.split("[,\\s]+")) {
                    if (!s.isEmpty()) {
                        v2.add(Integer.parseInt(s));
                    }
                }
                break;
            case "STRING":
                v3 = valor;
                break;
            case "LISTSTRING":
                valor = valor.replaceAll("[\\[\\](){}\"]", "").trim();
                v4.addAll(Arrays.asList(valor.split("[,\\s]+")));
                break;
            default:
                System.err.println("Tipo desconhecido: " + tipo);
                break;
        }

        scanner.close();
    }

    public static void imprimir() {
        System.out.println("INT");
        System.out.println(v1);
        System.out.println("LISTINT");
        System.out.println(v2);
        System.out.println("STRING");
        System.out.println(v3);
        System.out.println("LISTSTRING");
        System.out.println(v4);
    }

    public static void main(String[] args) throws FileNotFoundException {
        lerFicheiro();

        // lerTeclado();

        imprimir();
    }
}
