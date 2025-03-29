# Прикольно
- Интересная задумка
- Хорошая структура кода
- Наличие комментариев
- Юзер френдли управление
- Stop embarrassing yourself and go train


# Не прикольно

- При нескольких запусках игры стек переполняеться строками из-за не оптимального испоьзования(сохранять текст в переменную)

![alt text](review_images/image-8.png)

- Ошибка выхода за предел кругом ![](review_images/image.png) 
![alt text](review_images/image-9.png)
- в 50 % запусков невозможно пройти игру (при нажатие кнопки в пол стрелки платформа не успевает доехать)
- Отсутвие валидации на строки на 0 значени, на значения больше предела ![alt text](review_images/image-1.png)
![alt text](review_images/image-5.png)
![alt text](review_images/image-2.png)
![image](https://github.com/user-attachments/assets/1a3c45ed-daf1-40e2-8072-d60097d4c0f3)


- Блоки стераються на не исчезают

![alt text](review_images/image-4.png)
![alt text](review_images/image-6.png)
![alt text](review_images/image-7.png)

- Лишняя проверка на выход
```C#
		while (~exit) {
			if (Keyboard.keyPressed() = 140)  { let exit = true; }
			do counter.draw();
			do ball.move();
			do paddle.move();
			do checkAllConditions();
		}
		if (exit) { // лишняя проверка
			do dispose();
			do Screen.clearScreen();
            do Output.moveCursor(10,27);
	        do Output.printString("well go away :(");
			do waitRestart();
	    }
```
-  (0 < speed < 3) ложное описание в readme

# Предложение
- добавить не ломаемые стены, бонусы и музыку бере бе бара бара
