program cpp_pascal;
uses crt;
Type Arr = array [1..100] of integer;
var
        n: integer;
        A: Arr;

//Import variable of array [void]
procedure input(var A: Arr; var n: integer);
var i: integer;
begin
        write('Amount of array: ');
        readln(n);

        writeln(); //spacing

        for i:=1 to n do
        begin
                write('Type the variable of array number ', i, ' : ');
                readln(A[i]);
        end;
end;

//Export variable but no order [void]
procedure output_no_order(var A: Arr; var n: integer);
var i: integer;
begin
        for i:=1 to n do
                write(A[i]:5);
end;

//Order the variable (function), smaller->bigger [void]
procedure order(var A: Arr; var n: integer);
var i, j, k: integer;
begin
        for i:=1 to n-1 do
                for j:= i+1 to n do
                if A[i] > A[j] then
                begin
                        k:= A[i];
                        A[i]:=A[j];
                        A[j]:=k;
                end;
end;

//Export the order [void]
procedure output_ordered(var A: Arr; var n: integer);
var i: integer;
begin
        for i:=1 to n do
                write(A[i]:5);
end;

//int main()
begin
        clrscr;                //clear screen lol

        //Input
        input(A, n);

        writeln(); //spacing

        writeln('Output the import array:');
        output_no_order(A, n);
        writeln();             //spacing

        //order the number:
        order(A, n);

        //export after that:
        writeln();             //spacing
        writeln('After ordered:');
        output_ordered(A, n);

        readln();               //stop to read the program
end.
