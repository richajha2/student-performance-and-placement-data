SELECT 
    Course_Name,
    COUNT(*) AS Total_Students,
    SUM(CASE WHEN Placement_Status = 'Placed' THEN 1 ELSE 0 END) AS Placed_Students,
    ROUND(SUM(CASE WHEN Placement_Status = 'Placed' THEN 1 ELSE 0 END) * 100.0 / COUNT(*), 2) AS Placement_Rate_Percentage
FROM `students (2)`
GROUP BY Course_Name;

SELECT 
    Placement_Status,
    ROUND(AVG(Attendance_Percentage), 2) AS Avg_Attendance,
    ROUND(AVG(Overall_Practice_Score), 2) AS Avg_Practice_Score,
    ROUND(AVG(Course_Engagement_Score), 2) AS Avg_Engagement_Score,
    ROUND(AVG(Mock_Interview_Score), 2) AS Avg_Mock_Interview
FROM `students (2)`
GROUP BY Placement_Status;

