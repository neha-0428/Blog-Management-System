--create table user--
CREATE TABLE users (
    user_id NUMBER PRIMARY KEY,
    u_name VARCHAR2(50) UNIQUE NOT NULL,
    password VARCHAR2(100) NOT NULL,
    email VARCHAR2(100) UNIQUE NOT NULL,
    created_at DATE DEFAULT SYSDATE,
    last_login DATE
);

--creating sequence of user_id--
CREATE SEQUENCE user_id_seq 
    START WITH 1
    INCREMENT BY 1;



--create table category--
CREATE TABLE category (
    category_id NUMBER PRIMARY KEY,
    category_name VARCHAR2(100) UNIQUE
);

--creating sequence for category_id--
CREATE SEQUENCE category_id_seq
    START WITH 1
    INCREMENT BY 1;

--DROP SEQUENCE category_id_seq;
--DELETE category;

--create table tag--
CREATE TABLE tag (
    tag_id NUMBER PRIMARY KEY,
    tag_name VARCHAR2(100) UNIQUE
);

--creating sequence tag_id--
CREATE SEQUENCE tag_id_seq 
    START WITH 1
    INCREMENT BY 1;

--DROP SEQUENCE tag_id_seq;

--create table post--
CREATE TABLE posts (
    post_id NUMBER PRIMARY KEY,
    title VARCHAR2(100) NOT NULL,
    Body CLOB,
    user_id NUMBER,
    category_id NUMBER,
    tag_id NUMBER,
    created_at DATE DEFAULT SYSDATE,
    last_modified_at DATE DEFAULT SYSDATE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE,
    FOREIGN KEY (category_id) REFERENCES category(category_id) ON DELETE SET NULL,
    FOREIGN KEY (tag_id) REFERENCES tag(tag_id) ON DELETE SET NULL
);

--creating sequence post_id--
CREATE SEQUENCE post_id_seq
    START WITH 1
    INCREMENT BY 1;
    
    
--DROP SEQUENCE post_id_seq;

--create table comment--
CREATE TABLE comments (
    comment_id NUMBER PRIMARY KEY,
    comment_text CLOB,
    post_id NUMBER,
    user_id NUMBER,
    comment_date DATE,
    FOREIGN KEY (post_id) REFERENCES posts(post_id) ON DELETE CASCADE,
    FOREIGN KEY (user_id) REFERENCES users(user_id) ON DELETE CASCADE
);

--creating sequence comment_id
CREATE SEQUENCE comment_id_seq
    START WITH 1
    INCREMENT BY 1;


--DROP SEQUENCE comment_id_seq;


--Inserting values into users--
INSERT INTO users VALUES 
(user_id_seq.nextval, 'john_doe', 'password123', 'john@example.com', TO_DATE('2020-04-23', 'YYYY-MM-DD'), TO_DATE('2024-04-02', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'jane_smith', 'securepass', 'jane@example.com', TO_DATE('2023-02-19', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'bob_jones', 'strongpassword', 'bob@example.com', TO_DATE('2021-08-17', 'YYYY-MM-DD'), TO_DATE('2024-03-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'alice_green', 'green123', 'alice@example.com', TO_DATE('2021-05-22', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'sam_brown', 'brownie', 'sam@example.com', TO_DATE('2019-04-12', 'YYYY-MM-DD'), TO_DATE('2024-03-30', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'emily_clark', 'em123', 'emily@example.com', TO_DATE('2020-05-30', 'YYYY-MM-DD'), TO_DATE('2024-03-30', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'michael_johnson', 'mj456', 'michael@example.com', TO_DATE('2022-09-18', 'YYYY-MM-DD'), TO_DATE('2024-04-02', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'sarah_miller', 'sarahm', 'sarah@example.com', TO_DATE('2021-07-01', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'ryan_anderson', 'ryan321', 'ryan@example.com', TO_DATE('2020-03-25', 'YYYY-MM-DD'), TO_DATE('2024-03-30', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'lisa_taylor', 'lisat', 'lisa@example.com', TO_DATE('2021-04-02', 'YYYY-MM-DD'), TO_DATE('2024-03-29', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'kevin_white', 'kwhite', 'kevin@example.com', TO_DATE('2017-12-26', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'jennifer_hall', 'jenh', 'jennifer@example.com', TO_DATE('2019-10-28', 'YYYY-MM-DD'), TO_DATE('2024-03-31', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'david_thomas', 'davt', 'david@example.com', TO_DATE('2023-09-29', 'YYYY-MM-DD'), TO_DATE('2024-03-30', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'amanda_wilson', 'awil', 'amanda@example.com', TO_DATE('2022-08-02', 'YYYY-MM-DD'), TO_DATE('2024-03-29', 'YYYY-MM-DD'));
INSERT INTO users VALUES 
(user_id_seq.nextval, 'matthew_lee', 'mlee', 'matthew@example.com', TO_DATE('2020-02-15', 'YYYY-MM-DD'), TO_DATE('2024-04-02', 'YYYY-MM-DD'));

SELECT * FROM users;




--Inserting values into category--
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Technology');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Fashion');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Education');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Health');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Relationships');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Lifestyle');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Parenting');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Finance');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Food');
INSERT INTO category (category_id, category_name) VALUES (category_id_seq.nextval, 'Travel');

