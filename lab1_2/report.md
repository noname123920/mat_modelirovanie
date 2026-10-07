## Задача 1. Площадь поверхности кухонной вытяжки

**Дано:** кухонная вытяжка в форме усеченного конуса.

Обозначим: 
- (R) - радиус нижнего основания
- (r) - радиус верхнего основания (R > r)
- (h) - высота
- (l) - длина образующей

**Найти:** площадь поверхности (S).

**График:**
<svg width="500" height="500" viewBox="0 0 500 500">
  <defs>
    <marker id="arrowX" markerWidth="10" markerHeight="10" refX="5" refY="5" orient="auto">
      <path d="M0,0 L10,5 L0,10 z" fill="black"/>
    </marker>
    <marker id="arrowStart" markerWidth="10" markerHeight="10" refX="5" refY="5" orient="auto">
      <path d="M10,0 L0,5 L10,10 z" fill="black"/>
    </marker>
  </defs>
  <g transform="translate(60, 0)">
  <polygon points="50,350 250,350 210,150 90,150" fill="none" stroke="black" stroke-width="2"/>
  <ellipse cx="150" cy="350" rx="100" ry="25" fill="none" stroke="black" stroke-width="2"/>
  <ellipse cx="150" cy="150" rx="60" ry="15" fill="none" stroke="black" stroke-width="2"/>
  <line x1="250" y1="350" x2="210" y2="150" stroke="black" stroke-width="1.5"/>
  <text x="245" y="245" font-size="14" fill="black">l</text>
  <line x1="150" y1="150" x2="150" y2="350" stroke="black" stroke-width="1"/>
  <text x="158" y="250" font-size="14" fill="black">h</text>
  <text x="200" y="345" font-size="14" fill="black" text-anchor="middle">R</text>
  <text x="171" y="147" font-size="13" fill="black" text-anchor="middle">r</text>
  </g>
</svg>

Начнем с боковой поверхности конуса.

**Метод:** используем формулу площади поверхности вращения (пункт 6 из лекции):

