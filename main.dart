import "dart:io";

void printList(List list){
    for(int i =0;i<list.length~/3;i++){
        for(int j = 0; j < 3; j++){
            int currentNum = list[3 * i + j];
            if(currentNum ~/ 10 == 0) stdout.write("${currentNum}  ");
            else stdout.write("${currentNum} ");
        }
        print(" ");
    }
    print(" ");
}

void play_magicGame(){
    List<int> list1 = [1, 3, 5, 7, 9, 11, 13, 15, 17, 19, 21, 23, 25, 27, 29];
    List<int> list2 = [2, 3, 6, 7, 10, 11, 14, 15, 18, 19, 22, 23, 26, 27, 30];
    List<int> list3 = [4, 5, 6, 7, 12, 13, 14, 15, 20, 21, 22, 23, 28, 29, 30];
    List<int> list4 = [8, 9, 10, 11, 12, 13, 14, 15, 24, 25, 26, 27, 28, 29, 30];
    List<int> list5 = [16, 17, 18, 19, 20, 21, 22, 23, 24, 25, 26, 27, 28, 29, 30];
    List<List<int>> all_boxes = [list1, list2, list3, list4, list5];

    print("Welcone to the Magic Game! 😍\n");
    stdout.write("Please choose a number from 1 -> 30 (ifyou choose press enter): ");
    stdin.readLineSync();


    int sum = 0;

    for(int i= 0; i<5; i++){
        print("Is the number you chose in the following box?");
        printList(all_boxes[i]);
        String inChar = '';
        do{
            stdout.write("Y / N ? ");
            inChar = stdin.readLineSync()!.toLowerCase();
        }while(inChar != 'y' && inChar != 'n');
        if(inChar == 'y') sum += all_boxes[i][0];
        print(" ");
    }


    print("You Chose ${sum}");



}

void main() {
    int age;
    stdout.write("Please Enter your Age: ");
    age = int.parse(stdin.readLineSync()!);
    print(" ");
    if(age >= 10){
        play_magicGame();
    }
    else print("Sorry you are still young 😔");
}