# MyApp ProtoBuf

MyApps' Protocol Buffers & Type Code Generator

## Commands

```shell
make                    # generate all

make gen-go             # only generate go code based on proto
make gen-ts-onlytypes   # only generate typescript code based on proto
```

## Setup

<details>
    <summary>
       0. setup environments
    </summary>

- Goalng
- Python
- Node.js

</details>

<details>
    <summary>
        1. install protobuf for using <code>protoc</code> command
    </summary>

```shell
# 1. install protobuf compiler
brew install protobuf

# 2. check version
protoc --version
```

</details>

<details>
    <summary>
        2. install pkg <code>protoc-gen-go</code> for generating Golang code, then add to <code>$PATH</code> 
    </summary>

```shell
# 1. install pkg
go install google.golang.org/protobuf/cmd/protoc-gen-go@latest

# 2. add path
export PATH="$PATH:$(go env GOPATH)/bin" >> ~/.zshrc
source ~/.zshrc

# 3. check pkg's position & version
which protoc-gen-go
protoc-gen-go --version
```

</details>

<details>
    <summary>
        3. install pkg <code>ts-proto</code> for generating Typescript code
    </summary>

```shell
npm install
```

</details>

## Usage

### TypeScript

<details>
    <summary>
        1. install pkg inside project
    </summary>

```shell
cd <project>
yarn add git+https://github.com/BlaxBerry/myapp_protobuf.git
yarn add -D google-protobuf @types/google-protobuf
```

</details>

<details>
    <summary>
        2. import type then use
    </summary>

```tsx
import type { MessageNode, HTMLNode } from "myapp_protobuf/ts/scenario";
import type { ChatBotData } from "myapp_protobuf/ts/chat";
import type { NoteData } from "myapp_protobuf/ts/notes";
```

</details>

### Golang

<details>
    <summary>
       1. get pkg
    </summary>

```shell
go get github.com/BlaxBerry/myapp_protobuf/go/scenario@main
```

</details>

<details>
    <summary>
       2. import pkg then use
    </summary>

```go
import (
    "fmt"

    scenario "github.com/BlaxBerry/myapp_protobuf/go/scenario"
)

var MockMessageNode = &scenario.MessageNode{
	Id:    11,
	Title: "xxx",
	Text:  "yyy",
}

var MockHTMLNode = &scenario.HTMLNode{
	Id:    22,
	Title: "xxx",
	Text:  "yyy",
}

func main() {
    fmt.Println(MockMessageNode.Id)
    fmt.Println(MockMessageNode.Title)
    fmt.Println(MockMessageNode.Text)
}
```

</details>
