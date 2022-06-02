
import dao.FoodDAO;
import java.util.List;
import model.Food;

/*
 * Click nbfs://nbhost/SystemFileSystem/Templates/Licenses/license-default.txt to change this license
 * Click nbfs://nbhost/SystemFileSystem/Templates/Classes/Class.java to edit this template
 */

/**
 *
 * @author Quan Truong
 */
public class Test {
    public static void main(String[] args){
        FoodDAO dao = new FoodDAO(); 
        List<Food> list = dao.selectAllFood();
        for(Food food : list){
            System.out.print(food);
        }
    }
}
