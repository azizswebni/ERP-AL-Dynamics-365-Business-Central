codeunit 50100 "Leave Management"
{

    procedure ApproveLeaveRequest(RequestID: Code[20])
    var
        LeaveRequest: Record "LeaveRequest";
        Email: Codeunit Email;
        EmailMessage: Codeunit "Email Message";
        Employee: Record Employee;
    begin
        if LeaveRequest.Get(RequestID) then begin
            LeaveRequest.Status := LeaveRequest.Status::Approved;
            LeaveRequest.Modify();
            /*EmailMessage.Create(Employee."E-Mail", 'This is the subject', 'This is the body');
            Email.Send(EmailMessage, Enum::"Email Scenario"::Default);*/
        end;
    end;

    procedure RejectLeaveRequest(RequestID: Code[20])
    var
        LeaveRequest: Record "LeaveRequest";
    begin
        if LeaveRequest.Get(RequestID) then begin
            LeaveRequest.Status := LeaveRequest.Status::Rejected;
            LeaveRequest.Modify();
        end;
    end;
}