--DELETE category;

SELECT * FROM category;


--Inserting values into tag--
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#FoodieFinds');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#ParentingTips');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#RelationshipGoals');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#TechTrends');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#FinancialTips');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#FitnessMotivation');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#BookRecommendations');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#TravelDiaries');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#Music');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#HealthyLiving');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#FashionInspo');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#DIYProjects');
INSERT INTO tag (tag_id, tag_name) VALUES (tag_id_seq.nextval, '#CareerAdvice');

SELECT * FROM tag;


--Inserting values into post--
INSERT INTO posts (post_id, title, Body, user_id, category_id, tag_id, created_at, last_modified_at) VALUES 
(post_id_seq.nextval, 'Introduction to SQL', 'SQL is a powerful language for managing relational databases.', 10, 3, 7, TO_DATE('2023-04-02', 'YYYY-MM-DD'), TO_DATE('2024-01-22', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Traveling Around the World', 'Exploring new cultures and destinations.', 8, 10, 8, TO_DATE('2024-01-02', 'YYYY-MM-DD'), TO_DATE('2024-01-11', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Healthy Eating Habits', 'Tips for maintaining a balanced diet.', 6, 9, 1, TO_DATE('2023-09-12', 'YYYY-MM-DD'), TO_DATE('2023-12-31', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Fashion Trends 2024', 'Latest fashion trends and styles.', 3, 2, 11, TO_DATE('2024-01-22', 'YYYY-MM-DD'), TO_DATE('2024-04-01', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Home Decor Ideas', 'Creative ways to decorate your home.', 7, 6, 12, TO_DATE('2020-04-02', 'YYYY-MM-DD'), TO_DATE('2024-03-30', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Fitness Tips for Beginners', 'Getting started with a fitness routine.', 2, 4, 6, TO_DATE('2019-04-02', 'YYYY-MM-DD'), TO_DATE('2024-02-14', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Book Review: The Alchemist', 'A review of Paulo Coelho''s timeless novel.', 1, 3, 7, TO_DATE('2022-10-26', 'YYYY-MM-DD'), TO_DATE('2023-12-29', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Music Recommendations', 'Discover new music across various genres.', 4, 6, 9, TO_DATE('2021-07-09', 'YYYY-MM-DD'), TO_DATE('2024-02-01', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Movie Review: Inception', 'Exploring the mind-bending world of Christopher Nolan.', 11, 6, 10, TO_DATE('2024-02-21', 'YYYY-MM-DD'), TO_DATE('2024-02-20', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Gaming Tips and Tricks', 'Mastering your favorite video games.', 15, 1, 7, TO_DATE('2023-12-02', 'YYYY-MM-DD'), TO_DATE('2024-03-29', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Art Inspiration', 'Exploring the world of visual arts.', 13, 7, 12, TO_DATE('2020-07-01', 'YYYY-MM-DD'), TO_DATE('2022-04-01', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Financial Planning for Millennials', 'Tips for managing finances and investments.', 14, 8, 5, TO_DATE('2024-02-02', 'YYYY-MM-DD'), TO_DATE('2024-03-31', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Self-Care Rituals', 'Practicing mindfulness and self-care.', 13, 2, 9, TO_DATE('2021-04-02', 'YYYY-MM-DD'), TO_DATE('2022-03-30', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Resources for Parents', 'Tools and resources for parenting.', 9, 7, 2, TO_DATE('2020-08-20', 'YYYY-MM-DD'), TO_DATE('2023-03-29', 'YYYY-MM-DD'));
INSERT INTO posts VALUES 
(post_id_seq.nextval, 'Sustainable Living Practices', 'Promoting eco-friendly habits and initiatives.', 5, 5, 10, TO_DATE('2024-01-02', 'YYYY-MM-DD'), TO_DATE('2024-03-02', 'YYYY-MM-DD'));

SELECT * FROM posts;



--Inserting into comments--
INSERT INTO comments (comment_id, comment_text, post_id, user_id, comment_date) VALUES 
(comment_id_seq.nextval, 'Great article, thanks for sharing!', 5, 10, TO_DATE('2023-04-01', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'I found this very informative.', 4, 9, TO_DATE('2024-02-02', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'Looking forward to your next post.', 3, 8, TO_DATE('2024-01-03', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'I have a question about this topic.', 2, 7, TO_DATE('2024-04-04', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'This changed my perspective.', 1, 6, TO_DATE('2024-04-05', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'Can you elaborate on this point?', 15, 13, TO_DATE('2024-04-06', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'I completely agree with you.', 14, 4, TO_DATE('2024-04-07', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'Interesting discussion!', 13, 3, TO_DATE('2024-04-08', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'Thanks for the insights.', 12, 1, TO_DATE('2024-04-09', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'This helped me a lot.', 11, 2, TO_DATE('2024-04-10', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'I have a different opinion on this.', 7, 12, TO_DATE('2024-04-11', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'Can you provide more examples?', 6, 14, TO_DATE('2024-04-12', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'I am looking forward to trying this out.', 9, 15, TO_DATE('2024-04-13', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'This inspired me to take action.', 10, 11, TO_DATE('2024-04-14', 'YYYY-MM-DD'));
INSERT INTO comments VALUES (comment_id_seq.nextval, 'I have a similar experience.', 8, 5, TO_DATE('2024-04-15', 'YYYY-MM-DD'));

SELECT * FROM comments;




--procedure to insert new post

CREATE OR REPLACE PROCEDURE insert_post (
    p_title IN VARCHAR2,
    p_body IN CLOB,
    p_user_id IN NUMBER,
    p_category_id IN NUMBER,
    p_tag_id IN NUMBER,
    p_created_at IN DATE,
    p_last_modified_at IN DATE
) 
IS
BEGIN
    INSERT INTO posts (post_id, title, Body, user_id, category_id, tag_id, created_at, last_modified_at)
    VALUES (post_id_seq.nextval, p_title, p_body, p_user_id, p_category_id, p_tag_id, p_created_at, p_last_modified_at);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('New Blog Post inserted successfully!');
EXCEPTION 
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error:' || SQLERRM);
        ROLLBACK;
END insert_post;
/

--Execution of procedure
CALL insert_post('Health is Wealth', 'It emphasizes that good health is a valuable asset.', 3, 7, 9, TO_DATE('2024-01-02', 'YYYY-MM-DD'), TO_DATE('2024-01-11', 'YYYY-MM-DD'));
SELECT * FROM posts;

EXECUTE DBMS_OUTPUT.ENABLE;

DELETE FROM posts where post_id = 16;



--procedure to insert new user

CREATE OR REPLACE PROCEDURE insert_user (
    u_name IN VARCHAR2,
    u_pass IN VARCHAR2,
    u_email IN VARCHAR2,
    u_created_at IN DATE,
    u_last_login_at IN DATE
) 
IS
BEGIN
    INSERT INTO users (user_id, u_name, password, email, created_at, last_login)
    VALUES (user_id_seq.nextval, u_name, u_pass, u_email, u_created_at, u_last_login_at);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('New user inserted successfully!');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error :' || SQLERRM );
        ROLLBACK;
END insert_user;
/

CALL insert_user('shubh', 2742426, 'shubh@gmail.com', TO_DATE('2020-07-01', 'YYYY-MM-DD'), TO_DATE('2022-04-01', 'YYYY-MM-DD'));

SELECT * FROM users;


--procedure for inserting new category

CREATE OR REPLACE PROCEDURE insert_category (
    c_name IN VARCHAR2
)
IS
BEGIN
    INSERT INTO category (category_id, category_name)
    VALUES (category_id_seq.nextval, c_name);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('New category inserted successfully!');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END insert_category;
/

--Executing the procedure for new category
CALL insert_category('Thriller');

SELECT * FROM category;


--Procedure for new Tag

CREATE OR REPLACE PROCEDURE insert_tag (
    t_name IN VARCHAR2
)
IS
BEGIN
    INSERT INTO tag (tag_id, tag_name)
    VALUES (tag_id_seq.nextval,t_name);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('New tag inserted successfully!');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END insert_tag;
/

--Executing the procedure
CALL insert_tag ('#life');

SELECT * FROM tag;


--Procedure for inserting a new comment

CREATE OR REPLACE PROCEDURE insert_comment(
    c_text IN VARCHAR2,
    c_post_id IN NUMBER,
    c_user_id IN NUMBER,
    c_date IN DATE
)
IS
BEGIN
    INSERT INTO comments (comment_id, comment_text, post_id, user_id, comment_date)
    VALUES (comment_id_seq.nextval, c_text, c_post_id, c_user_id, c_date);
    COMMIT;
    DBMS_OUTPUT.PUT_LINE('New comment inserted successfully!');
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
        ROLLBACK;
END insert_comment;
/

--Executing of procedure
CALL insert_comment('Beautiful', 6, 13, TO_DATE ('2023-09-23', 'YYYY-MM-DD'));

SELECT * FROM comments;




--retriving user data

CREATE OR REPLACE FUNCTION get_user_info(
    u_user_id IN users.user_id%TYPE DEFAULT NULL,
    u_username IN users.u_name%TYPE DEFAULT NULL,
    u_password IN users.password%TYPE DEFAULT NULL,
    u_email IN users.email%TYPE DEFAULT NULL
) RETURN SYS_REFCURSOR IS
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR 
    SELECT user_id, u_name, password, email
    FROM users
    WHERE (user_id = u_user_id OR u_user_id IS NULL)
      AND (u_name = u_username OR u_username IS NULL)
      AND (password = u_password OR u_password IS NULL)
      AND (email = u_email OR u_email IS NULL);
    
    RETURN v_cursor;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('Date not found');
        CLOSE v_cursor;
        RETURN NULL;
    WHEN OTHERS THEN
        CLOSE v_cursor;
        RAISE;
END get_user_info;
/

DECLARE
    v_user_cursor SYS_REFCURSOR;
    v_user_id users.user_id%TYPE;
    v_username users.u_name%TYPE;
    v_password users.password%TYPE;
    v_email users.email%TYPE;
BEGIN
--    v_user_cursor := get_user_info(u_user_id => 3);
    v_user_cursor := get_user_info(u_password => 'green123');

    LOOP
        FETCH v_user_cursor INTO v_user_id, v_username, v_password, v_email;
        EXIT WHEN v_user_cursor%NOTFOUND;

        DBMS_OUTPUT.PUT_LINE('User ID: ' || v_user_id);
        DBMS_OUTPUT.PUT_LINE('Username: ' || v_username);
        DBMS_OUTPUT.PUT_LINE('Password: ' || v_password);
        DBMS_OUTPUT.PUT_LINE('Email: ' || v_email);
    
    END LOOP;
    CLOSE v_user_cursor;
    
    IF NOT v_user_cursor%ISOPEN THEN
        RAISE NO_DATA_FOUND;
    END IF;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO DATA FOUND!');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/

--retrive posts data

CREATE OR REPLACE FUNCTION get_post_info (
    p_post_id IN posts.post_id%TYPE DEFAULT NULL,
    p_title IN posts.title%TYPE DEFAULT NULL,
    p_body IN CLOB DEFAULT NULL,
    p_user_id IN posts.user_id%TYPE DEFAULT NULL,
    p_category_id IN posts.category_id%TYPE DEFAULT NULL,
    p_tag_id IN posts.tag_id%TYPE DEFAULT NULL
) RETURN SYS_REFCURSOR 
    IS v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR 
    SELECT post_id, title, Body, user_id, category_id, tag_id
    FROM posts
    WHERE (post_id = p_post_id OR p_post_id IS NULL)
    AND (title = p_title OR p_title IS NULL)
    AND (p_body IS NULL OR DBMS_LOB.compare(Body, p_body) = 0) -- Compare CLOBs using DBMS_LOB.compare
    AND (user_id = p_user_id OR p_user_id IS NULL)
    AND (category_id = p_category_id OR p_category_id IS NULL)
    AND (tag_id  = p_tag_id OR p_tag_id IS NULL);
    
    RETURN v_cursor;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO DATA FOUND');
        close v_cursor;
    WHEN OTHERS THEN
        close v_cursor;
        RAISE;
END get_post_info;
/


DECLARE 
    v_post_cursor SYS_REFCURSOR;
    v_post_id posts.post_id%TYPE;
    v_title posts.title%TYPE;
    v_body posts.Body%TYPE;
    v_user_id posts.user_id%TYPE;
    v_category_id posts.category_id%TYPE;
    v_tag_id posts.tag_id%TYPE;
BEGIN
--    v_post_cursor := get_post_info(p_post_id => 1);
    v_post_cursor := get_post_info(p_user_id => 4);
    
    LOOP
        FETCH v_post_cursor INTO v_post_id, v_title, v_body, v_user_id, v_category_id, v_tag_id;
        EXIT WHEN v_post_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Post ID: ' || v_post_id);
        DBMS_OUTPUT.PUT_LINE('Title: ' || v_title);
        DBMS_OUTPUT.PUT_LINE('Body: ' || v_body);
        DBMS_OUTPUT.PUT_LINE('User ID: ' || v_user_id);
        DBMS_OUTPUT.PUT_LINE('Category ID: ' || v_category_id);
        DBMS_OUTPUT.PUT_LINE('tag ID: ' || v_tag_id);
    
    END LOOP;
    CLOSE v_post_cursor;
    
    IF NOT v_post_cursor%ISOPEN THEN
        RAISE NO_DATA_FOUND;
    END IF;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO DATA FOUND!');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('An error occurred: ' || SQLERRM);
END;
/




-- retrieve data from comments

CREATE OR REPLACE FUNCTION get_comment_info (
    c_comment_id IN comments.comment_id%TYPE DEFAULT NULL,
    c_comment_text IN comments.comment_text%TYPE DEFAULT NULL,
    c_post_id IN comments.post_id%TYPE DEFAULT NULL,
    c_user_id IN comments.user_id%TYPE DEFAULT NULL
--    c_comment_date IN comments.comment_date%TYPE DEFAULT NULL
) RETURN SYS_REFCURSOR 
    IS v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR 
    SELECT comment_id, comment_text, post_id, user_id
    FROM comments
    WHERE (comment_id = c_comment_id OR c_comment_id IS NULL)
    AND ((DBMS_LOB.compare(comment_text, c_comment_text) = 0) OR c_comment_text IS NULL)
    AND (post_id = c_post_id OR c_post_id IS NULL)
    AND (user_id = c_user_id OR c_user_id IS NULL);

    RETURN v_cursor;
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO DATA FOUND');
        close v_cursor;
    WHEN OTHERS THEN
        close v_cursor;
        RAISE;
END get_comment_info;
/

DECLARE
    v_comment_cursor SYS_REFCURSOR;
    v_comment_id comments.comment_id%TYPE;
    v_comment_text comments.comment_text%TYPE DEFAULT NULL;
    v_post_id comments.post_id%TYPE DEFAULT NULL;
    v_user_id comments.user_id%TYPE DEFAULT NULL;
    
BEGIN
--    v_comment_cursor := get_comment_info(c_comment_id => 1);
    v_comment_cursor := get_comment_info(c_comment_text => 'GEORGOUS');
    
    LOOP
        FETCH v_comment_cursor INTO v_comment_id, v_comment_text, v_post_id, v_user_id;
        EXIT WHEN v_comment_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Comment ID: ' || v_comment_id);
        DBMS_OUTPUT.PUT_LINE('Comment Text: ' || v_comment_text);
        DBMS_OUTPUT.PUT_LINE('Post ID: ' || v_post_id);
        DBMS_OUTPUT.PUT_LINE('User ID: ' || v_user_id);
        
    END LOOP;
    CLOSE v_comment_cursor;
    
    IF NOT v_comment_cursor%ISOPEN THEN
        RAISE NO_DATA_FOUND;
    END IF;
    
EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('No data found');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END;
/



--retireve data from category

CREATE OR REPLACE FUNCTION get_category_data(
    c_category_id IN category.category_id%TYPE DEFAULT NULL,
    c_category_name IN category.category_name%TYPE DEFAULT NULL
    
) RETURN SYS_REFCURSOR 
IS 
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT category_id, category_name
    FROM category
    WHERE (c_category_id IS NULL OR category_id = c_category_id)
    AND (c_category_name IS NULL OR category_name = c_category_name);
    
    RETURN v_cursor;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END get_category_data;
/

DECLARE
    v_category_cursor SYS_REFCURSOR;
    v_category_id category.category_id%TYPE;
    v_category_name category.category_name%TYPE;
    
BEGIN
    v_category_cursor := get_category_data(c_category_id => 1);
    
    LOOP
        FETCH v_category_cursor INTO v_category_id, v_category_name;
        EXIT WHEN v_category_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Category ID: ' || v_category_id);
        DBMS_OUTPUT.PUT_LINE('Category Name: ' || v_category_name);
        
    END LOOP;
    CLOSE v_category_cursor;
    
    IF NOT v_category_cursor%ISOPEN THEN
        RAISE NO_DATA_FOUND;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO data found');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    
END;
/






--retireve data from tags

CREATE OR REPLACE FUNCTION get_tag_data(
    t_tag_id IN tag.tag_id%TYPE DEFAULT NULL,
    t_tag_name IN tag.tag_name%TYPE DEFAULT NULL
    
) RETURN SYS_REFCURSOR 
IS 
    v_cursor SYS_REFCURSOR;
BEGIN
    OPEN v_cursor FOR
    SELECT tag_id, tag_name
    FROM tag
    WHERE (t_tag_id IS NULL OR tag_id = t_tag_id)
    AND (t_tag_name IS NULL OR tag_name = t_tag_name);
    
    RETURN v_cursor;
EXCEPTION
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
END get_tag_data;
/

DECLARE
    v_tag_cursor SYS_REFCURSOR;
    v_tag_id tag.tag_id%TYPE;
    v_tag_name tag.tag_name%TYPE;
    
BEGIN
    v_tag_cursor := get_tag_data(t_tag_id => 1);
    
    LOOP
        FETCH v_tag_cursor INTO v_tag_id, v_tag_name;
        EXIT WHEN v_tag_cursor%NOTFOUND;
        
        DBMS_OUTPUT.PUT_LINE('Tag ID: ' || v_tag_id);
        DBMS_OUTPUT.PUT_LINE('Tag Name: ' || v_tag_name);
        
    END LOOP;
    CLOSE v_tag_cursor;
    
    IF NOT v_tag_cursor%ISOPEN THEN
        RAISE NO_DATA_FOUND;
    END IF;

EXCEPTION
    WHEN NO_DATA_FOUND THEN
        DBMS_OUTPUT.PUT_LINE('NO data found');
    WHEN OTHERS THEN
        DBMS_OUTPUT.PUT_LINE('Error: ' || SQLERRM);
    
END;
/