$$
S = 2\pi \int_{a}^{b} |y| \sqrt{1 + (y')^2}\,dx
$$

**Система координат:** ось (Ox) направим по оси конуса.
Начало координат - в центре нижнего основания (радиус R).
Тогда образующая конуса - отрезок прямой от точки (0; R) до точки (h; r).

**Уравнение образующей.**
Прямая проходит через точки 
(0; R) и (h; r).

Уравнение прямой через две точки:

$$
\frac{y - R}{r - R} = \frac{x - 0}{h - 0}
$$

Отсюда:

$$
y = R + \frac{r - R}{h}\,x
$$

или, что то же самое:
$$
y = R - \frac{R - r}{h}\,x, \quad x \in [0;h]
$$

**Производная:**
$$
y' = -\frac{R - r}{h}
$$
(константа, от (x) не зависит).


**Подстановка в формулу:**

$$
S = 2\pi \int_{0}^{h} y \sqrt{1 + (y')^2}\,dx
$$

Подставляем 

$$ 
(y = R - \dfrac{R - r}{h}x)
$$ 
и 
$$
(y' = -\dfrac{R - r}{h}) 
$$

Что получим: 
$$
S = 2\pi \int_{0}^{h} \left(R - \frac{R - r}{h}x\right) \sqrt{1 + \left(-\frac{R - r}{h}\right)^2}\,dx
$$

Множитель 
$$
\sqrt{1 + \left(-\dfrac{R - r}{h}\right)^2}
$$ 

это константа, выносим его:
$$
S = 2\pi \sqrt{1 + \left(-\frac{R - r}{h}\right)^2} \int_{0}^{h} \left(R - \frac{R - r}{h}x\right) dx
$$

**Вычисляем этот интеграл:**
$$
\int_{0}^{h} \left(R - \frac{R - r}{h}x\right) dx = \left[ Rx - \frac{R - r}{h} \cdot \frac{x^2}{2} \right]_{0}^{h}
$$

$$
= Rh - \frac{R - r}{h} \cdot \frac{h^2}{2}

=Rh - \frac{(R - r)h}{2}
$$

Под общей дробью запишем:

$$
\frac{2Rh - Rh + rh}{2}
= \frac{Rh + rh}{2}
= \frac{h(R + r)}{2}
$$

**Подставляем в (S):**
$$
S = 2\pi \sqrt{1 + \left(\frac{ R - r}{h}\right)^2} \cdot \frac{h(R + r)}{2}
$$

Сократим двойку:
$$
S = \pi h (R + r) \sqrt{1 + \left(\frac{R - r}{h}\right)^2}
$$

**Упростим выражение под корнем:**
$$
h\sqrt{1 + \left(\frac{R - r}{h}\right)^2}
=h\sqrt{\frac{h^2 + (R - r)^2}{h^2}}
=h \cdot \frac{\sqrt{h^2 + (R - r)^2}}{h}
=\sqrt{h^2 + (R - r)^2}
$$

**Итоговая формула:**
$$
S_{\text{бок}} = \pi (R + r) \sqrt{h^2 + (R - r)^2}
$$

это площадь боковой поверхности усеченного конуса.

**Чтобы получить полную площадь поверхности:**

$$
S_{\text{полн}} = S_{\text{бок}} + S_{\text{нижн}} + S_{\text{верхн}}
$$

где:

$$
S_{\text{нижн}} = \pi R^2 \quad \text{(нижнее основание, радиус } R\text{)}
$$

$$
S_{\text{верхн}} = \pi r^2 \quad \text{(верхнее основание, радиус } r\text{)}
$$


## Задача 2. Работа насоса по перекачиванию жидкости

**Дано:**

- Высота цилиндрической части: (H = 30 см = 0,3 м)

- Диаметр полусферического дна: (D = 20 см)

- Радиус полусферы: (R = 10 см = 0,1 м)

- Плотность жидкости: ($\rho \approx$ 1000 кг/м^3)

- Ускорение свободного падения: (g = 9,8 м/с^2)

**График:**
<svg width="400" height="500" viewBox="0 0 400 500">
  <defs>
    <marker id="arrowX" markerWidth="10" markerHeight="10" refX="5" refY="5" orient="auto">
      <path d="M0,0 L10,5 L0,10 z" fill="black"/>
    </marker>
    <marker id="arrowStart" markerWidth="10" markerHeight="10" refX="5" refY="5" orient="auto">
      <path d="M10,0 L0,5 L10,10 z" fill="black"/>
    </marker>
    <clipPath id="topOnly">
      <rect x="0" y="0" width="400" height="329"/>
    </clipPath>
  </defs>
  <g transform="translate(40, 30)">
    <line x1="200" y1="80" x2="200" y2="430" stroke="black" stroke-width="1" stroke-dasharray="8,4"/>
    <rect x="100" y="80" width="200" height="250" fill="none" stroke="black" stroke-width="2" clip-path="url(#topOnly)"/>
    <ellipse cx="200" cy="80" rx="100" ry="25" fill="none" stroke="black" stroke-width="2"/>
    <text x="245" y="325" font-size="14" fill="black" text-anchor="middle">R</text>
    <line x1="200" y1="330" x2="300" y2="330" stroke="black" stroke-width="1.5"/>
    <ellipse cx="200" cy="330" rx="100" ry="25" fill="none" stroke="black" stroke-width="2" stroke-dasharray="5,5"/>
    <path d="M100,330 A100,100 0 0 0 300,330" fill="none" stroke="black" stroke-width="2"/>
  </g>
  <line x1="360" y1="110" x2="360" y2="360" stroke="black" stroke-width="1" marker-start="url(#arrowStart)" marker-end="url(#arrowX)"/>
  <text x="370" y="240" font-size="16" fill="black">H</text>
</svg>

**Метод дифференциала:**

Согласно лекции, объем тела можно найти как
$$
V = \int S(x)\,dx
$$

где S(x) - площадь параллельного сечения.

Применим этот прием к работе. Мысленно разобъем жидкость на тонкие горизонтальные "слои ( то что между двумя сечениями получается )" толщиной (dx). Слой на глубине (x) имеет объем (dV = S(x)dx) и массу (dm = $\rho\, dV$).

Работа по подъему этого слоя на высоту (x):

$$
dA = \rho g x\,dV
$$

Суммируя по всем слоям, получаем:
$$
A = \rho g \int x\,dV
$$

**Геометрия:**

Ось (x) направлена вниз от верхнего основания цилиндра:

- верх цилиндра: (x = 0)
- низ цилиндра: (x = H)

**Сечение:**

Цилиндр имеет постоянный радиус (R), поэтому площадь сечения: 

$$
S(x) = \pi R^2
$$

не зависит от (x).

**Элемент объема:**

$$
dV = S(x)\,dx = \pi R^2\,dx
$$

**Работа:**

Подставляем в общую формулу:

$$
A_{\text{цилиндр}} = \rho g \int_0^H x \cdot \pi R^2 \,dx
$$

Выносим постоянные:

$$
A_{\text{цилиндр}} = \rho g \pi R^2 \int_0^H x\,dx
$$

Считаем интеграл:

$$
\int_0^H x\,dx = \frac{H^2}{2}
$$

Значит:
$$
A_{\text{цилиндр}} = \rho g \pi R^2 \frac{H^2}{2}
$$

**Работа для полусферической части:**

Полусфера находится ниже цилиндра.

Глубина (x) меняется от (H) до (H + R).

Введем новую переменную (глубина внутри полусферы):

t = x - H

t = 0 - на границе цилиндра и полусферы

t = R - на самом дне полусферы

**Сечение:**

Радиус круга который получится, если разрезать полусферу горизонтальной плоскостью на глубине t:

$$
r(t) = \sqrt{R^2 - t^2}
$$

**Площадь сечения полусферы:**
Сечение - круг радиуса (r(t)), поэтому его площадь:

$$
S(t) = \pi r^2 = \pi (R^2 - t^2)
$$

**Элемент объема полусферы:**

Тонкий слой толщиной (dt) на глубине (t) имеет объем:

$$
dV = S(t)\,dt = \pi (R^2 - t^2)\,dt
$$

Полная глубина цилиндра начинается от верха цилиндра (H) и равна:

x = H + t

**Работа по подъему слоя:**

$$
dA = \rho g x\,dV = \rho g (H + t) \cdot \pi (R^2 - t^2)\,dt
$$

Полная работа для полусферы:

Суммируем по всем слоям, (t) меняется от 0 до (R):

$$
A = \rho g \pi \int_0^R (H + t)(R^2 - t^2)\,dt
$$

Раскроем скобки: 

$$
(H + t)(R^2 - t^2) = H(R^2 - t^2) + t(R^2 - t^2)
$$

Интеграл получается таким:

$$
A = \rho g \pi \left[ H \int_0^R (R^2 - t^2)\,dt + \int_0^R t(R^2 - t^2)\,dt \right]
$$

Первый интеграл:

$$
\int_0^R (R^2 - t^2)\,dt
$$

Интегрируем его по слагаемым:

$$
\int_0^R R^2\,dt = R^3
$$

$$
\int_0^R t^2\,dt = \frac{R^3}{3}
$$

$$
\int_0^R (R^2 - t^2)\,dt = R^3 - \frac{R^3}{3} = \frac{2}{3}R^3
$$

Второй интеграл:

$$
\int_0^R t(R^2 - t^2)\,dt
$$

Раскрываем скобки:

$$
= \int_0^R (R^2 t - t^3)\,dt
$$

Интегрируем его по слагаемым:

$$
\int_0^R R^2 t\,dt = \frac{R^4}{2}
$$

$$
\int_0^R t^3\,dt = \frac{R^4}{4}
$$

Вычитаем:

$$
\int_0^R (R^2 t - t^3)\,dt = \frac{R^4}{2} - \frac{R^4}{4} = \frac{R^4}{4}
$$

**Итог ( соберем два интеграла вместе ):**

$$
A = \rho g \pi \left( H \cdot \frac{2}{3}R^3 + \frac{R^4}{4} \right)
$$

Окончательно:

$$
A = \rho g \pi \left( \frac{2}{3} H R^3 + \frac{R^4}{4} \right)
$$

Общая работа:

A = Работа для цилиндра + Работа для полусферы


$$
A = \rho g \pi \left( \frac{R^2 H^2}{2} + \frac{2}{3} H R^3 + \frac{R^4}{4} \right)
$$

Подставив и посчитав всё, должно получиться примерно *20,78 Джоулей*.
