pageextension 50102 EmployeeCard extends "Employee Card"
{
    layout
    {
        addafter(General)
        {
            group("Work Shift information")
            {
                Caption = 'General Information';

                field(WorkShift; Rec.WorkShift)
                {
                    ApplicationArea = All;
                }
                field(LeaveBalance; Rec.LeaveBalance)
                {
                    ApplicationArea = All;
                }
            }
        }
    }
}




