let
    Source = Csv.Document(Web.Contents(HttpSource & "Date.csv"),[Delimiter=",", Columns=7, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"DateKey", Int64.Type}, {"Date", type datetime}, {"Fiscal Year", type text}, {"Fiscal Quarter", type text}, {"Month", type text}, {"MonthKey", Int64.Type}, {"Full Date", type text}}),
    #"Extracted Date" = Table.TransformColumns(#"Changed Type",{{"Date", DateTime.Date, type date}})
in
    #"Extracted Date"