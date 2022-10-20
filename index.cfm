<cfoutput>
    <cfscript>
        spreadSheetFileName = GetDirectoryFromPath(GetCurrentTemplatePath()) & "sample.xls";
        sheetObj = SpreadsheetNew("Sample excel sheet");
        
        student =  queryNew("studentId, studentName, studentAge", "integer, varchar, integer", [{"studentId": 1, "studentName": 'Test student 1', "studentAge": 23 }, {"studentId": 2, "studentName": 'Test student 2', "studentAge": 22 }]  );
    
        spreadsheetAddRows( sheetObj, student )
    </cfscript>
    <cfspreadsheet action="write" filename="#spreadSheetFileName#" name="sheetObj" overwrite="true">

    <h3> Excel file created here: "#spreadSheetFileName#". Please check.</h3>
</cfoutput>
