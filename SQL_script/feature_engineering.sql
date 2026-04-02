-- Phân nhóm độ tuổi (age binning)
ALTER TABLE Employees ADD COLUMN Age_Group VARCHAR(50);
SET SQL_SAFE_UPDATES = 0;

UPDATE Employees
SET Age_Group = CASE 
    WHEN Age < 30 THEN 'Under 30 (Gen Z)'
    WHEN Age BETWEEN 30 AND 45 THEN '30-45 (Millennials)'
    ELSE 'Over 45 (Gen X/Boomers)'
END; 

-- Phân nhóm Kinh nghiệm (Experience Level)
ALTER TABLE Jobs ADD COLUMN Experience_Level VARCHAR(20);

UPDATE Jobs
SET Experience_Level = CASE 
    WHEN Years_of_Experience < 5 THEN 'Junior'
    WHEN Years_of_Experience BETWEEN 5 AND 15 THEN 'Mid-Level'
    ELSE 'Senior'
END;

-- Phân loại Cường độ làm việc (Work Intensity)
ALTER TABLE Work_Habits ADD COLUMN Work_Intensity VARCHAR(20);

UPDATE Work_Habits
SET Work_Intensity = CASE 
    WHEN Hours_Worked_Per_Week > 50 OR Number_of_Virtual_Meetings > 10 THEN 'Overworked'
    WHEN Hours_Worked_Per_Week BETWEEN 35 AND 50 THEN 'Balanced'
    ELSE 'Light'
END;

SET SQL_SAFE_UPDATES = 0;

-- Tạo SQL View cho Power BI
CREATE VIEW View_Mental_Health_Analysis AS
SELECT 
    e.Employee_ID, e.Age_Group, e.Gender, e.Region,
    j.Job_Role, j.Industry, j.Experience_Level,
    w.Work_Location, w.Work_Intensity, w.Hours_Worked_Per_Week, w.Number_of_Virtual_Meetings,
    m.Stress_Level, m.Mental_Health_Condition, m.Productivity_Change, 
    m.Satisfaction_with_Remote_Work, m.Work_Life_Balance_Rating
FROM Employees e
JOIN Jobs j ON e.Employee_ID = j.Employee_ID
JOIN Work_Habits w ON e.Employee_ID = w.Employee_ID
JOIN Mental_Health m ON e.Employee_ID = m.Employee_ID;
