table 50102 LeaveType
{
    Caption = 'LeaveType';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; LeaveTypeID; Code[20]) { DataClassification = ToBeClassified; }
        field(2; Description; Text[100]) { DataClassification = ToBeClassified; }
    }

    keys
    {
        key(Key1; LeaveTypeID)
        {
            Clustered = true;
        }
    }

    var
        myInt: Integer;

    trigger OnInsert()
    begin

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
