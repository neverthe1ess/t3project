using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Lecture의 요약 설명입니다.
/// </summary>
public class Lecture
{
    public string LectureId { get; set; }
    public string DayOfWeek { get; set; }
    public string Subject { get; set; } // 변경된 부분
    public string Content { get; set; }
    public string Teacher { get; set; }
    public string Room { get; set; }

    public Lecture(string lectureId, string dayOfWeek, string subject, string content, string teacher, string room)
    {
        LectureId = lectureId;
        DayOfWeek = dayOfWeek;
        Subject = subject; 
        Content = content;
        Teacher = teacher;
        Room = room;
    }
}
