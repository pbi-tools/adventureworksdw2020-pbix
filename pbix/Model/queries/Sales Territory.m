let
    Source = Csv.Document(Web.Contents(HttpSource & "Sales Territory.csv"),[Delimiter=",", Columns=4, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"SalesTerritoryKey", Int64.Type}, {"Region", type text}, {"Country", type text}, {"Group", type text}})
in
    #"Changed Type"