let
    Source = Csv.Document(Web.Contents(HttpSource & "Reseller.csv"),[Delimiter=",", Columns=8, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"ResellerKey", Int64.Type}, {"Business Type", type text}, {"Reseller", type text}, {"City", type text}, {"State-Province", type text}, {"Country-Region", type text}, {"Postal Code", type text}})
in
    #"Changed Type"