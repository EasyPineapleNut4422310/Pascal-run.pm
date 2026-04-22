unit jsonparser;

{$mode objfpc}{$H+}

interface

function ParseJSON(const s: string): string;

implementation

function ParseJSON(const s: string): string;
begin
  Result := 'Parsed JSON: ' + s;
end;

end.
