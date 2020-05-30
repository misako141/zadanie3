using System;
using static System.Math;

namespace zadanie3
{
    class Program
    {
        static void Main(string[] args)
        {
            int z1 = 0;
            do {
            z1 = int.Parse(Console.ReadLine()); 
            if (z1 == 1)
            {
                int[] s = new int[5] { 10, -2, 13, 4, 5 };
                int modul = 0;
                int index = 0;
                for (int i = 0; i < s.Length; i++){
                        if ((Abs(s[i])) < Abs(s[index]))
                        {
                            index = i;
                            modul = s[i]; 
                        }
                    }
                    Console.WriteLine("Мин число: " + modul + ", индекс: " + index);
            }
            else if (z1 == 2){
                int[] b = new int[10] { 1, 0, 1, 6, 5, 7, 3, 5, 6, 2};
                int k = 0;
                string a = "";
                for (int i = 0; i < b.Length; i++){
                        for (int j = 0; j < b.Length; j++){
                            if ((b[i] == b[j]) && (i != j)) k++;
                        }
                        if (k == 0){
                            a = a + b[i] + " ";
                            k = 0;
                        }
                        k = 0;
                    }
                    Console.WriteLine(a);
            }
            else if (z1 == 3){
                    int[] c = new int[10];
                    Random random = new Random();
                    Console.WriteLine("Массив: ");
                    for (int i = 0; i < c.Length; i++)
                    {
                        c[i] = random.Next(-100, 100);
                        Console.Write(c[i] + " ");
                    }
                    Console.WriteLine("\nПоложительные: ");
                    for (int i = 0; i < c.Length; i++)
                    {
                        if (c[i] < 0) {
                            c[i] = 0;
                        }
                        else {
                        Console.Write(c[i] + " ");
                        }
                    }
            }
        }
        while (z1 != 0);
    }
}    
