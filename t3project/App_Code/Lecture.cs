using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Lecture의 요약 설명입니다.
/// </summary>
public class Lecture
{
    public string day { get; set; }
    public string time { get; set; }
    public string content { get; set; }
    public string name { get; set; }
    public string room{ get; set; }

    public Lecture(string day, string time, string content, string name, string room)
    {
        this.day = day;
        this.time = time;
        this.content = content;
        this.name = name;
        this.room = room;   
    }
}