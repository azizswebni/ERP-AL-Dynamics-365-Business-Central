page 50103 "Leave Dashboard"
{
    PageType = RoleCenter;
    Caption = 'Leave Dashboard';

    layout
    {

        area(RoleCenter)
        {


            part(Part1; "Headline RC Order Processor")
            {
                ApplicationArea = basic, suite;

            }
            part(LeaveRequestListPart; "LeaveRequestList")
            {
                ApplicationArea = All;
                Caption = 'Leave Request';
            }

            part(EmployeeListPart; "Employee List")
            {
                ApplicationArea = All;
                Caption = 'List of employees';
            }






        }
    }
    //
    actions
    {
        area(embedding)
        {

            action(LeaveRequestList)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Leave Request List';
                Image = "Order";
                RunObject = Page "LeaveRequestList";
            }
            action(WorkShiftList)
            {
                ApplicationArea = Basic, Suite;
                Caption = 'Work Shift List';
                Image = "Order";
                RunObject = Page "WorkShiftList";
            }
        }

        area(Creation)
        {
            action("Add Work Shift")
            {
                RunObject = Page "WorkShiftList";
                Caption = 'Add Work Shift';
                RunPageMode = Create;
            }
            action("Report")
            {
                RunObject = report "Leave Summary Report";
                Caption = 'Report';
                RunPageMode = Create;
            }
        }
        area(Sections)

        {
            group(ApprovmentList)
            {
                action("Approvment List")
                {
                    RunObject = Page "Approve requests";
                    Caption = 'Approve requests';
                    ApplicationArea = all;
                }
            }

        }


    }

}
