package MyClass;

import java.util.ArrayList;

public class ArrayListMethod {
    public static void main(String[] args) {
        ArrayList<String> list = new ArrayList<>();
        list.add("赵又廷");
        list.add("柳岩");
        System.out.println(list.add("李小璐"));
        for (int i = 0; i < list.size(); i++) {
            System.out.println(list.get(i));
        }
    }

    
}