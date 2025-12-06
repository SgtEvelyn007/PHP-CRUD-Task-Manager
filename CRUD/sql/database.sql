-- Create database
CREATE DATABASE IF NOT EXISTS crud_app;
USE crud_app;

-- Create tasks table
CREATE TABLE IF NOT EXISTS tasks (
    id INT AUTO_INCREMENT PRIMARY KEY,
    title VARCHAR(255) NOT NULL,
    description TEXT,
    status ENUM('pending', 'in_progress', 'completed') DEFAULT 'pending',
    due_date DATE,
    created_at TIMESTAMP DEFAULT CURRENT_TIMESTAMP
);

-- Sample data
INSERT INTO tasks (title, description, status, due_date) VALUES
('Complete Assignment', 'PHP CRUD Application', 'pending', '2024-12-15'),
('Study for Exam', 'Database concepts', 'in_progress', '2024-12-10'),
('Buy Groceries', 'Milk, eggs, bread', 'completed', '2024-12-05');