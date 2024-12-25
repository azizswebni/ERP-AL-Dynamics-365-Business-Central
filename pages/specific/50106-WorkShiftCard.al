page 50106 WorkShiftCard
{
    Caption = 'WorkShift Card';
    PageType = Card;
    SourceTable = WorkShift;

    layout
    {
        area(Content)
        {
            group(General)
            {
                Caption = 'General';

                field(Description; Rec.Description)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Description field.', Comment = '%';
                }
                field(ID; Rec.ID)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the ID field.', Comment = '%';
                }
                field(Status; Rec.Status)
                {
                    ApplicationArea = All;
                    ToolTip = 'Specifies the value of the Status field.', Comment = '%';
                }
            }
        }
    }
}
