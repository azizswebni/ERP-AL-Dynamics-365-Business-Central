tableextension 50100 EmployeeExtension extends Employee
{
    Caption = 'Employee Extension';

    fields
    {
        field(50100; WorkShift; Code[20])
        {
            Caption = 'WorkShift';
            DataClassification = ToBeClassified;
            TableRelation = WorkShift.ID;


        }
        field(50101; LeaveBalance; integer)
        {

            Caption = 'Leave Balance';
            DataClassification = ToBeClassified;

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

    trigger OnRename()
    begin

    end;
}

