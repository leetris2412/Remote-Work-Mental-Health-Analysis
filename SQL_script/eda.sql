CREATE DATABASE remote_workDB;
USE remote_workDB;

-- EDA
-- Đếm tổng số bản ghi
SELECT COUNT(*) AS total_records FROM raw_data;

-- Xem 10 bản ghi đầu tiên để hiểu thực tế dữ liệu hiển thị
SELECT * FROM raw_data LIMIT 10;

describe raw_data;

-- Missing Values
SELECT 
    SUM(CASE WHEN Mental_Health_Condition IS NULL OR Mental_Health_Condition = '' THEN 1 ELSE 0 END) AS missing_mental_health,
    SUM(CASE WHEN Physical_Activity IS NULL OR Physical_Activity = '' THEN 1 ELSE 0 END) AS missing_physical_activity
FROM raw_data;

-- Kiểm tra các loại hình công việc (Job Roles)
SELECT Job_Role, COUNT(*) as count
FROM raw_data
GROUP BY Job_Role
ORDER BY count DESC;

-- Kiểm tra hình thức làm việc (Work Location)
SELECT Work_Location, COUNT(*) as count
FROM raw_data
GROUP BY Work_Location;

-- Kiểm tra phân bổ giới tính
SELECT Gender, COUNT(*) as count
FROM raw_data
GROUP BY Gender;

-- Thống kê về Độ tuổi, Giờ làm việc và Số cuộc họp
SELECT 
    MIN(Age) AS min_age, MAX(Age) AS max_age, AVG(Age) AS avg_age,
    MIN(Hours_Worked_Per_Week) AS min_hours, MAX(Hours_Worked_Per_Week) AS max_hours, AVG(Hours_Worked_Per_Week) AS avg_hours,
    AVG(Number_of_Virtual_Meetings) AS avg_meetings
FROM raw_data;

-- Mức độ stress trung bình theo hình thức làm việc
-- (Giả sử Stress_Level có các giá trị Low, Medium, High)
SELECT Work_Location, Stress_Level, COUNT(*) as count
FROM raw_data
GROUP BY Work_Location, Stress_Level
ORDER BY Work_Location, count DESC;

-- Xem xét sự thay đổi năng suất theo Industry
SELECT Industry, Productivity_Change, COUNT(*) as count
FROM raw_data
GROUP BY Industry, Productivity_Change
ORDER BY Industry;

