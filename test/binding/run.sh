env GOOS=js GOARCH=wasm go test -c -o binding.wasm -trimpath .
go run ../../cmd/gowasm2csharp -wasm binding.wasm -namespace Go2DotNet.Test.Binding.AutoGen > gen.cs
dotnet run . -- -test.v
