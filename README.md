<div align="center">
  <img src="https://static.tildacdn.com/tild3263-3137-4236-a134-393766393235/389-3894115_finance-.png">
</div>

<h1 align="center">Math Trainer app</h1>
<div align="center">
  Приложение Math Trainer имеет практическую цель - тренировка счета четерых математических операций: деление, умножение, сложение и вычитание. Также есть и чуточка мотивации: возможность набрать баллы!
<h2 align="center">Установка и локальный запуск</h2>
<p align="center">
  Откройте терминал и склонируйте репозиторий:
</p>

  ```bash
  git clone https://github.com/t-anastasiia/MathTrainer.easyApp
  ```
<p align="center">
  Перейдите в папку со скопированным репозиторием:
</p>

  ```bash
  cd MathTrainer.easyApp
  ```
<p align="center">
  Запустите приложение:
</p>

  ```bash
  MathTrainer.xcodeproj
  ```

<h2 align="center">Работа приложения</h2>
<ol type="1" align="left">
  <li>После загрузки приложения открывается главное меню, где можно выбрать операцию, которую хочется потренировать (скриншот 1)</li>
  <li>После выбора операции, пользователь переход на другой View, где он видит выражение, 2 варианта ответа, счетчик и кнопку Back (скриншот 2)</li>
  <li>Правильный ответ при нажатии загорается зеленым на 0.3 секунды и счетчик увеличивается на 1, неправильный загорается соотвественно красным на те же 0.3сек, а счетчик не меняется,
    (для генерации неправильного ответа продумана специальная логика). В обоих случаях появляется новое выражение, для которого действуют те же правила (скриншот 3)</li>
  <li>При нажатии на кнопку Back пользователь возвращается в главное меню, где счетчик под соответствующей операцией обновлен (скриншот 4)</li>
  <li>Зайдя в ту же операцию, пользователь видит, что локальный счетчик обнулен. Баллы набираются по новой. Однако при выходе в главное меню, баллы за все "заходы" суммируются (скриншот 5/6)</li>
</ol>

<h2 align="center">Скриншоты</h2>
<div align="center">
  <img src="https://github.com/t-anastasiia/MathTrainer.easyApp/assets/121961781/c4b7602e-1864-48b4-9b56-c0470316166d" alt="скриншот 1" width="118" height="255">
  <img src="https://github.com/t-anastasiia/MathTrainer.easyApp/assets/121961781/406ec746-eb7c-4d72-9438-8563a3d64d2a" alt="скриншот 2" width="118" height="255">
  <img src="https://github.com/t-anastasiia/MathTrainer.easyApp/assets/121961781/1d8878e6-81f6-469d-b10b-f825a0ff5692" alt="скриншот 3" width="118" height="255">
  <img src="https://github.com/t-anastasiia/MathTrainer.easyApp/assets/121961781/f747c10a-1643-4dde-bd04-a7e885e57ffc" alt="скриншот 4" width="118" height="255">
  <img src="https://github.com/t-anastasiia/MathTrainer.easyApp/assets/121961781/56ae3ac6-c063-4a7d-938e-ec5f69cb316e" alt="скриншот 5" width="118" height="255">
  <img src="https://github.com/t-anastasiia/MathTrainer.easyApp/assets/121961781/f2947829-d9e0-4ff6-a6c1-ebe014ac38ec" alt="скриншот 6" width="118" height="255">
</div>


<h2 align="center">Приобретенные/улучшенные навыки и технологии:</h2>
<div align="center">
  <li>Архитектура MVC</li>
  <li>Сonstraints и Autolayout</li>
  <li>Передача данных между разными View</li>
  <li>Способы перехода между View (Seque)</li>
  <li>Конфигурация элементов (тени, цвета)</li>
</div>
