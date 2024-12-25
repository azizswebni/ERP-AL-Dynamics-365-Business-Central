table 50101 "LeaveRequest"
{
    Caption = 'LeaveRequest';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; RequestID; Code[20]) { DataClassification = ToBeClassified; }
        field(2; EmployeeID; Code[20]) { DataClassification = ToBeClassified; TableRelation = Employee; }
        field(3; LeaveType; Enum LeaveType) { DataClassification = ToBeClassified; }
        field(4; StartDate; Date) { DataClassification = ToBeClassified; }
        field(5; EndDate; Date) { DataClassification = ToBeClassified; }
        field(6; Status; Enum LeaveStatus) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(Key1; RequestID)
        {
            Clustered = true;
        }

        key(key2; Status)
        {

        }

    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin
        // if Rec.Status <> Rec.Status::Pending then
        //     Error('Only Pending Request are Allowed');
        // if Rec.EmployeeID = '' then
        //     Error('EmployeeID is required');
        // if Rec.RequestID = '' then
        //     Error('RequestID is required');
    end;

    trigger OnModify()
    begin

    end;

    trigger OnDelete()
    begin

    end;

    trigger OnRename()
    begin

    end;

}