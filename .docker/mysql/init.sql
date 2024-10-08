SET NAMES utf8;

DROP DATABASE IF EXISTS my_db;

CREATE DATABASE IF NOT EXISTS my_db;

USE my_db;

CREATE TABLE IF NOT EXISTS posts (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    content TEXT NOT NULL,
    created_at DATETIME DEFAULT NULL
)ENGINE=innoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;

INSERT INTO posts (title, content) VALUES
(
 'Влияние природы на наше самочувствие',
 'В последние годы всё больше исследований подтверждают, что природа играет ключевую роль в нашем психическом и физическом здоровье. Проводя время на свежем воздухе, мы не только улучшаем своё настроение, но и снижаем уровень стресса, повышаем продуктивность и укрепляем иммунную систему. Одним из основных механизмов этого влияния является снижение уровня кортизола — гормона стресса. Исследования показывают, что даже короткая прогулка в парке или лесу может существенно снизить его уровень в организме. Зелёные насаждения и естественные пейзажи помогают расслабиться, способствуя выбросу серотонина, отвечающего за ощущение счастья. Кроме того, природа вдохновляет на творчество и улучшает когнитивные функции. Ученые утверждают, что нахождение на природе способствует более глубокому сосредоточению и улучшает способность к решению сложных задач. Это может быть особенно полезно для студентов и людей, работающих в творческих профессиях.'
),
(
    'Преимущества активного образа жизни',
    ' Активный образ жизни становится всё более популярным в современном мире, и это не случайно. Физическая активность играет ключевую роль в поддержании здоровья и общего благополучия. В этой статье рассмотрим основные преимущества активного образа жизни. Улучшение физического здоровья Регулярные физические нагрузки способствуют укреплению сердечно-сосудистой системы, улучшению обмена веществ и повышению иммунитета. Исследования показывают, что активные люди реже страдают от хронических заболеваний, таких как диабет, гипертония и ожирение. Психологическое благополучие Физическая активность положительно влияет на психическое здоровье. Во время упражнений в организме выделяются эндорфины — гормоны счастья, которые помогают уменьшить уровень стресса и тревожности. Люди, занимающиеся спортом, отмечают улучшение настроения и повышение уровня энергии.'
),
(
    'Искусство медитации: путь к внутреннему спокойствию',
    ' Медитация — это практика, которая существует уже тысячи лет и помогает людям достигать внутреннего спокойствия и гармонии. Она включает в себя различные техники, которые направлены на улучшение концентрации, снижение стресса и обретение ясности ума. Медитация — это практика, направленная на сосредоточение внимания и достижение состояния спокойствия ума. Существуют различные формы медитации: от внимательности (майндфулнесс) до трансцендентальной медитации, каждая из которых предлагает уникальные методы для достижения внутреннего равновесия. Научные исследования подтверждают, что регулярная практика медитации помогает снизить уровень стресса, улучшить качество сна и повысить общий уровень счастья. Медитация способствует развитию эмоциональной устойчивости, улучшает концентрацию и помогает справляться с негативными мыслями.'
),
(
    'Важность Чтения в Современном Мире',
    ' Чтение — это один из самых мощных инструментов, который мы можем использовать для развития и самосовершенствования. В век информации, когда знания становятся ключом к успеху, умение читать и анализировать текст приобретает особое значение. Развитие Критического Мышления Чтение различных материалов, от художественной литературы до научных статей, помогает развивать критическое мышление. Мы учимся анализировать, сопоставлять факты и формировать собственное мнение. Это особенно важно в современном мире, где нас ежедневно окружают потоки информации, и умение отличать правду от вымысла становится важным навыком.'
),
(
    'Здоровый Образ Жизни: Ключ к Долголетию и Благополучию',
    ' В современном мире, насыщенном стрессами и быстро меняющимися условиями, поддержание здорового образа жизни становится как никогда актуальным. Это не только вопрос физического здоровья, но и психологического благополучия. Физическая Активность Регулярная физическая активность — основа здорового образа жизни. Она помогает поддерживать оптимальный вес, укрепляет сердечно-сосудистую систему и улучшает обмен веществ. Даже простая прогулка на свежем воздухе или занятия спортом несколько раз в неделю могут значительно улучшить общее состояние здоровья. Правильное Питание Питание играет ключевую роль в нашем здоровье. Сбалансированная диета, богатая фруктами, овощами, цельными злаками и белками, помогает укрепить иммунную систему и повысить уровень энергии. Избегание переработанных продуктов и избытка сахара также способствует улучшению здоровья и самочувствия.'
);





CREATE TABLE IF NOT EXISTS user (
    id INT AUTO_INCREMENT PRIMARY KEY,
    name VARCHAR(255) NOT NULL,
    password VARCHAR(255) NOT NULL,
    phone VARCHAR(255) DEFAULT NULL,
    email VARCHAR(255) NOT NULL
)ENGINE=innoDB DEFAULT CHARSET=utf8mb4 AUTO_INCREMENT=1;