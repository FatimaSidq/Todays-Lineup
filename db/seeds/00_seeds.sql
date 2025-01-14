-- users table seeds
INSERT INTO users (firstName, lastName, address, phone, email, password, is_admin)
VALUES
('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber', true),
('Fatima', 'Siddique','Lighthouse Labs','647.477.7850','fatimasidq@gmail.com', '123', true),
('Hamza', 'Sohaib', 'Lighthouse Labs','226.506.3565','hamzasohaib1998@gmail.com','123', true),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','goodwisheseveryone@gmail.com','123', true),
('Test1', 'User1', '','111-222-4444','t@t.com','123', false),
('Test2', 'User2', '','222-444-3333','tt@tt.com','123', false);


-- admins table seeds
INSERT INTO admins (firstName, lastName, address, phone, email, password, user_id)
VALUES ('labber', 'labber','Lighthouse Labs','123-456-7890','l@l.com', 'labber', 1),
('Fatima', 'Siddique','Lighthouse Labs','647.477.7850','fatimasidq@gmail.com', '123',2),
('Hamza', 'Sohaib', 'Lighthouse Labs','226.506.3565',' hamzasohaib1998@gmail.com','123', 3),
('Stellaris', 'Cano', 'Lighthouse Labs','647-704-8000','goodwisheseveryone@gmail.com','123', 4),
('Test', 'Employee', 'Address1','111-222-3333','t@t.com','123', 5);

-- generating the calendar table data for year 2022
INSERT INTO calendar (day_id, year, month, day, quarter, day_of_week, day_of_year, week_of_year)
(SELECT tstamp, 
EXTRACT(YEAR FROM tstamp),
EXTRACT(MONTH FROM tstamp),
EXTRACT(DAY FROM tstamp),
EXTRACT(QUARTER FROM tstamp),
EXTRACT(DOW FROM tstamp),
EXTRACT(DOY FROM tstamp),
EXTRACT(WEEK FROM tstamp)
FROM generate_series('2022-01-01'::timestamp, '2022-12-31', '1day'::interval) AS t(tstamp));


--seeds for events table
INSERT INTO events (title, location, url, created_by,
                     start_date, start_time, 
                     end_date, end_time, 
                     send_reminder_on)
VALUES
  ('HOPIN ACCOUNT SETUP Create My Hopin account', 
    'Online-Hopin','https://hopin.to', 3,
    '2022-02-21', '10:30:00',
    '2022-02-21', '13:30:00',
    NULL),
  ('Group Presentation Practice', 
    'Online-Zoom', 'https://zoom_link.com', 3,
    '2022-02-21', '15:30:00',
    '2022-02-21', '18:30:00',
     NULL),
  ('TECH REHEARSAL', 
    'Online-Hopin', 'https://hopin.to', 3,
    '2022-02-22','10:30:00',
    '2022-02-21','13:30:00',
    NULL),
  ('DRY RUN', 
    'Online-Hopin',
    'https://hopin.to', 3,
    '2022-02-23', '12:00:00',
    '2022-02-21', '14:30:00',
    NULL),
  ('DEMO DAY - Finals Project Presentation', 
    'Online-Hopin',
    'https://www.eventbrite.ca/e/national-demo-day-february-2022-tickets-267619125007', 3,
    '2022-02-24', '15:00:00',
    '2022-02-24', '18:30:00',
    NULL)
  ;


-- banners table seeds
INSERT INTO banners (location_full_image, location_for_nuggets_only, text_color)
VALUES
 (
'public/images/4k-ultra-hd-nature-wallpapers-grand.jpeg', '',''
 ),
 (
'public/images/4ksun.jpeg', '', ''
 ),
 (
'public/images/5k-yosemite-national-park-great-view-4k.jpeg','',''
 ),
 (
'public/images/beautiful-morning-sunrise-4k-gx.jpeg', '',''
 ),
 (
'public/images/aurora_southern_lights_wallpaper_hd_4k_by_sahibdm_ddbw9xm-pre.jpeg', '', ''
 ),
 (
'public/images/aurora-borealis-northern-lights-uhd-4k-wallpaper.jpeg','',''
 ),
 (
'public/images/aurora-borealis-purple.jpeg', '',''
 ),
 (
'public/images/aurora-borealis.jpeg', '', ''
 ),
 (
'public/images/aurora2.jpeg','',''
 ),
 (
'public/images/autumn-morning-fog-yosemite-5k.jpeg', '',''
 ),
 (
'public/images/beautiful-beach-sunset-4k-5r.jpeg', '', ''
 ),
 (
'public/images/beautiful-flowers.jpeg', '', ''
 ),
 (
'public/images/beautiful-nature-mountains-fog-trees-ze.jpeg', '', ''
 ),
 (
'public/images/beautiful-sunrise-view-5k.jpeg', '', ''
 ),
 (
'public/images/branch-painting-spring-cherry_blossom-7680x4320.jpeg', '', ''
 ),
 (
'public/images/daisy.jpeg', '', ''
 ),
 (
'public/images/fall-4k-ultra-hd-wallpaper.jpeg', '', ''
 ),
 (
'public/images/falls.jpeg', '', ''
 ),
 (
'public/images/Field-of-Flowers-hd-wallpapers.jpeg', '', ''
 ),
 (
'public/images/flowers5.jpeg', '', ''
 ),
 (
'public/images/galveston-island-sunrise-1.jpeg', '', ''
 ),
 (
'public/images/golden-sky-on-a-summer-day-3840x2160.jpeg', '', ''
 ),
 (
'public/images/images-landscape-4k.jpeg', '', ''
 ),
 (
'public/images/laguna-beach-seascape-long-exposure-5k.jpeg', '', ''
 ),
 (
'public/images/mountains-8k-clouds-sunset-nature.jpeg', '', ''
 ),
 (
'public/images/mountains-fog.jpeg', '', ''
 ),
 (
'public/images/mountains-landscape-nw.jpeg', '', ''
 ),
 (
'public/images/nature-good-morning-clipart-ppt.jpeg', '', ''
 ),
 (
'public/images/night-fury-wide.jpeg', '', ''
 ),
 (
'public/images/northern-lights-aurora-borealis-over-forest-uhd-4k.jpeg', '', ''
 ),
(
'public/images/northern-lights-green.jpeg', '', ''
 );


--seeds for nuggets_of_wisdom

