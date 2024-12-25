table 50103 "WorkShift"
{
    Caption = 'WorkShift';
    DataClassification = ToBeClassified;

    fields
    {
        field(1; ID; Code[10])
        {
            DataClassification = ToBeClassified;
            Caption = 'ID';
        }

        field(2; Description; Text[100])
        {
            DataClassification = ToBeClassified;
            Caption = 'Description';
        }

        field(3; Status; Enum WorkShiftStatus)
        {
            DataClassification = ToBeClassified;
            Caption = 'Status';
        }


    }

    keys
    {
        key(PK; ID)
        {
            Clustered = true;
        }
    }

    trigger OnInsert()
    begin
    end;

    trigger OnModify()
    begin
    end;

    trigger OnDelete()
    begin
    end;
}

