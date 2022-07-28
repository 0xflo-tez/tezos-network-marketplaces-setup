tezos-client -E https://rpc.tzkt.io/mainnet convert data '{
  "prim": "Pair",
  "args": [
    {
      "prim": "Pair",
      "args": [
        {
          "prim": "Pair",
          "args": [
            {
              "string": "KT1TybhR7XraG75JFYKSrh7KnxukMBT5dor6"
            },
            {
              "prim": "Pair",
              "args": [
                {
                  "int": "1618452581"
                },
                {
                  "string": "KT1AFA2mwNUMNd4SsujE1YYp29vd8BZejyKW"
                }
              ]
            }
          ]
        },
        {
          "prim": "Pair",
          "args": [
            {
              "prim": "True"
            },
            {
              "prim": "Pair",
              "args": [
                {
                  "string": "KT1D4L7JewyDeA21wDzfWJgRmw948bLaKymb"
                },
                []
              ]
            }
          ]
        }
      ]
    },
    {
      "prim": "Pair",
      "args": [
        {
          "prim": "Pair",
          "args": [
            {
              "string": "KT1RJ6PbjHpwc3M5rw5s2Nbmefwbuwbdxton"
            },
            {
              "prim": "Pair",
              "args": [
                {
                  "int": "763001"
                },
                []
              ]
            }
          ]
        },
        {
          "prim": "Pair",
          "args": [
            {
              "int": "0"
            },
            {
              "prim": "Pair",
              "args": [
                {
                  "int": "348155"
                },
                []
              ]
            }
          ]
        }
      ]
    }
  ]
}' from json to michelson