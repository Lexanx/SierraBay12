
#### Список PRов:

- https://github.com/SierraBay/SierraBay12/pull/1717
<!--
  Ссылки на PRы, связанные с модом:
  - Создание
  - Большие изменения
-->

<!-- Название мода. Не важно на русском или на английском. -->
## Hardsuits

ID мода: HARDSUITS
<!--
  Название модпака прописными буквами, СОЕДИНЁННЫМИ_ПОДЧЁРКИВАНИЕМ,
  которое ты будешь использовать для обозначения файлов.
-->

### Описание мода

Порт спрайтов и функционала костюмов ВКД и ИКС, доступных на Infinity
- Добавляет более качественные спрайты войдсьютов и ИКС для унати
- Добавляет спрайты ИКС ЛЭКа для унати, таяра, скреллов
<!--
  Что он делает, что добавляет: что, куда, зачем и почему - всё здесь.
  А также любая полезная информация.
-->

### Изменения *кор кода*

- `code/game/machinery/suit_cycler_units.dm`:
  - `/obj/machinery/suit_cycler/engineering/var/available_modifications`
  - `/obj/machinery/suit_cycler/security/var/available_modifications`
  - `/obj/machinery/suit_cycler/pilot/var/available_modifications`
<!--
  Если вы редактировали какие-либо процедуры или переменные в кор коде,
  они должны быть указаны здесь.
  Нужно указать и файл, и процедуры/переменные.

  Изменений нет - напиши "Отсутствуют"
-->

### Оверрайды

- `mods/_master_files/maps/sierra/items/rigs.dm`:
  - `/obj/item/rig/exploration/var/chest_type`
  - `/obj/item/rig/exploration/var/boot_type`
  - `/obj/item/rig/exploration/var/glove_type`

<!--
  Если ты добавлял новый модульный оверрайд, его нужно указать здесь.
  Здесь указываются оверрайды в твоём моде и папке `_master_files`

  Изменений нет - напиши "Отсутствуют"
-->

### Дефайны

Отсутствуют
<!--
  Если требовалось добавить какие-либо дефайны, укажи файлы,
  в которые ты их добавил, а также перечисли имена.
  И то же самое, если ты используешь дефайны, определённые другим модом.

  Не используешь - напиши "Отсутствуют"
-->

### Используемые файлы, не содержащиеся в модпаке

- `packs/infinity/icons/obj/clothing/species/erosan/hats.dmi`
- `packs/infinity/icons/obj/clothing/species/erosan/suits.dmi`
<!--
  Будь то немодульный файл или модульный файл, который не содержится в папке,
  принадлежащей этому конкретному моду, он должен быть упомянут здесь.
  Хорошими примерами являются иконки или звуки, которые используются одновременно
  несколькими модулями, или что-либо подобное.
-->

### Авторы:

UEDHighCommand
<!--
  Здесь находится твой никнейм
  Если работал совместно - никнеймы тех, кто помогал.
  В случае порта чего-либо должна быть ссылка на источник.
-->