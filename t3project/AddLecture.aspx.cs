﻿using System;
using System.Collections.Generic;
using System.Linq;
using System.Web;
using System.Web.UI;
using System.Web.UI.WebControls;

public partial class AddLecture : System.Web.UI.Page
{
    protected void Page_Load(object sender, EventArgs e)
    {
        updateUiFromDatabase();
    }

    private void updateUiFromDatabase() {
        //ddlLectureDay.DataSource = ;
        //ddlLectureRooms.DataSource = ;
        //ddlLectureTime.DataSource = ;
        //ddlTeacherList.DataSource = ;
    
    }
}