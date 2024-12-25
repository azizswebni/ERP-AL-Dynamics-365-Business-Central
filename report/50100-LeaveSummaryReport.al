report 50100 "Leave Summary Report"
{
    UsageCategory = ReportsAndAnalysis;
    ApplicationArea = All;
    Caption = 'Summary leave request';
    DefaultLayout = RDLC;
    RDLCLayout = './layout/LeaveSummaryReport.rdl';



    dataset
    {
        dataitem(EmployeeLeave; "LeaveRequest")
        {
            column("EmployeeID"; EmployeeID) { }
            column("LeaveType"; LeaveType) { }
            column("StartDate"; StartDate) { }
            column("EndDate"; EndDate) { }
        }
    }

    requestpage
    {

        layout
        {
            area(Content)
            {
                group("Date Range")
                {
                    field("Start Date"; StartDate)
                    {
                        ApplicationArea = All;
                    }
                    field("End Date"; EndDate)
                    {
                        ApplicationArea = All;
                    }
                    //
                    field("Employee"; filtercodeemployee)
                    {
                        TableRelation = Employee."No.";
                        ApplicationArea = All;
                        Caption = 'Employee';
                    }
                }
            }
        }

        actions
        {
            area(processing)
            {
                action("Generate Report")
                {
                    ApplicationArea = All;
                }
            }
        }
    }


    var
        StartDate: Date;
        EndDate: Date;

        //
        filtercodeemployee: Code[20];
        Employee: Record Employee;

}
