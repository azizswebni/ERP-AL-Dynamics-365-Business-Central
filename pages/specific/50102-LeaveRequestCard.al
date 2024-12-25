page 50102 "LeaveRequestCard"
{
    Caption = 'LeaveRequestCard';
    PageType = Card;
    SourceTable = LeaveRequest;
    UsageCategory = Documents;
    layout
    {
        area(Content)
        {
            group(GroupName)
            {
                field(RequestID; Rec.RequestID) { }
                field(EmployeeID; Rec.EmployeeID) { }
                field(LeaveType; Rec.LeaveType) { }
                field(StartDate; Rec.StartDate) { }
                field(EndDate; Rec.EndDate) { }
                field(Status; Rec.Status)
                {
                    Editable = false;
                }
            }
        }

    }

    actions
    {
        area(Processing)
        {
            action(ActionName)
            {

                trigger OnAction()
                begin

                end;
            }
        }
    }

    var
        myInt: Integer;
}