INSERT INTO nuggets_of_wisdom (nugget_of_wisdom, quote_by, topic, more_info, banner_id) VALUES
('Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.', 'Herman Cain', 'success', '', 1),
('Success consists of getting up just one more time than you fall.', 'Oliver Goldsmith', 'success', '', 2),
('It does not matter how slowly you go as long as you do not stop.', 'Confucius', 'success', '', 3),
(E'When it is obvious that the goals cannot be reached, don\'t adjust the goals, adjust the action steps.', 'Confucius', 'success', '', 4),
(E'Behind every successful man there\'s a lot of unsuccessful years.', 'Bob Brown', 'success', '', 5),
('Hope teaches endurance and an eager anticipation of that which will become reality.', 'Simon J. Kistemaker', 'hope', '', 6),
(E'Hope is not an emotion; it\'s a way of thinking or a cognitive process.', 'Brene Brown', 'hope', '', 7),
('Most of the important things in the world have been accomplished by people who have kept on trying when there seemed to be no hope at all.', 'Dale Carnegie', 'hope', '', 8),
('Only a powerful soul can offer love and can afford to be humble. If we are weak, we become selfish. If we are empty, we take; but if we are full, we automatically give to all. That is our nature ', 'Dadi Prakashmani', 'love', '', 9),
('The way to get started is to quit talking and begin doing ', 'Walt Disney', 'initiative', '', 10),
('May your choices reflect your hopes, not your fears.', 'Nelson Mandela', 'hope', '', 11),
('Duty makes us do things well, but love makes us do them beautifully.', 'Phillips Brooks', 'love','', 12),
('A strong mind always hopes and has always cause to hope.', 'Thomas Carlyle', 'hope', '', 13),
('He who has health has hope, and he who has hope has everything.', 'Thomas Carlyle', 'hope', '', 14),
(E'We dream to give ourselves hope. To stop dreaming—well, that\'s like saying you can never change your fate.', 'Amy Tan', 'hope', '', 15),
(E'It\'s really a wonder that I haven\'t dropped all my ideals, because they seem so absurd and impossible to carry out. Yet I keep them, because in spite of everything, I still believe that people are really good at heart.', 'Anne Frank', 'hope', '', 16),
('Hope is a waking dream.', 'Aristotle', 'hope', '', 17),
('The world needs less heat and more light. It needs less of the heat of anger, revenge, retaliation, and more of the light of ideas, faith, courage, aspiration, joy, love, and hope.', 'Wilfred Peterson', 'hope', '', 18),
('I am prepared for the worst, but hope for the best.', 'Benjamin Disraeli', 'hope', '', 19),
('Tell me and I forget. Teach me and I remember. Involve me and I learn.', 'Benjamin Franklin', 'learning', '', 20),
('Never give up. Have hope. Expect only the best from life and take action to get it.', 'Catherine Pulsifer', 'hope', '', 21),
('Hope is important because it can make the present moment less difficult to bear. If we believe that tomorrow will be better, we can bear a hardship today.', 'Thich Nhat Hanh', 'hope', '', 22),
('Without hope men are only half alive. With hope they dream and think and work.', 'Charles Sawyer', 'hope', '', 23),
('The very existence of libraries affords the best evidence that we may yet have hope for the future of man.', 'T.S. Eliot', 'hope', '', 24),
('Our greatest glory is not in never falling, but in rising every time we fall.', 'Confucius', 'hope', '', 25),
('Life is really simple, but we insist on making it complicated.', 'Confucius', 'life', '', 26),
('Hope is being able to see that there is light despite all of the darkness.', 'Desmond Tutu', 'hope', '', 27),
(E'The best bridge between despair and hope is a good night\'s sleep.', 'E. Joseph Cossman', 'hope', '', 28),
('True happiness is not attained through self-gratification, but through fidelity to a worthy purpose.', 'Helen Keller.', 'happiness', '', 29),
('Just as despair can come to one only from other human beings, hope, too, can be given to one only by other human beings.', 'Elie Wiesel', 'hope', '', 30),
('Neither should a ship rely on one small anchor, nor should life rest on a single hope.', 'Epictetus', 'hope', '', 31),
('We have always held to the hope, the belief, the conviction that there is a better life, a better world, beyond the horizon.', 'Franklin D. Roosevelt', 'hope', '', 1),
('In fact, hope is best gained after defeat and failure, because then inner strength and toughness is produced.', 'Fritz Knapp', 'hope', '', 2),
('Hope means expectancy when things are otherwise hopeless.', 'G. K. Chesterton', 'hope', '', 3),
('Never deprive someone of hope; it may be all they have.', 'H. Jackson Brown Jr', 'hope', '', 4),
('It is characteristic of genius to be hopeful and aspiring.', 'Harriet Martieneau', 'hope', '', 5),
('The important thing is not that we can live on hope alone, but that life is not worth living without it.', 'Harvey Milk', 'hope', '', 6),
('Optimism is the faith that leads to achievement. Nothing can be done without hope and confidence.', 'Helen Keller', 'hope', '', 7),
('If we will be quiet and ready enough, we shall find compensation in every disappointment.', 'Henry David Thoreau', 'hope', '', 8),
('Hope is the last thing ever lost.', 'Italian proverb', 'hope', '', 9),
('Remember, hope is a good thing, maybe the best of things, and no good thing ever dies.', 'Stephen King', 'hope', '', 10),
('A positive statement propels hope toward a better future, it builds up your faith and that of others, and it promotes change.', 'Jan Dargatz', 'hope', '', 11),
('You cannot swim for new horizons until you have the courage to lose sight of the shore.', 'William Faulkner', 'hope', '', 12),
('We must accept finite disappointment but never lose infinite hope.', 'Martin Luther King Jr.', 'hope', '', 13),
('Hope lies in dreams, in imagination, and in the courage of those who dare to make dreams into reality.', 'Jonas Salk', 'hope', '', 14),
('He who does not hope to win has already lost.', 'Jose Joaquin Olmedo', 'hope', '', 15),
('The things you do for yourself are gone when you are gone, but the things you do for others remain as your legacy.', 'Kalu Ndukwe Kalu', 'hope', '', 16),
('As long as we have hope, we have direction, the energy to move, and the map to move by.', 'Lao Tzu', 'hope', '', 17),
('Strange as it may seem, I still hope for the best, even though the best, like an interesting piece of mail, so rarely arrives, and even when it does it can be lost so easily.', 'Lemony Snicket', 'hope', '', 18),
('All kids need is a little help, a little hope and somebody who believes in them.', 'Magic Johnson', 'hope', '', 19),
('You must not lose faith in humanity. Humanity is an ocean; if a few drops of the ocean are dirty, the ocean does not become dirty.', 'Mahatma Gandhi', 'hope', 'https://philosiblog.com/2012/10/31/you-must-not-lose-faith-in-humanity-humanity-is-an-ocean-if-a-few-drops-of-the-ocean-are-dirty-the-ocean-does-not-become-dirty/', 20),
('When I change, the world changes.', 'Brahma Baba', 'self-transformation', 'https://www.brahmakumaris.org/wisdom/essential-spirituality/from-spiritual-practice-to-spiritual-life?view=video&nodeRef=workspace://SpacesStore/36afeb9b-7c01-456c-9cac-b1017c1e9f48&ctg=all', 21),
('Spread love everywhere you go. Let no one ever come to you without leaving happier ', 'Mother Teresa', 'love', 'https://mindblood.com/spread-love-everywhere-you-go-let-no-one-ever-come-to-you-without-leaving-happier/', 22),
('The greatest glory in living lies not in never falling, but in rising every time we fall.', 'Nelson Mandela', 'perseverance', 'https://www.setquotes.com/the-greatest-glory-in-living-lies-not-in-falling-but-in-rising/', 23),
('Because we understand the value of money, we take care not to waste it. If we valued time, energy and positive thoughts, we would likewise economize. The result would be a life full of meaning and purpose.', 'Dadi Janki', 'time', 'https://www.hindu-blog.com/2018/09/dadi-janki-quotes-collection-of-108.html', 24),
('When we love, we always strive to become better than we are. When we strive to become better than we are, everything around us becomes better too.', 'Paulo Coelho', 'love', 'https://www.speakingtree.in/discussion/when-we-love-we-always-strive-to-become-better-than-we-are-when-we-strive-to-become-better-than-we-are-everything-around-us-becomes-better-too-paulo-coelho', 25),
('When you have lost hope, you have lost everything. And when you think all is lost, when all is dire and bleak, there is always hope.', 'Pittacus Lore', 'hope', 'https://www.relicsworld.com/pittacus-lore/when-you-have-lost-hope-you-have-lost-everything-and-when-you-author-pittacus-lore', 26),
('Hope is the pillar that holds up the world. Hope is the dream of a waking man.', 'Pliny the Elder', 'hope', 'https://www.quotespedia.org/authors/p/pliny-the-elder/hope-is-the-pillar-that-holds-up-the-world-hope-is-the-dream-of-a-waking-man-pliny-the-elder/', 27),
('I will love the light as it shows me the way, ', 'Og Mandino', 'perspective','https://www.brainyquote.com/quotes/og_mandino_140597', 28),
('Hope is the companion of power, and mother of success; for who so hopes strongly has within him the gift of miracles.', 'Samuel Smiles', 'hope', 'https://intentionalexcellence.com/2017/06/30/hope-is-the-companion-of-power-and-mother-of-success/', 1),
('If you are neutral in situations of injustice, you have chosen the side of the oppressor. If an elephant has its foot on the tail of a mouse and you say that you are neutral, the mouse will not appreciate your neutrality.','Desmond Tutu','neutrality','https://bspc.org/15-impactful-quotes-by-desmond-tutu/',2),
('The past is a source of knowledge, and the future is a source of hope. Love of the past implies faith in the future.', 'Stephen Ambrose', 'hope', 'https://www.brainyquote.com/quotes/stephen_ambrose_186012', 3),
(E'You may say I\'m a dreamer, but I\'m not the only one. I hope someday you\'ll join us. And the world will live as one.', 'John Lennon', 'hope', 'https://sites.psu.edu/avaseportfolio/2013/04/28/you-may-say-im-a-dreamer-but-im-not-the-only-one/', 4),
('Our fear must save our hope from swelling into presumption, and our hope must save our fear from sinking into despair.', 'Matthew Henry', 'hope', 'http://michaelcatt.com/2016/08/2611/', 5),
(E'Children are the world\'s most valuable resource and its best hope for the future.', 'John F. Kennedy', 'hope', 'https://www.goodreads.com/quotes/506105-children-are-the-world-s-most-valuable-resource-and-its-best', 6),
(E'There is some good in this world, and it\'s worth fighting for.', 'J.R.R. Tolkien', 'hope', 'https://www.goodreads.com/quotes/7601379-there-s-some-good-in-this-world-mr-frodo-and-it-s', 7),
('Love recognizes no barriers. It jumps hurdles, leaps fences, penetrates walls to arrive at its destination full of hope.', 'Maya Angelou', 'hope', 'https://philosiblog.com/2012/07/06/love-recognizes-no-barriers-it-jumps-hurdles-leaps-fences-penetrates-walls-to-arrive-at-it-destination-full-of-hope/', 8),
('This new day is too dear, with its hopes and invitations, to waste a moment on the yesterdays.', 'Ralph Waldo Emerson', 'hope', 'https://www.passiton.com/inspirational-quotes/8154-this-new-day-is-too-dear-with-its-hopes-and', 9),
('Hope and patience are two sovereign remedies for all, the surest reposals, the softest cushions to lean on in adversity.', 'Robert Burton', 'hope', 'https://quotefancy.com/quote/1713090/Robert-A-Burton-Hope-and-patience-are-two-sovereign-remedies-for-all-the-surest-reposals', 10),
('Never lose hope. Storms make people stronger and never last forever.', 'Roy T. Bennett', 'hope', 'https://www.quoteslyfe.com/quote/Never-lose-hope-Storms-make-people-stronger-2134', 11),
('Hope is itself a species of happiness, and, perhaps, the chief happiness which this world affords.', 'Samuel Johnson', 'hope', 'https://www.goodnewsnetwork.org/samuel-johnson-quote-about-hope/', 12),
('You can give without loving, but you can never love without giving. The great acts of love are done by those who are habitually performing small acts of kindness. We pardon to the extent that we love. Love is knowing that even when you are alone, you will never be lonely again. & great happiness of life is the conviction that we are loved. Loved for ourselves. & even loved in spite of ourselves', 'Victor Hugo', 'love','https://www.goodreads.com/quotes/440594-you-can-give-without-loving-but-you-can-never-love', 13),
('Love and compassion are necessities, not luxuries. Without them humanity cannot survive.', 'Dalai Lama', 'love','https://www.quotespedia.org/authors/d/dalai-lama/love-and-compassion-are-necessities-not-luxuries-without-them-humanity-cannot-survive-dalai-lama/', 14),
('The best and most beautiful things in this world cannot be seen or even heard, but must be felt with the heart.', 'Helen Keller', 'love','https://philosiblog.com/2013/07/29/the-best-and-most-beautiful-things-in-the-world-cannot-be-seen-or-even-touched-they-must-be-felt-with-the-heart/', 15),
('Give love and happiness and you will receive blessings. As a child I learned how important it is to remain happy and give everyone happiness. Our duty in life is to care for everyone and to share with everyone. Care, share and inspire. This is our duty in life.', 'Dadi Janki', 'Care', 'https://www.brahmakumaris.org/discovery/inspirations-dadi-janki?view=article&option=com_alfresco&articleId=ad46f8c7-d8e8-47f3-bc6b-251134d491df', 16),
('We are shaped and fashioned by what we love.', 'Johann Wolfgang von Goethe', 'love','https://philosiblog.com/2013/11/29/we-are-shaped-and-fashioned-by-what-we-love/', 17),
('Being deeply loved by someone gives you strength, while loving someone deeply gives you courage.', 'Lao Tzu', 'love','https://philosiblog.com/2011/08/24/being-deeply-loved-by-someone-gives-you-strength-while-loving-someone-deeply-gives-you-courage/', 18),
(E'You\'ve got to get up every morning with determination if you\'re going to go to bed with satisfaction.', 'George Horace Lorimer', 'success', 'https://www.inspiremore.com/quotes/youve-got-to-get-up-every-morning-with-determination-if-youre-going-to-go-to-bed-with-satisfaction/', 19),
('Success means having the courage, the determination, and the will to become the person you believe you were meant to be.', 'George Sheehan', 'success', 'https://quotation.io/page/quote/success-means-courage-determination-will', 20),
('There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.', 'Ray Goforth', 'success', 'https://due.com/blog/there-are-two-types-of-people-who-will-tell-you-that-you-cannot-make-a-difference-in-this-world-ray-goforth/', 21),
('The difference between a successful person and others is not a lack of strength, not a lack of knowledge, but rather a lack in will.', 'Vince Lombardi', 'success', 'https://www.brainyquote.com/quotes/vince_lombardi_127517', 22),
('There are no secrets to success. It is the result of preparation, hard work, and learning from failure.', 'Colin Powell', 'success', 'https://www.quotespedia.org/authors/c/colin-powell/there-are-no-secrets-to-success-it-is-the-result-of-preparation-hard-work-and-learning-from-failure-colin-powell/', 23),
(E'Success seems to be connected with action. Successful people keep moving. They make mistakes, but they don\'t quit.', 'Conrad Hilton', 'success', 'https://www.academyofhappylife.com/success-seems-connected-action-successful-people-keep-moving-make-mistakes-dont-quit/', 24),
(E'Striving for success without hard work is like trying to harvest where you haven\'t planted.', 'David Bly', 'success', 'https://www.passiton.com/inspirational-quotes/6243-striving-for-success-without-hard-work-is-like', 25),
('Shallow men believe in luck. Strong men believe in cause and effect.', 'Ralph Waldo Emerson', 'success', 'https://www.brainyquote.com/quotes/ralph_waldo_emerson_121133', 26),
('Knowing others is intelligence; knowing yourself is true wisdom. Mastering others is strength; mastering yourself is true power.', 'Lao Tzu', 'success', 'https://www.lifehack.org/535789/knowing-others-intelligence-knowing-yourself-true-wisdom', 27),
('Optimism is the one quality more associated with success and happiness that any other.', 'Brian Tracy', 'success', 'https://commonphilosopher.com/2019/08/13/optimism-is-the-one-quality-more-associated-with-success-and-happiness-than-any-other-brian-tracy/', 28),
('The secret of success is to do the common thing uncommonly well.', 'John D. Rockefeller Jr', 'success', 'https://www.goodreads.com/quotes/607758-the-secret-to-success-is-to-do-the-common-things', 29),
('Alone we can do so little; together we can do so much.', 'Helen Keller', 'collaboration','', 30),
(E'Many of life\'s failures are people who did not realize how close they were to success when they gave up.', 'Thomas A. Edison', 'success', 'https://www.sparkpeople.com/resource/quotes_translation.asp?id=80', 31),
(E'Your time is limited, so do not waste it living someone else life. Don\'t be trapped by dogma, which is living with the results of other people\'s thinking.','Steve Jobs', 'time', 'https://www.quotespedia.org/authors/s/steve-jobs/your-time-is-limited-so-dont-waste-it-living-someone-elses-life-steve-jobs/', 1),
('Learn from yesterday, live for today, hope for tomorrow. The important thing is not to stop questioning.', 'Albert Einstein', 'hope', 'https://www.quotespedia.org/authors/a/albert-einstein/learn-from-yesterday-live-for-today-hope-for-tomorrow-the-important-thing-is-not-to-stop-questioning-albert-einstein/', 2),
(E'Hard times don\'t create heroes. It is during the hard times when the \'hero\' within us is revealed.', 'Bob Riley', 'success', 'https://www.brainyquote.com/quotes/bob_riley_167773', 3),
(E'Happiness is that state of consciousness which proceeds from the achievement of one\'s values.', 'Ayn Rand.', 'happiness', 'https://ari.aynrand.org/quote-of-the-day-what-is-happiness/', 4),
(E'If being happy is important to you, try this instead of regretting all you lack, celebrate all you\'ve got.', 'Brian Vaszily.', 'happiness', 'https://www.powerofpositivity.com/quotes-on-being-happy-positivity/', 5),
('If one speaks or acts with a pure mind, happiness follows like a shadow.', 'Buddha.', 'happiness', 'https://www.pursuit-of-happiness.org/history-of-happiness/happiness-quotes/', 6),
('In order to become light and pure like an angel, we have to let go of all vices such as lust, anger, greed, attachment and ego.', 'Dadi Janki', 'light', '', 7),
('The happiness of your life depends upon the quality of your thoughts.', 'Marcus Aurelius', 'happiness', 'https://www.quotespedia.org/authors/m/marcus-aurelius/the-happiness-of-your-life-depends-upon-the-quality-of-your-thoughts-marcus-aurelius/', 8),
('Happiness is the secret to all beauty. There is no beauty without happiness.', 'Christian Dior.', 'happiness', 'https://www.goodreads.com/quotes/254692-happiness-is-the-secret-to-all-beauty-there-is-no', 9),
(E'Nobody really cares if you\'re miserable, so you might as well be happy.', 'Cynthia Nelms.', 'happiness', 'https://www.quotes.net/authors/Cynthia%20Nelms', 10),
('Seek for happiness and you will never find it. Seek righteousness and you will discover you are happy. It will be there without your knowing it, without your seeking it.', 'D. Martyn Lloyd-Jones.', 'happiness', 'https://harvest.org/resources/gregs-blog/post/the-pursuit-of-happiness/', 11),
('Only the development of compassion and understanding for others can bring us the tranquility and happiness we all seek.', 'Dalai Lama XIV.', 'happiness', 'https://www.huffpost.com/entry/developing-global-compass_b_8824348', 12),
(E'Being happy doesn\'t depend on any external conditions, it is governed by our mental attitude.', 'Dale Carnegie.', 'happiness', '', 13),
('Success is not final; failure is not fatal: It is the courage to continue that counts.', 'Winston S. Churchill', 'courage', 'https://www.quotespedia.org/authors/w/winston-churchill/success-is-not-final-failure-is-not-fatal-it-is-the-courage-to-continue-that-counts-winston-churchill/', 14),
('Love many things, for therein lies the true strength, and whosoever loves much performs much, and can accomplish much, and what is done in love is done well.', 'Vincent Van Gogh.', 'love', 'https://meaningin.com/vincent-van-gogh/love/quotes', 15),
('A calm and modest life brings more happiness than the pursuit of success combined with constant restlessness.', 'Albert Einstein.', 'happiness', 'https://www.bravethinkinginstitute.com/blog/life-transformation/einstein-theory-happiness', 16),
(E'People don\'t know what they are striving for. They waste themselves in senseless thrashing around for the sake of a handful of goods and die without realizing their spiritual wealth.', 'Alexandr Solzhenitsyn.', 'happiness', 'https://www.inspiringquotes.us/quotes/lWKt_Bo0OZ7u8', 17),
(E'Everyone wants to live on top of the mountain, but all the happiness and growth occurs while you\'re climbing it.', 'Andy Rooney.', 'happiness', 'https://quotefancy.com/quote/758435/Andy-Rooney-Everyone-wants-to-live-on-top-of-the-mountain-but-all-the-happiness-and', 18),
('Love yourself first and everything else falls into line. You really have to love yourself to get anything done in this world.', 'Lucille Ball.', 'love', 'https://www.brainyquote.com/quotes/lucille_ball_127076', 19),
('Darkness cannot drive out darkness: only light can do that. Hate cannot drive out hate: only love can do that.', 'Martin Luther King, Jr.', 'love', 'https://www.brainyquote.com/quotes/martin_luther_king_jr_101472', 20),
('Happiness is when what you think, what you say, and what you say are in harmony.', 'Mahatma Gandhi.', 'happiness', 'https://www.brainyquote.com/quotes/mahatma_gandhi_105593', 21),
('The power of positivity vanquishes the darkness of negativity', 'Dadi_Janki', 'positivity', 'http://www.dadijanki.org/wp/', 22),
('What seems to us as bitter trials are often blessings in disguise.', 'Oscar Wilde', 'hope', 'https://oscarwilde.com/', 23),
(E'You don\'t have to be great to start, but you have to start to be great.','Zig Ziglar', 'greatness', 'https://quotefancy.com/zig-ziglar-quotes', 24),
('Follow effective actions with quiet reflection. From the quiet reflection will come even more effective action.', 'Peter Drucker', 'success', 'https://www.thequotablecoach.com/follow-effective-action-with-quiet-reflection-from-the-quiet-reflection-will-come-even-more-effective-action/', 25),
(E'You can\'t change what\'s going on around you until you start changing what\'s going on within you.', 'Zig Ziglar', 'success', 'https://tinybuddha.com/wisdom-author/zig-ziglar/', 26),
('Yesterday I was clever, so I wanted to change the world. Today I am wise, so I am changing myself.', 'Rumi', 'success', 'https://www.osmquote.com/quote/rumi-quote-733752', 27),
('I alone cannot change the world, but I can cast a stone across the waters to create many ripples.', 'Mother Teresa', 'success', 'https://www.theskippingstone.com/blogs/news/i-alone-cannot-change-the-world-mother-teresa', 28),
('Some changes look negative on the surface but you will soon realize that space is being created in your life for something new to emerge.', 'Eckhart Tolle', 'success', 'https://themindsjournal.com/some-changes-look-negative-on-the-surface/', 29),
('The people who are crazy enough to think they can change the world are the ones who do.', 'Steve Jobs', 'success', 'https://www.quotery.com/quotes/people-crazy-enough-think-can', 30),
('There is change in all things. You yourself are subject to continual change and some decay and this is common to the entire universe.', 'Marcus Aurelius', 'success', 'http://meanttobehappy.com/there-is-change-in-all-things/', 31),
('Every great dream begins with a dreamer. Always remember, you have within you the strength, the patience, and the passion to reach for the stars to change the world.', 'Harriet Tubman', 'success', 'https://www.passiton.com/inspirational-quotes/7065-every-great-dream-begins-with-a-dreamer-always', 1),
('Just take any step, whether small or large. And then another and repeat day after day. It may take months, maybe years, but the path to success will become clear.', 'Aaron Ross', 'success', 'https://www.powerofpositivity.com/be-the-change-quotes-refuel-your-soul/', 2),
(E'To tolerate does not mean to die, but to live in everyone\'s heart with love. No matter how much against you someone is, even if you have to tolerate not once but ten times, nevertheless, the fruit of the power of tolerance is imperishable and sweet.', 'Daily Divine Thoughts', 'tolerance', 'https://dailydivinethoughts.blogspot.com/2017/05/thought-of-day-2052017.html', 3),
('For every minute you are angry you lose sixty seconds of happiness.', 'Ralph Waldo Emerson.', 'happiness', 'https://www.collabcounseling.com/blog/for-every-minute-youre-angry-do-you-lose-sixty-seconds-of-happiness', 4),
('God, grant me the serenity to accept the things I cannot change, the courage to change the things I can, and the wisdom to know the difference.', 'Reinhold Niebuhr.', 'happiness', 'https://www.quotespedia.org/authors/r/reinhold-niebuhr/god-grant-me-the-serenity-to-accept-the-things-i-cannot-change-the-courage-to-change-the-things-i-can-and-the-wisdom-to-know-the-difference-reinhold-niebuhr/', 5),
('If you want to be happy, do not dwell in the past, do not worry about the future, focus on living fully in the present.', 'Roy T. Bennett.', 'happiness', 'https://thelightintheheart.wordpress.com/2019/02/10/enjoy-the-present-moment-4/', 6),
('Happiness can be built only on virtue, and must of necessity have truth for its foundation.', 'Samuel Taylor Coleridge.', 'happiness', 'https://www.quotes.net/quote/46238', 7),
('There can be no happiness if the things we believe in are different from the things we do.', 'Treya Stark.', 'happiness', 'https://quotefancy.com/quote/1426616/Freya-Stark-There-can-be-no-happiness-if-the-things-we-believe-in-are-different-from-the', 8),
(E'Happiness is a state of mind. It\'s just according to the way you look at things.', 'Walt Disney', 'happiness', '', 9),
('Action may not always bring happiness; but there is no happiness without action', 'Benjamin Disraeli', 'happiness', 'https://www.quotespedia.org/authors/b/benjamin-disraeli/action-may-not-always-bring-happiness-but-there-is-no-happiness-without-action-benjamin-disraeli/', 10),
('We make a living by what we get, we make a life by what we give.', 'Winston Churchill.', 'happiness', 'https://due.com/blog/winston-churchill-we-make-a-life-by-what-we-give/', 11),
('I find the best way to love someone is not to change them, but instead, help them reveal the greatest version of themselves.', 'Steve Maraboli.', 'love', 'https://quotefancy.com/quote/11786/Steve-Maraboli-I-find-the-best-way-to-love-someone-is-not-to-change-them-but-instead-help', 12),
('You can’t climb the Ladder of Success, with your hands in your Pockets!', 'Arnold Schwarzenegger', 'success', 'https://medium.com/@roohanshah/you-cant-climb-the-ladder-of-success-with-your-hands-in-your-pockets-6acdd1012500', 13),
('Think of all the beauty still left around you and be happy.', 'Anne Frank.', 'happiness', 'https://www.quotespedia.org/authors/a/anne-frank/think-of-all-the-beauty-still-left-around-you-and-be-happy-anne-frank/', 14),
('Patience, persistence and perspiration make an unbeatable combination for success.', 'Napoleon Hill', 'success', 'https://dtkcoaching.com/mm052/', 15),
('The secret of success in life is for a man to be ready for his opportunity when it comes.', 'Benjamin Disraeli', 'success', 'https://www.brainyquote.com/quotes/benjamin_disraeli_130016', 16),
('With the power of concentration, I transform my intellect. Pay attention to being alert and accurate. With the power of concentration, the mind becomes peaceful.', 'Dadi Janki', 'concentration','https://www.brahmakumaris.org/discovery/inspirations-dadi-janki?view=article&option=com_alfresco&articleId=ee718575-295f-40a4-a6f4-e74096f7c05e', 17),
('Remember that one who forgets the language of gratitude can never be on speaking terms with happiness.', 'John Robbins', 'happiness', 'https://quotefancy.com/quote/1521203/John-Robbins-Remember-that-one-who-forgets-the-language-of-gratitude-can-never-be-on', 18),
('Success does not consist in never making mistakes but in never making the same one a second time.', 'George Bernard Shaw', 'success', 'https://www.mrgreatmotivation.com/2017/12/success-does-not-consist-in-never.html', 19),
('Try not to become a man of success but rather try to become a man of value.', 'Albert Einstein', 'success', 'https://www.quotespedia.org/authors/a/albert-einstein/try-not-to-become-a-man-of-success-but-rather-try-to-become-a-man-of-value-albert-einstein/', 20),
('There is a powerful driving force inside every human being that, once unleashed, can make any vision, dream, or desire a reality.', 'Anthony Robbins', 'success', 'https://timdenning.com/there-is-a-powerful-driving-force-inside-every-human-being-that-once-unleashed-can-make-any-vision-dream-or-desire-a-reality/', 21),
('Success can feather our nest so comfortably that we forget how to fly.', 'Vance Havner', 'success', 'https://www.abible.com/devotions/2011/20110322-1003.html', 22),
('If I cannot do great things, I can do small things in a great way.', 'Martin Luther King Jr', 'success', 'https://www.quotespedia.org/authors/m/martin-luther-king-jr/if-i-cannot-do-great-things-i-can-do-small-things-in-a-great-way-martin-luther-king-jr/', 23),
('Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.', 'Mark Twain', 'success', 'https://www.quotery.com/quotes/keep-away-people-try-belittle', 24),
(E'If I had eight hours to chop down a tree, I\'d spend six hours sharpening my ax.', 'Abraham Lincoln', 'success', 'https://www.quotes.net/quote/2442', 25),
(E'Successful people do what unsuccessful people are not willing to do. Don\'t wish it were easier; wish you were better.', 'Jim Rohn', 'success', 'https://www.quotespedia.org/authors/j/jim-rohn/successful-people-do-what-unsuccessful-people-are-not-willing-to-do-dont-wish-it-were-easier-wish-you-were-better-jim-rohn/', 26),
('How much you can learn when you fail determines how far you will go into achieving your goals.', 'Roy T. Bennett', 'success', 'https://www.goodreads.com/quotes/7973255-how-much-you-can-learn-when-you-fail-determines-how', 27),
(E'Success is a lousy teacher. It seduces smart people into thinking they can\'t lose.', 'Bill Gates', 'success', 'https://selfmadesuccess.com/success-is-a-lousy-teacher-it-seduces-smart-people/', 28),
('People rarely succeed unless they have fun in what they are doing.', 'Dale Carnegie', 'success', 'https://crstoday.com/wp-content/uploads/sites/4/2021/11/1121CRST_Editorial.pdf', 29),
(E'If you have a dream, don\'t just sit there. Gather courage to believe that you can succeed and leave no stone unturned to make it a reality.', 'Dr Roopleen', 'success', 'https://www.passiton.com/inspirational-quotes/4091-if-you-have-a-dream-don-t-just-sit-there', 30),
(E'You don\'t have to be a genius or a visionary or even a college graduate to be successful. You just need a framework and a dream.', 'Michael Dell', 'success', 'https://yourstory.com/2017/01/business-lessons-michael-dell/amp/', 31),
('I cannot give you the formula for success, but I can give you the formula for failure which is, Try to please everybody.', 'Herbert B. Swope', 'success', 'https://www.quotespedia.org/authors/h/herbert-bayard-swope/i-cannot-give-you-a-formula-for-success-but-i-can-give-you-the-formula-for-failure-which-is-try-to-please-everybody-herbert-bayard-swope/', 1),
('Success is not the key to happiness. Happiness is the key to success. If you love what you are doing, you will be successful.', 'Albert Schweitzer', 'success', 'https://www.forbes.com/sites/annakupka/2012/01/26/why-you-need-to-love-your-job/?sh=f3b554277cd2', 2),
('Success consists of getting up just one more time than you fall.', 'Oliver Goldsmith', 'success', 'https://dxinnovationinstitute.com/success-consists-of-getting-up-just-one-more-time-than-you-fall/', 3),
('It does not matter how slowly you go as long as you do not stop.', 'Confucius', 'success', '', 4),

