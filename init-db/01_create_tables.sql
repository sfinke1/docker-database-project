-- 1. Students Table
CREATE TABLE students (
    student_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    skill_level VARCHAR(20) DEFAULT 'beginner', -- e.g., beginner, intermediate, advanced
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 2. Teachers Table
CREATE TABLE teachers (
    teacher_id SERIAL PRIMARY KEY,
    first_name VARCHAR(50) NOT NULL,
    last_name VARCHAR(50) NOT NULL,
    email VARCHAR(255) NOT NULL UNIQUE,
    phone VARCHAR(20),
    primary_instrument VARCHAR(50) NOT NULL,
    hourly_rate NUMERIC(6, 2) NOT NULL DEFAULT 50.00,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP
);

-- 3. Lessons Table
CREATE TABLE lessons (
    lesson_id SERIAL PRIMARY KEY,
    student_id INT NOT NULL,
    teacher_id INT NOT NULL,
    start_time TIMESTAMP WITH TIME ZONE NOT NULL,
    end_time TIMESTAMP WITH TIME ZONE NOT NULL,
    status VARCHAR(20) NOT NULL DEFAULT 'scheduled',
    notes TEXT,
    created_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    -- Foreign Key constraints
    CONSTRAINT fk_lessons_student
        FOREIGN KEY (student_id) 
        REFERENCES students(student_id) 
        ON DELETE CASCADE,
    CONSTRAINT fk_lessons_teacher
        FOREIGN KEY (teacher_id) 
        REFERENCES teachers(teacher_id) 
        ON DELETE RESTRICT,

    -- Business logic constraints
    CONSTRAINT chk_lesson_window 
        CHECK (end_time > start_time),
    CONSTRAINT chk_lesson_status 
        CHECK (status IN ('scheduled', 'in_progress', 'completed', 'canceled', 'no_show'))
);

-- 4. Lesson Materials Table
CREATE TABLE lesson_materials (
    material_id SERIAL PRIMARY KEY,
    lesson_id INT NOT NULL,
    title VARCHAR(150) NOT NULL,
    material_type VARCHAR(30) NOT NULL DEFAULT 'sheet_music', -- e.g., sheet_music, audio, exercise, tab
    file_url TEXT NOT NULL,
    instructions TEXT,
    uploaded_at TIMESTAMP WITH TIME ZONE DEFAULT CURRENT_TIMESTAMP,

    -- Foreign Key constraints
    CONSTRAINT fk_materials_lesson
        FOREIGN KEY (lesson_id) 
        REFERENCES lessons(lesson_id) 
        ON DELETE CASCADE
);