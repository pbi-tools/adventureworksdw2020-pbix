let
    Source = Csv.Document(Web.Contents(HttpSource & "Product.csv"),[Delimiter=",", Columns=9, Encoding=65001, QuoteStyle=QuoteStyle.None]),
    #"Promoted Headers" = Table.PromoteHeaders(Source, [PromoteAllScalars=true]),
    #"Changed Type" = Table.TransformColumnTypes(#"Promoted Headers",{{"ProductKey", Int64.Type}, {"Product", type text}, {"Standard Cost", Currency.Type}, {"Color", type text}, {"List Price", Currency.Type}, {"Model", type text}, {"Subcategory", type text}})
in
    #"Changed Type"