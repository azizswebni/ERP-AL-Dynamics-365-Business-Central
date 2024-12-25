page 50104 "Approve requests"
{
    ApplicationArea = All;
    Caption = 'Approve requests';
    PageType = List;
    SourceTable = LeaveRequest;
    UsageCategory = Lists;
    InsertAllowed = false;
    ModifyAllowed = false;

    layout
    {
        area(Content)
        {
            repeater(General)
            {
                field(EmployeeID; Rec.EmployeeID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the EmployeeID field.', Comment = '%';
                }
                field(EndDate; Rec.EndDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the EndDate field.', Comment = '%';
                }
                field(LeaveType; Rec.LeaveType)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the LeaveType field.', Comment = '%';
                }
                field(RequestID; Rec.RequestID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the RequestID field.', Comment = '%';
                }
                field(StartDate; Rec.StartDate)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the StartDate field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }

    actions
    {
        area(Processing)
        {
            action("Approve request")
            {
                Caption = 'Approve request';

                trigger OnAction()
                var
                    LeaveManagement: Codeunit "Leave Management";
                begin
                    LeaveManagement.ApproveLeaveRequest(Rec.RequestID);
                    Message('request Approved');
                end;
            }
            action("Reject request")
            {
                Caption = 'Reject request';

                trigger OnAction()
                var
                    LeaveManagement: Codeunit "Leave Management";
                begin
                    LeaveManagement.RejectLeaveRequest(Rec.RequestID);
                    Message('request Rejected');
                end;
            }
        }
    }
}
