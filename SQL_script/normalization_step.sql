-- 1. Tạo bảng Employees (Thông tin cá nhân)
CREATE TABLE Employees AS
SELECT DISTINCT Employee_ID, Age, Gender, Region
FROM raw_data;

-- 2. Tạo bảng Jobs (Thông tin công việc)
CREATE TABLE Jobs AS
SELECT DISTINCT Employee_ID, Job_Role, Industry, Years_of_Experience
FROM raw_data;

-- 3. Tạo bảng Work_Habits (Thói quen làm việc)
CREATE TABLE Work_Habits AS
SELECT DISTINCT Employee_ID, Work_Location, Hours_Worked_Per_Week, Number_of_Virtual_Meetings
FROM raw_data;

-- 4. Tạo bảng Mental_Health (Sức khỏe và chỉ số hài lòng)
CREATE TABLE Mental_Health AS
SELECT DISTINCT Employee_ID, Stress_Level, Mental_Health_Condition, 
                Work_Life_Balance_Rating, Access_to_Mental_Health_Resources,
                Productivity_Change, Social_Isolation_Rating, 
                Satisfaction_with_Remote_Work, Company_Support_for_Remote_Work,
                Physical_Activity, Sleep_Quality
FROM raw_data;

-- 1. Chỉnh sửa kiểu dữ liệu cho bảng Employees
ALTER TABLE Employees MODIFY COLUMN Employee_ID VARCHAR(50);
ALTER TABLE Employees ADD PRIMARY KEY (Employee_ID);

-- 2. Chỉnh sửa cho bảng Jobs
ALTER TABLE Jobs MODIFY COLUMN Employee_ID VARCHAR(50);
ALTER TABLE Jobs ADD PRIMARY KEY (Employee_ID);

-- 3. Chỉnh sửa cho bảng Work_Habits
ALTER TABLE Work_Habits MODIFY COLUMN Employee_ID VARCHAR(50);
ALTER TABLE Work_Habits ADD PRIMARY KEY (Employee_ID);

-- 4. Chỉnh sửa cho bảng Mental_Health
ALTER TABLE Mental_Health MODIFY COLUMN Employee_ID VARCHAR(50);
ALTER TABLE Mental_Health ADD PRIMARY KEY (Employee_ID);

-- Liên kết bảng Jobs tới bảng Employees
ALTER TABLE Jobs
ADD CONSTRAINT fk_jobs_employees
FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID);

-- Liên kết bảng Work_Habits tới bảng Employees
ALTER TABLE Work_Habits
ADD CONSTRAINT fk_habits_employees
FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID);

-- Liên kết bảng Mental_Health tới bảng Employees
ALTER TABLE Mental_Health
ADD CONSTRAINT fk_mental_employees
FOREIGN KEY (Employee_ID) REFERENCES Employees(Employee_ID);