(E'When it is obvious that the goals cannot be reached, don\'t adjust the goals, adjust the action steps.', 'Confucius', 'success', 'https://polylanguages.edu/famous-quote-it-does-not-matter-how-slowly-you-go-so-long-as-you-do-not-stop/', 5),
(E'Behind every successful man there\'s a lot of unsuccessful years.', 'Bob Brown', 'success', '', 6),
(E'Tough times don\'t last. Tough people do.', 'Robert H. Schuller', 'success', '', 7),
(E'You\'ve got to get up every morning with determination if you\'re going to go to bed with satisfaction.', 'George Lorimer', 'success', '', 8),
('Success means having the courage, the determination, and the will to become the person you believe you were meant to be.', 'George Sheehan', 'success', '', 9),
('There are two types of people who will tell you that you cannot make a difference in this world: those who are afraid to try and those who are afraid you will succeed.', 'Ray Goforth', 'success', '', 10),
('The difference between a successful person and others is not a lack of strength, not a lack of knowledge, but rather a lack in will.', 'Vince Lombardi', 'success', '', 11),
('There are no secrets to success. It is the result of preparation, hard work, and learning from failure.', 'Colin Powell', 'success', '', 12),
(E'Success seems to be connected with action. Successful people keep moving. They make mistakes, but they don\'t quit.', 'Conrad Hilton', 'success', '', 13),
('Happiness is an attitude. We either make ourselves miserable, or happy or strong. The amount of work is the same.', 'Francesca Reigler.', 'happiness', '', 14),
('Follow effective actions with quiet reflection. From the quiet reflection will come even more effective action.', 'Peter Drucker', 'success', '', 15),
('Shallow men believe in luck. Strong men believe in cause and effect.', 'Ralph Waldo Emerson', 'success', '', 16),
('Knowing others is intelligence; knowing yourself is true wisdom. Mastering others is strength; mastering yourself is true power.', 'Lao Tzu', 'success', '', 17),
('Happy is he who learns to bear what he cannot change.', 'Friedrich Schiller.', 'happiness', '', 18),
('Optimism is the one quality more associated with success and happiness that any other.', 'Brian Tracy', 'success', '', 19),
('The secret of success is to do the common thing uncommonly well.', 'John D. Rockefeller Jr', 'success', '', 20),
(E'Striving for success without hard work is like trying to harvest where you haven\'t planted.', 'David Bly', 'success', '', 21),
(E'Hard times don\'t create heroes. It is during the hard times when the \'hero\' within us is revealed.', 'Bob Riley', 'success', '', 22),
(E'When it rains, look for rainbows. When it\'s dark, look for stars.', 'Anonymous.', 'positivity', '', 23),
('There are no permanent changes because change itself is permanent.', 'Ralph L. Woods', 'success', '', 24),
('To live is to change, and to be perfect is to change often.', 'John Henry Cardinal Newman', 'success', '', 25),
(E'You can\'t go back and change the beginning, but you can start where you are and change the ending.', 'C.S. Lewis', 'success', '', 26),
('The art of life lies in a constant readjustment to our surroundings.', 'Kakuzo Okakura', 'success', '', 27),
('Progress is impossible without change, and those who cannot change their minds cannot change anything.', 'George Bernard Shaw', 'success', '', 28),
('It is not the strongest of the species that survive, nor the most intelligent, but the one most responsive to change.', 'Charles Darwin', 'success', '', 29),
('The measure of intelligence is the ability to change.', 'Albert Einstein', 'success', '', 30),
('The world as we have created it is a process of our thinking. It cannot be changed without changing our thinking.', 'Albert Einstein', 'success', '', 31),
('The greatest discovery of all time is that a person can change his future by merely changing his attitude.', 'Oprah Winfrey', 'success', '', 1),
('I cannot say whether things will get better if we change; what I can say is they must change if they are to get better.', 'Georg C. Lichtenberg', 'success', '', 2),
('The secret of change is to focus all of your energy not on fighting the old, but on building the new.', 'Socrates', 'success', '', 3),
('Let him that would move the world first move himself.', 'Socrates', 'success', '', 4),
('When we are no longer able to change a situation, we are challenged to change ourselves.', 'Viktor Frankl', 'success', '', 5),
('How wonderful it is that nobody need wait a single moment before starting to improve the world.', 'Anne Frank', 'success', '', 6),
('The world hates change, yet it is the only thing that has brought progress.', 'Charles F. Kettering', 'success', '', 7),
('Your life does not get better by chance, it gets better by change.', 'Jim Rohn', 'success', '', 8),
('The one unchangeable certainty is that nothing is certain or unchangeable.', 'John F. Kennedy', 'success', '', 9),
(E'Growth is painful. Change is painful. But nothing is as painful as staying stuck somewhere you don\'t belong.', 'Mandy Hale', 'success', '', 10),
('Be the change that you wish to see in the world.', 'Mahatma Gandhi', 'success', '', 11),
('Everyone thinks of changing the world, but no one thinks of changing himself.', 'Leo Tolstoy', 'success', '', 12),
('True life is lived when tiny changes occur.', 'Leo Tolstoy', 'success', '', 13),
('The only thing that will make you happy is being happy with who you are.', 'Goldie Hawn.', 'happiness', '', 14),
(E'Change will not come if we wait for some other person or some other time. We are the ones we\'ve been waiting for. We are the change that we seek.', 'Barack Obama', 'success', '', 15),
('Life will only change when you become more committed to your dreams than you are to your comfort zone.', 'Billy Cox', 'success', '', 16),
('Life is measured by the rapidity of change, the succession of influences that modify the being.', 'George Eliot', 'success', '', 17),
('Happiness is not the absence of problems; but the ability to deal with them.', 'Jack Brown.', 'happiness', '', 18),
('The art of progress is to preserve order amid change, and to preserve change amid order.', 'Alfred North Whitehead', 'success', '', 19),
('Change is inevitable in a progressive society. Change is constant.', 'Benjamin Disraeli', 'success', '', 20),
('Every saint has a past, and every sinner has a future.', 'Oscar Wilde', 'success', '', 21),
('We cannot become what we want by remaining what we are.', 'Max Depree', 'success', '', 22),
(E'I can\'t change the direction of the wind, but I can adjust my sails to always reach my destination.', 'Jimmy Dean', 'success', '', 23),
(E'Incredible change happens in your life when you decide to take control of what you do have power over instead of craving control over what you don\'t.', 'Steve Maraboli', 'success', '', 24),
('Small changes eventually add up to huge results.', 'Anonymous', 'success', '', 25),
('Happiness is not having what you want. It is appreciating what you have.', 'Jeremiah Say.', 'happiness', '', 27),
('The person born with a talent they are meant to use will find their greatest happiness in using it.', 'Johann Wolfgang von Goethe.', 'happiness', '', 28),
('The power of finding beauty in the humblest things makes home happy and life lovely.', 'Louisa May Alcott.', 'happiness', '', 29),
('When you love what you have, you have everything you need.', 'Anonymous.', 'happiness', '', 30),
('The best way to cheer yourself up is to try to cheer somebody else up.', 'Mark Twain.', 'happiness', '', 31),
('To live is the rarest thing in the world. Most people just exist.', 'Oscar Wilde.', 'happiness', '', 1),
('When you build a house, every brick counts. When you build character, every thought counts. So think constructively.', 'Dadi Janki', 'character', '', 2),
('Wise men and women in every major culture have maintained that the secret of happiness is not in getting more but in wanting less.', 'Philip Slater.', 'happiness', '', 3),
('You never change things by fighting the existing reality. To change something, build.', 'Buckminster Fuller', 'success', '', 4),
('You never change things by fighting the existing reality. To change something, build a new model that makes the existing model obsolete.', 'Richard Buckminster', 'change', '', 5),
('Change the way you look at things and the things you look at change.', 'Wayne W. Dyer', 'success', '', 6),
('Change your thoughts and you change your world.', 'Norman Vincent Peale', 'success', '', 7),
(E'Play to your strengths. If you aren\'t great at something, do more of what you\'re great at.', 'Jason Lemkin', 'success', '', 8),
('Coming together is a beginning, keeping together is progress, working together is success.', 'Henry Ford', 'success', '', 9),
('I cannot give you the formula for success, but I can give you the formula for failure which is, Try to please everybody.', 'Herbert B. Swope', 'success', '', 10),
('The greatest happiness of life is the conviction that we are loved; loved for ourselves, or rather, loved in spite of ourselves.', 'Victor Hugo', 'love','' , 11),
('Doing the best at this moment puts you in the best place for the next moment.', 'Oprah Winfrey', 'success', '', 12),
(E'You\'ve achieved success in your field when you don\'t know whether what you\'re doing is work or play.', 'Warren Beatty', 'success', '', 13),
(E'Success is a lousy teacher. It seduces smart people into thinking they can\'t lose.', 'Bill Gates', 'success', '', 14),
('Keep on going, and the chances are that you will stumble on something, perhaps when you are least expecting it. I never heard of anyone ever stumbling on something sitting down.', 'Charles F. Kettering', 'success', '', 15),
(E'The difference between successful people and very successful people is that very successful people say \'no\' to almost everything.', 'Warren Buffett', 'success', '', 16),
('A successful man is one who can lay a firm foundation with the bricks that others throw at him.', 'David Brinkley', 'success', '', 17),
('People rarely succeed unless they have fun in what they are doing.', 'Dale Carnegie', 'success', '',18),
(E'I\'ve failed over and over and over again in my life and that is why I succeed.', 'Michael Jordan', 'success', '', 19),
(E'I don\'t dwell on success. Maybe that\'s one reason I\'m successful.', 'Calvin Klein', 'success', '', 20),
('If you really look closely, most overnight successes took a long time.', 'Steve Jobs', 'success', '', 21),
('Before anything else, preparation is the key to success.', 'Alexander Graham Bell', 'success', '', 22),
('Spend eighty percent of your time focusing on the opportunities of tomorrow rather than the problems of yesterday.', 'Brian Tracy.', 'optimism', '', 23),
('No one ever climbed the ladder of success with his hands in his pockets.', 'Jeremiah Say', 'success', '', 24),
('Patience, persistence and perspiration make an unbeatable combination for success.', 'Napoleon Hill', 'success', '', 25),
('The secret of success in life is for a man to be ready for his opportunity when it comes.', 'Benjamin Disraeli', 'success', '', 26),
(E'You learn more from failure than from successes. Don\'t let it stop you. Failure builds character.', 'Anonymous', 'success', '', 27),
('Success does not consist in never making mistakes but in never making the same one a second time.', 'George Bernard Shaw', 'success', '', 28),
('Keep away from people who try to belittle your ambitions. Small people always do that, but the really great make you feel that you, too, can become great.', 'Mark Twain', 'success', '', 29),
('There is a powerful driving force inside every human being that, once unleashed, can make any vision, dream, or desire a reality.', 'Anthony Robbins', 'success', '', 30),
('Success can feather our nest so comfortably that we forget how to fly.', 'Vance Havner', 'success', '', 31),
('If I cannot do great things, I can do small things in a great way.', 'Martin Luther King Jr', 'success', '', 1),
(E'One who is content is happy. One who is happy is content. Nothing is difficult for God\'s children, and we are all God\'s children. Simply remain detached from people and situations and merged in God\'s love. When you are detached, you will feel good. So, remain detached from situations and loving to God.', 'Dadi Janki', 'Contentement','https://www.brahmakumaris.org/discovery/inspirations-dadi-janki?view=article&option=com_alfresco&articleId=1fc9e9bc-abbc-4e41-9cb4-e04e989c7a0d', 2),
(E'If I had eight hours to chop down a tree, I\'d spend six hours sharpening my ax.', 'Abraham Lincoln', 'success', '', 3),
(E'Successful people do what unsuccessful people are not willing to do. Don\'t wish it were easier; wish you were better.', 'Jim Rohn', 'success', '', 4),
('How much you can learn when you fail determines how far you will go into achieving your goals.', 'Roy T. Bennett', 'success', '', 5),
(E'If you have a dream, don\'t just sit there. Gather courage to believe that you can succeed and leave no stone unturned to make it a reality.', 'Dr Roopleen', 'success', '', 6),
(E'You don\'t have to be a genius or a visionary or even a college graduate to be successful. You just need a framework and a dream.', 'Michael Dell', 'success', '', 7),
(E'You learn more from failure than from successes. Don\'t let it stop you. Failure builds character.', 'Anonymous', 'success', '', 9),
('The loneliest place in the world is the human heart when love is absent.', 'Jeremiah Say', 'love','', 8)
;