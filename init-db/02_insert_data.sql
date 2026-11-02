
INSERT INTO students (first_name, last_name, email, phone, skill_level) VALUES
('Maya', 'Lin', 'maya.lin@example.com', '555-0101', 'beginner'),
('Julian', 'Casablancas', 'julian.c@example.com', '555-0102', 'intermediate'),
('Elena', 'Rostova', 'elena.rostova@example.com', '555-0103', 'advanced'),
('Marcus', 'Vance', 'marcus.v@example.com', '555-0104', 'beginner');


INSERT INTO teachers (first_name, last_name, email, phone, primary_instrument, hourly_rate) VALUES
('Sarah', 'Jenkins', 's.jenkins@academy.com', '555-0201', 'Piano', 60.00),
('David', 'Kim', 'd.kim@academy.com', '555-0202', 'Acoustic Guitar', 50.00),
('Amara', 'Okafor', 'a.okafor@academy.com', '555-0203', 'Violin', 70.00);


INSERT INTO lessons (student_id, teacher_id, start_time, end_time, status, notes) VALUES
-- Past completed lesson
(1, 1, '2026-10-28 14:00:00+00', '2026-10-28 15:00:00+00', 'completed', 'Covered C major scale and basic hand posture.'),
-- Past completed lesson
(2, 2, '2026-10-29 16:00:00+00', '2026-10-29 17:00:00+00', 'completed', 'Practiced chord transitions between G, C, and D.'),
-- Canceled lesson
(4, 2, '2026-10-30 11:00:00+00', '2026-10-30 12:00:00+00', 'canceled', 'Student had flu; rescheduled for next week.'),
-- Upcoming scheduled lessons
(1, 1, '2026-11-04 14:00:00+00', '2026-11-04 15:00:00+00', 'scheduled', 'Review homework piece and introduce arpeggios.'),
(3, 3, '2026-11-05 10:30:00+00', '2026-11-05 11:30:00+00', 'scheduled', 'Audition prep: Bach Cello Suite No. 1 Prelude.'),
(2, 2, '2026-11-05 16:00:00+00', '2026-11-05 17:00:00+00', 'scheduled', 'Fingerpicking fundamentals and rhythm drills.');


INSERT INTO lesson_materials (lesson_id, title, material_type, file_url, instructions) VALUES
-- Materials for Lesson 1 (Piano, completed)
(1, 'C Major Scale Warmup Sheet', 'sheet_music', 'https://storage.example.com/materials/c-major-scale.pdf', 'Practice hands separately at 60 BPM before combining.'),
-- Materials for Lesson 2 (Guitar, completed)
(2, 'Open Chords Reference Chart', 'sheet_music', 'https://storage.example.com/materials/open-chords-chart.pdf', 'Focus on clean ring-out of the high E string on C major.'),
(2, 'Strumming Pattern Audio Guide', 'audio', 'https://storage.example.com/audio/down-down-up-down.mp3', 'Play along with this track at half speed daily.'),
-- Materials for Lesson 4 (Piano, upcoming)
(4, 'Czerny Op. 599 Ex. 1-5', 'exercise', 'https://storage.example.com/materials/czerny-op599.pdf', 'Work through measure 16 prior to Wednesday lesson.'),
-- Materials for Lesson 5 (Violin, upcoming)
(5, 'Bach Prelude Bowing Annotations', 'sheet_music', 'https://storage.example.com/materials/bach-prelude-annotated.pdf', 'Observe all up-bow notations in section B.');