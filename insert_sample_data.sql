INSERT INTO departments(title,
                        description,
                        link)
                VALUES ('Aerospace',
                        'University of Toronto Institute of Aerospace Studies',
                        'http://www.utias.utoronto.ca/');

INSERT INTO students    (email,
                         first_name,
                         last_name,
                         link,
                         department_id)
                VALUES ('willy.hu@mail.utoronto.ca',
                        'Willy',
                        'Hu',
                        'https://willy-hu.net',
                        1);

INSERT INTO professors  (email,
                         first_name,
                         last_name,
                         link,
                         department_id)
                VALUES ('liu@utias.utoronto.ca',
                        'Hugh',
                        'Liu',
                        'http://www.flight.utias.utoronto.ca/fsc/index.php?id=204',
                        1);

INSERT INTO projects    (professor_id,
                         name,
                         desciption)
                VALUES (1,
                        'Fail-Safe Flight and Fault Tolerant Control',
                        'A primary concern in aircraft design, development,
                        and operation has always been its safety and reliability.
                        However, incidents of in-flight failures (faults) are still reported.
                        This research aims at integrating fault detection with fault tolerant control to address sensor,
                        actuation faults, as well as structural damage.
                        A backup automatic controller is defined to address failed (damaged) aircraft model to mitigate
                        risk during emergency. In addition, a maximum level of tolerable failures is sought for the
                        limit of control capacity.');

INSERT INTO keywords    (name)
                VALUES ('Control System');

INSERT INTO skills      (name,
                         description)
                VALUES ('MATLAB',
                        'Proficiency in using the MATLAB language and software');

-- INSERT INTO professor_student_relationship