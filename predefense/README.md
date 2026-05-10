# Предзащита — слайды

Beamer-презентация для предзащиты магистерской диссертации.
Source: `predefense.tex`.

## Сборка

Из `vkr-masters/`:

```bash
make predefense          # один проход
make predefense-watch    # авто-перекомпиляция при изменениях
```

PDF попадает в `vkr-masters/predefense/predefense.pdf`.

## Тулчейн

Совпадает с тулчейном основного манускрипта (`xelatex` + `polyglossia`,
Times New Roman). Требуется TeX Live (или MiKTeX) с пакетами:

- `xelatex`
- `latexmk`
- Beamer-тема `metropolis`
  (Debian: `texlive-latex-extra`)
- Times New Roman (системный шрифт)

На Debian/Ubuntu:

```bash
sudo apt install texlive-xetex texlive-latex-extra texlive-fonts-extra latexmk
```

На macOS (MacTeX):

```bash
brew install --cask mactex-no-gui
```

## Структура

1. Контекст и мотивация
2. Постановка задачи
3. Связанные работы
4. Метод (общий вид + dDP)
5. Архитектура и обучение
6. Данные + бенчмарки
7. Инфраструктура
8. Текущий статус и план

Перед финальной сборкой заполнить плейсхолдеры на титульном слайде:
`<Имя Автора>` и `<Название Университета / Факультета>`.

## Иллюстрации

Все диаграммы — TikZ inline. Для растровых вкладок класть в
`predefense/figures/` и подключать через
`\includegraphics{figures/<name>}`.
