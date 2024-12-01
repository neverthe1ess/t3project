using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;

/// <summary>
/// Memo의 요약 설명입니다.
/// </summary>
public class Memo
{
    public string Title { get; set; }			// 메모의 제목을 반환하거나 설정
    public string Content { get; set; }		    // 메모의 내용을 반환하거나 설정
    public DateTime Written { get; set; }		// 메모의 작성 날짜를 반환하거나 설정
    public string FileName { get; set; }		// 메모를 저장한 파일의 이름을 반환하거나 설정

}