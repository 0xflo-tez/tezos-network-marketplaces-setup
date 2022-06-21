tezos-client -E https://dev-tezos-node.rarible.org convert data '{
  "prim": "Pair",
  "args": [
    {
      "prim": "Pair",
      "args": [
        {
          "prim": "Pair",
          "args": [
            {
              "prim": "Pair",
              "args": [
                [],
                []
              ]
            },
            {
              "prim": "Pair",
              "args": [
                {
                  "int": "1000000"
                },
                {
                  "int": "1000000"
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
                [],
                {
                  "prim": "False"
                }
              ]
            },
            {
              "prim": "Pair",
              "args": [
                {
                  "string": "KT1WvzYHCNBvDSdwafTHv7nJ1dWmZ8GCYuuC"
                },
                {
                  "prim": "Pair",
                  "args": [
                    {
                      "string": "KT1WvzYHCNBvDSdwafTHv7nJ1dWmZ8GCYuuC"
                    },
                    {
                      "prim": "True"
                    }
                  ]
                }
              ]
            }
          ]
        }
      ]
    },
    [
      {
        "prim": "Elt",
        "args": [
          {
            "int": "0"
          },
          [
            [
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "-1"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "-1"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "is_paused"
                  },
                  {
                    "prim": "bool"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "195"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "UH_PAUSED"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "5"
                        }
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_MIN_0_FA12"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "5"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "string"
                                    },
                                    {
                                      "string": "M_MIN_0_FA2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          }
                        ],
                        [
                          {
                            "prim": "DROP"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_override"
                  },
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "option",
                        "annots": [
                          "%beneficiary_override"
                        ],
                        "args": [
                          {
                            "prim": "address"
                          }
                        ]
                      },
                      {
                        "prim": "option",
                        "annots": [
                          "%fee_override"
                        ],
                        "args": [
                          {
                            "prim": "nat"
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "Payment token not registered"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CDR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "3"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "9"
                        }
                      ]
                    },
                    {
                      "prim": "ITER",
                      "args": [
                        [
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "ADD"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "4"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "UNIT"
                    },
                    {
                      "prim": "VIEW",
                      "args": [
                        {
                          "string": "get_default_management_fee"
                        },
                        {
                          "prim": "nat"
                        }
                      ]
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "214"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "10000"
                        }
                      ]
                    },
                    {
                      "prim": "SUB"
                    },
                    {
                      "prim": "ISNAT"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "22"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LE"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "R_INVALID_SHARES_TOTAL"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "3"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "9"
                        }
                      ]
                    },
                    {
                      "prim": "ITER",
                      "args": [
                        [
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "ADD"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "CDR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "197"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "10000"
                        }
                      ]
                    },
                    {
                      "prim": "SUB"
                    },
                    {
                      "prim": "ISNAT"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "22"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LE"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "R_INVALID_SHARES_TOTAL"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "12"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "11"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "9"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "12"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SENDER"
              },
              {
                "prim": "PAIR",
                "args": [
                  {
                    "int": "8"
                  }
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "DROP"
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "DROP"
              },
              {
                "prim": "SOME"
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "UPDATE"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "nat"
                  },
                  {
                    "int": "1"
                  }
                ]
              },
              {
                "prim": "ADD"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "operation"
                  }
                ]
              },
              {
                "prim": "PAIR"
              }
            ]
          ]
        ]
      },
      {
        "prim": "Elt",
        "args": [
          {
            "int": "1"
          },
          [
            [
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "-1"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        [
                          {
                            "prim": "IF_LEFT",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "-1"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "-1"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "is_paused"
                  },
                  {
                    "prim": "bool"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "195"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "UH_PAUSED"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "GET"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "333"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SENDER"
              },
              {
                "prim": "COMPARE"
              },
              {
                "prim": "NEQ"
              },
              {
                "prim": "IF",
                "args": [
                  [],
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "M_NO_SELF_FULFILL"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ]
                ]
              },
              {
                "prim": "SENDER"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CDR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "CDR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "338"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "14"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "14"
                        }
                      ]
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "342"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "EQ"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_ONLY_TARGET"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "13"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "13"
                        }
                      ]
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "345"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "NOW"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_EXPIRED"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "bool"
                        },
                        {
                          "prim": "False"
                        }
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "bool"
                              },
                              {
                                "prim": "False"
                              }
                            ]
                          }
                        ],
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "bool"
                              },
                              {
                                "prim": "True"
                              }
                            ]
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "mutez"
                        },
                        {
                          "int": "1"
                        }
                      ]
                    },
                    {
                      "prim": "AMOUNT"
                    },
                    {
                      "prim": "EDIV"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "UNIT"
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "CAR"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "GE"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_TEZ_AMOUNT_MISMATCH"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "operation"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CONTRACT",
                "annots": [
                  "%transfer"
                ],
                "args": [
                  {
                    "prim": "list",
                    "args": [
                      {
                        "prim": "pair",
                        "args": [
                          {
                            "prim": "address",
                            "annots": [
                              "%from_"
                            ]
                          },
                          {
                            "prim": "list",
                            "annots": [
                              "%txs"
                            ],
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address",
                                    "annots": [
                                      "%to_"
                                    ]
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%token_id"
                                        ]
                                      },
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%amount"
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "127"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "mutez"
                  },
                  {
                    "int": "0"
                  }
                ]
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "address"
                      },
                      {
                        "prim": "list",
                        "args": [
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "address"
                              },
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "nat"
                                  },
                                  {
                                    "prim": "nat"
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "address"
                      },
                      {
                        "prim": "pair",
                        "args": [
                          {
                            "prim": "nat"
                          },
                          {
                            "prim": "nat"
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "nat"
                  },
                  {
                    "int": "1"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "8"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CDR"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "8"
                  }
                ]
              },
              {
                "prim": "PAIR",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CONS"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "CONS"
              },
              {
                "prim": "TRANSFER_TOKENS"
              },
              {
                "prim": "CONS"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_default_management_fee"
                  },
                  {
                    "prim": "nat"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "214"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_treasury"
                  },
                  {
                    "prim": "address"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "171"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_override"
                  },
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "option",
                        "annots": [
                          "%beneficiary_override"
                        ],
                        "args": [
                          {
                            "prim": "address"
                          }
                        ]
                      },
                      {
                        "prim": "option",
                        "annots": [
                          "%fee_override"
                        ],
                        "args": [
                          {
                            "prim": "nat"
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "Payment token not registered"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CDR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DIG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "CDR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "367"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "CAR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "369"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SWAP"
                    }
                  ]
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "10000"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "6"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "10"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "MUL"
                    },
                    {
                      "prim": "EDIV"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "106"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        [
                          {
                            "prim": "CAR"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "CONTRACT",
                            "annots": [
                              "%transfer"
                            ],
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address",
                                    "annots": [
                                      "%from"
                                    ]
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "address",
                                        "annots": [
                                          "%to"
                                        ]
                                      },
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%value"
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "184"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "9"
                              }
                            ]
                          },
                          {
                            "prim": "SENDER"
                          },
                          {
                            "prim": "PAIR",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "TRANSFER_TOKENS"
                          },
                          {
                            "prim": "CONS"
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DIG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "ADD"
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "9"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "11"
                        }
                      ]
                    },
                    {
                      "prim": "ITER",
                      "args": [
                        [
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "10000"
                              }
                            ]
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "12"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "EDIV"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "114"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              [
                                {
                                  "prim": "CAR"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "8"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONTRACT",
                                  "annots": [
                                    "%transfer"
                                  ],
                                  "args": [
                                    {
                                      "prim": "pair",
                                      "args": [
                                        {
                                          "prim": "address",
                                          "annots": [
                                            "%from"
                                          ]
                                        },
                                        {
                                          "prim": "pair",
                                          "args": [
                                            {
                                              "prim": "address",
                                              "annots": [
                                                "%to"
                                              ]
                                            },
                                            {
                                              "prim": "nat",
                                              "annots": [
                                                "%value"
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "184"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "4"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "5"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CDR"
                                },
                                {
                                  "prim": "SENDER"
                                },
                                {
                                  "prim": "PAIR",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                }
                              ],
                              [
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "ADD"
                          },
                          {
                            "prim": "SWAP"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "10"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "SUB"
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "10"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "4"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LE"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "PH_INVALID_TOTAL"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "CONTRACT",
                            "annots": [
                              "%transfer"
                            ],
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address",
                                    "annots": [
                                      "%from"
                                    ]
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "address",
                                        "annots": [
                                          "%to"
                                        ]
                                      },
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%value"
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "184"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "ISNAT"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "124"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "5"
                              }
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "SENDER"
                          },
                          {
                            "prim": "PAIR",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "TRANSFER_TOKENS"
                          },
                          {
                            "prim": "CONS"
                          }
                        ],
                        [
                          {
                            "prim": "DROP",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DROP"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "10000"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "10"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "EDIV"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "65"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              [
                                {
                                  "prim": "CAR"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "4"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "CONTRACT",
                                  "annots": [
                                    "%transfer"
                                  ],
                                  "args": [
                                    {
                                      "prim": "list",
                                      "args": [
                                        {
                                          "prim": "pair",
                                          "args": [
                                            {
                                              "prim": "address",
                                              "annots": [
                                                "%from_"
                                              ]
                                            },
                                            {
                                              "prim": "list",
                                              "annots": [
                                                "%txs"
                                              ],
                                              "args": [
                                                {
                                                  "prim": "pair",
                                                  "args": [
                                                    {
                                                      "prim": "address",
                                                      "annots": [
                                                        "%to_"
                                                      ]
                                                    },
                                                    {
                                                      "prim": "pair",
                                                      "args": [
                                                        {
                                                          "prim": "nat",
                                                          "annots": [
                                                            "%token_id"
                                                          ]
                                                        },
                                                        {
                                                          "prim": "nat",
                                                          "annots": [
                                                            "%amount"
                                                          ]
                                                        }
                                                      ]
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "127"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "NIL",
                                  "args": [
                                    {
                                      "prim": "pair",
                                      "args": [
                                        {
                                          "prim": "address"
                                        },
                                        {
                                          "prim": "list",
                                          "args": [
                                            {
                                              "prim": "pair",
                                              "args": [
                                                {
                                                  "prim": "address"
                                                },
                                                {
                                                  "prim": "pair",
                                                  "args": [
                                                    {
                                                      "prim": "nat"
                                                    },
                                                    {
                                                      "prim": "nat"
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "NIL",
                                  "args": [
                                    {
                                      "prim": "pair",
                                      "args": [
                                        {
                                          "prim": "address"
                                        },
                                        {
                                          "prim": "pair",
                                          "args": [
                                            {
                                              "prim": "nat"
                                            },
                                            {
                                              "prim": "nat"
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "9"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CDR"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "12"
                                    }
                                  ]
                                },
                                {
                                  "prim": "PAIR",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "SENDER"
                                },
                                {
                                  "prim": "PAIR"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "ADD"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "NIL",
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address"
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "nat"
                                      },
                                      {
                                        "prim": "nat"
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "10"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "ITER",
                            "args": [
                              [
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "nat"
                                    },
                                    {
                                      "int": "10000"
                                    }
                                  ]
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "13"
                                    }
                                  ]
                                },
                                {
                                  "prim": "GET",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                },
                                {
                                  "prim": "MUL"
                                },
                                {
                                  "prim": "EDIV"
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "77"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    [
                                      {
                                        "prim": "CAR"
                                      }
                                    ]
                                  ]
                                },
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "nat"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "COMPARE"
                                },
                                {
                                  "prim": "LT"
                                },
                                {
                                  "prim": "IF",
                                  "args": [
                                    [
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "2"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "SWAP"
                                      },
                                      {
                                        "prim": "DUP"
                                      },
                                      {
                                        "prim": "DUG",
                                        "args": [
                                          {
                                            "int": "2"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "DUP",
                                        "args": [
                                          {
                                            "int": "7"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CDR"
                                      },
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "4"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CDR"
                                      },
                                      {
                                        "prim": "PAIR",
                                        "args": [
                                          {
                                            "int": "3"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CONS"
                                      },
                                      {
                                        "prim": "SWAP"
                                      }
                                    ],
                                    [
                                      {
                                        "prim": "SWAP"
                                      },
                                      {
                                        "prim": "DROP"
                                      }
                                    ]
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "ADD"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "10"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LE"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "string"
                                    },
                                    {
                                      "string": "PH_INVALID_TOTAL"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "SUB"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "4"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "ISNAT"
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "95"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CDR"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "PAIR",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONS"
                                }
                              ],
                              [
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "CONTRACT",
                            "annots": [
                              "%transfer"
                            ],
                            "args": [
                              {
                                "prim": "list",
                                "args": [
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "address",
                                        "annots": [
                                          "%from_"
                                        ]
                                      },
                                      {
                                        "prim": "list",
                                        "annots": [
                                          "%txs"
                                        ],
                                        "args": [
                                          {
                                            "prim": "pair",
                                            "args": [
                                              {
                                                "prim": "address",
                                                "annots": [
                                                  "%to_"
                                                ]
                                              },
                                              {
                                                "prim": "pair",
                                                "args": [
                                                  {
                                                    "prim": "nat",
                                                    "annots": [
                                                      "%token_id"
                                                    ]
                                                  },
                                                  {
                                                    "prim": "nat",
                                                    "annots": [
                                                      "%amount"
                                                    ]
                                                  }
                                                ]
                                              }
                                            ]
                                          }
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "157"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "NIL",
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address"
                                  },
                                  {
                                    "prim": "list",
                                    "args": [
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "address"
                                          },
                                          {
                                            "prim": "pair",
                                            "args": [
                                              {
                                                "prim": "nat"
                                              },
                                              {
                                                "prim": "nat"
                                              }
                                            ]
                                          }
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "SENDER"
                          },
                          {
                            "prim": "PAIR"
                          },
                          {
                            "prim": "CONS"
                          },
                          {
                            "prim": "TRANSFER_TOKENS"
                          },
                          {
                            "prim": "CONS"
                          }
                        ],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "10000"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "EDIV"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "36"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONTRACT",
                                  "args": [
                                    {
                                      "prim": "unit"
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "39"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "UNIT"
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "ADD"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "9"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "ITER",
                            "args": [
                              [
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "nat"
                                    },
                                    {
                                      "int": "10000"
                                    }
                                  ]
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "1"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "13"
                                    }
                                  ]
                                },
                                {
                                  "prim": "GET",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                },
                                {
                                  "prim": "MUL"
                                },
                                {
                                  "prim": "MUL"
                                },
                                {
                                  "prim": "EDIV"
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "46"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "COMPARE"
                                },
                                {
                                  "prim": "LT"
                                },
                                {
                                  "prim": "IF",
                                  "args": [
                                    [
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "8"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "2"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CDR"
                                      },
                                      {
                                        "prim": "CONTRACT",
                                        "args": [
                                          {
                                            "prim": "unit"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "IF_NONE",
                                        "args": [
                                          [
                                            {
                                              "prim": "PUSH",
                                              "args": [
                                                {
                                                  "prim": "int"
                                                },
                                                {
                                                  "int": "51"
                                                }
                                              ]
                                            },
                                            {
                                              "prim": "FAILWITH"
                                            }
                                          ],
                                          []
                                        ]
                                      },
                                      {
                                        "prim": "DUP",
                                        "args": [
                                          {
                                            "int": "3"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "UNIT"
                                      },
                                      {
                                        "prim": "TRANSFER_TOKENS"
                                      },
                                      {
                                        "prim": "CONS"
                                      },
                                      {
                                        "prim": "DUG",
                                        "args": [
                                          {
                                            "int": "7"
                                          }
                                        ]
                                      }
                                    ],
                                    [
                                      {
                                        "prim": "SWAP"
                                      },
                                      {
                                        "prim": "DROP"
                                      }
                                    ]
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "ADD"
                                },
                                {
                                  "prim": "SWAP"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "SUB"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LE"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "string"
                                    },
                                    {
                                      "string": "PH_INVALID_TOTAL"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "CONTRACT",
                                  "args": [
                                    {
                                      "prim": "unit"
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "58"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "UNIT"
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                }
                              ],
                              [
                                {
                                  "prim": "DROP",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                }
                              ]
                            ]
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "8"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "401"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "nat"
                  },
                  {
                    "int": "1"
                  }
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "8"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "9"
                  }
                ]
              },
              {
                "prim": "SUB"
              },
              {
                "prim": "ISNAT"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "401"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "UPDATE",
                "args": [
                  {
                    "int": "9"
                  }
                ]
              },
              {
                "prim": "SOME"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UPDATE"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "nat"
                  },
                  {
                    "int": "0"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "4"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "4"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "GET"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "404"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "9"
                  }
                ]
              },
              {
                "prim": "COMPARE"
              },
              {
                "prim": "EQ"
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "DIG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "UNPAIR"
                    },
                    {
                      "prim": "UNPAIR"
                    },
                    {
                      "prim": "UNPAIR"
                    },
                    {
                      "prim": "NONE",
                      "args": [
                        {
                          "prim": "pair",
                          "args": [
                            {
                              "prim": "address"
                            },
                            {
                              "prim": "pair",
                              "args": [
                                {
                                  "prim": "pair",
                                  "args": [
                                    {
                                      "prim": "address"
                                    },
                                    {
                                      "prim": "nat"
                                    }
                                  ]
                                },
                                {
                                  "prim": "pair",
                                  "args": [
                                    {
                                      "prim": "or",
                                      "args": [
                                        {
                                          "prim": "address"
                                        },
                                        {
                                          "prim": "or",
                                          "args": [
                                            {
                                              "prim": "pair",
                                              "args": [
                                                {
                                                  "prim": "address"
                                                },
                                                {
                                                  "prim": "nat"
                                                }
                                              ]
                                            },
                                            {
                                              "prim": "unit"
                                            }
                                          ]
                                        }
                                      ]
                                    },
                                    {
                                      "prim": "pair",
                                      "args": [
                                        {
                                          "prim": "nat"
                                        },
                                        {
                                          "prim": "pair",
                                          "args": [
                                            {
                                              "prim": "nat"
                                            },
                                            {
                                              "prim": "pair",
                                              "args": [
                                                {
                                                  "prim": "list",
                                                  "args": [
                                                    {
                                                      "prim": "pair",
                                                      "args": [
                                                        {
                                                          "prim": "nat"
                                                        },
                                                        {
                                                          "prim": "address"
                                                        }
                                                      ]
                                                    }
                                                  ]
                                                },
                                                {
                                                  "prim": "pair",
                                                  "args": [
                                                    {
                                                      "prim": "option",
                                                      "args": [
                                                        {
                                                          "prim": "timestamp"
                                                        }
                                                      ]
                                                    },
                                                    {
                                                      "prim": "option",
                                                      "args": [
                                                        {
                                                          "prim": "address"
                                                        }
                                                      ]
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                }
                              ]
                            }
                          ]
                        }
                      ]
                    },
                    {
                      "prim": "DIG",
                      "args": [
                        {
                          "int": "6"
                        }
                      ]
                    },
                    {
                      "prim": "CAR"
                    },
                    {
                      "prim": "UPDATE"
                    },
                    {
                      "prim": "PAIR"
                    },
                    {
                      "prim": "PAIR"
                    },
                    {
                      "prim": "PAIR"
                    },
                    {
                      "prim": "SWAP"
                    }
                  ],
                  [
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DROP"
                    }
                  ]
                ]
              },
              {
                "prim": "PAIR"
              }
            ]
          ]
        ]
      },
      {
        "prim": "Elt",
        "args": [
          {
            "int": "2"
          },
          [
            [
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "-1"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        [
                          {
                            "prim": "IF_LEFT",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "-1"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "-1"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "is_paused"
                  },
                  {
                    "prim": "bool"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "195"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "UH_PAUSED"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "GET"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "252"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SENDER"
              },
              {
                "prim": "COMPARE"
              },
              {
                "prim": "NEQ"
              },
              {
                "prim": "IF",
                "args": [
                  [],
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "M_NO_SELF_FULFILL"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ]
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "12"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "12"
                        }
                      ]
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "257"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SENDER"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "EQ"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_ONLY_TARGET"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "11"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "11"
                        }
                      ]
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "260"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "NOW"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_EXPIRED"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CDR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "CDR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "268"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "3"
                        }
                      ]
                    },
                    {
                      "prim": "CDR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "266"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "operation"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CONTRACT",
                "annots": [
                  "%transfer"
                ],
                "args": [
                  {
                    "prim": "list",
                    "args": [
                      {
                        "prim": "pair",
                        "args": [
                          {
                            "prim": "address",
                            "annots": [
                              "%from_"
                            ]
                          },
                          {
                            "prim": "list",
                            "annots": [
                              "%txs"
                            ],
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address",
                                    "annots": [
                                      "%to_"
                                    ]
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%token_id"
                                        ]
                                      },
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%amount"
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "127"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "mutez"
                  },
                  {
                    "int": "0"
                  }
                ]
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "address"
                      },
                      {
                        "prim": "list",
                        "args": [
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "address"
                              },
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "nat"
                                  },
                                  {
                                    "prim": "nat"
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "address"
                      },
                      {
                        "prim": "pair",
                        "args": [
                          {
                            "prim": "nat"
                          },
                          {
                            "prim": "nat"
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "nat"
                  },
                  {
                    "int": "1"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "9"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "PAIR",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CONS"
              },
              {
                "prim": "SENDER"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "CONS"
              },
              {
                "prim": "TRANSFER_TOKENS"
              },
              {
                "prim": "CONS"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_default_management_fee"
                  },
                  {
                    "prim": "nat"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "214"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_treasury"
                  },
                  {
                    "prim": "address"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "171"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_override"
                  },
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "option",
                        "annots": [
                          "%beneficiary_override"
                        ],
                        "args": [
                          {
                            "prim": "address"
                          }
                        ]
                      },
                      {
                        "prim": "option",
                        "annots": [
                          "%fee_override"
                        ],
                        "args": [
                          {
                            "prim": "nat"
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "Payment token not registered"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CDR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DIG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "CDR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "285"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "CAR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "287"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SWAP"
                    }
                  ]
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "10000"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "6"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "10"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "MUL"
                    },
                    {
                      "prim": "EDIV"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "106"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        [
                          {
                            "prim": "CAR"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "CONTRACT",
                            "annots": [
                              "%transfer"
                            ],
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address",
                                    "annots": [
                                      "%from"
                                    ]
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "address",
                                        "annots": [
                                          "%to"
                                        ]
                                      },
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%value"
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "184"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "9"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "13"
                              }
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "PAIR",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "TRANSFER_TOKENS"
                          },
                          {
                            "prim": "CONS"
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DIG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "ADD"
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "9"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "9"
                        }
                      ]
                    },
                    {
                      "prim": "ITER",
                      "args": [
                        [
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "10000"
                              }
                            ]
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "12"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "EDIV"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "114"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              [
                                {
                                  "prim": "CAR"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "8"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONTRACT",
                                  "annots": [
                                    "%transfer"
                                  ],
                                  "args": [
                                    {
                                      "prim": "pair",
                                      "args": [
                                        {
                                          "prim": "address",
                                          "annots": [
                                            "%from"
                                          ]
                                        },
                                        {
                                          "prim": "pair",
                                          "args": [
                                            {
                                              "prim": "address",
                                              "annots": [
                                                "%to"
                                              ]
                                            },
                                            {
                                              "prim": "nat",
                                              "annots": [
                                                "%value"
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "184"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "4"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "5"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CDR"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "14"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "PAIR",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                }
                              ],
                              [
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "ADD"
                          },
                          {
                            "prim": "SWAP"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "10"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "SUB"
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "10"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "4"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LE"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "PH_INVALID_TOTAL"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "CONTRACT",
                            "annots": [
                              "%transfer"
                            ],
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address",
                                    "annots": [
                                      "%from"
                                    ]
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "address",
                                        "annots": [
                                          "%to"
                                        ]
                                      },
                                      {
                                        "prim": "nat",
                                        "annots": [
                                          "%value"
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "184"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "ISNAT"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "124"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "SENDER"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "5"
                              }
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "PAIR",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "TRANSFER_TOKENS"
                          },
                          {
                            "prim": "CONS"
                          }
                        ],
                        [
                          {
                            "prim": "DROP",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DROP"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "10000"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "10"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "EDIV"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "65"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              [
                                {
                                  "prim": "CAR"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "4"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "CONTRACT",
                                  "annots": [
                                    "%transfer"
                                  ],
                                  "args": [
                                    {
                                      "prim": "list",
                                      "args": [
                                        {
                                          "prim": "pair",
                                          "args": [
                                            {
                                              "prim": "address",
                                              "annots": [
                                                "%from_"
                                              ]
                                            },
                                            {
                                              "prim": "list",
                                              "annots": [
                                                "%txs"
                                              ],
                                              "args": [
                                                {
                                                  "prim": "pair",
                                                  "args": [
                                                    {
                                                      "prim": "address",
                                                      "annots": [
                                                        "%to_"
                                                      ]
                                                    },
                                                    {
                                                      "prim": "pair",
                                                      "args": [
                                                        {
                                                          "prim": "nat",
                                                          "annots": [
                                                            "%token_id"
                                                          ]
                                                        },
                                                        {
                                                          "prim": "nat",
                                                          "annots": [
                                                            "%amount"
                                                          ]
                                                        }
                                                      ]
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "127"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "NIL",
                                  "args": [
                                    {
                                      "prim": "pair",
                                      "args": [
                                        {
                                          "prim": "address"
                                        },
                                        {
                                          "prim": "list",
                                          "args": [
                                            {
                                              "prim": "pair",
                                              "args": [
                                                {
                                                  "prim": "address"
                                                },
                                                {
                                                  "prim": "pair",
                                                  "args": [
                                                    {
                                                      "prim": "nat"
                                                    },
                                                    {
                                                      "prim": "nat"
                                                    }
                                                  ]
                                                }
                                              ]
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "NIL",
                                  "args": [
                                    {
                                      "prim": "pair",
                                      "args": [
                                        {
                                          "prim": "address"
                                        },
                                        {
                                          "prim": "pair",
                                          "args": [
                                            {
                                              "prim": "nat"
                                            },
                                            {
                                              "prim": "nat"
                                            }
                                          ]
                                        }
                                      ]
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "9"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CDR"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "12"
                                    }
                                  ]
                                },
                                {
                                  "prim": "PAIR",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "13"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "PAIR"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "ADD"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "NIL",
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address"
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "nat"
                                      },
                                      {
                                        "prim": "nat"
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "10"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "9"
                              }
                            ]
                          },
                          {
                            "prim": "ITER",
                            "args": [
                              [
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "nat"
                                    },
                                    {
                                      "int": "10000"
                                    }
                                  ]
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "13"
                                    }
                                  ]
                                },
                                {
                                  "prim": "GET",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                },
                                {
                                  "prim": "MUL"
                                },
                                {
                                  "prim": "EDIV"
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "77"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    [
                                      {
                                        "prim": "CAR"
                                      }
                                    ]
                                  ]
                                },
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "nat"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "COMPARE"
                                },
                                {
                                  "prim": "LT"
                                },
                                {
                                  "prim": "IF",
                                  "args": [
                                    [
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "2"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "SWAP"
                                      },
                                      {
                                        "prim": "DUP"
                                      },
                                      {
                                        "prim": "DUG",
                                        "args": [
                                          {
                                            "int": "2"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "DUP",
                                        "args": [
                                          {
                                            "int": "7"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CDR"
                                      },
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "4"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CDR"
                                      },
                                      {
                                        "prim": "PAIR",
                                        "args": [
                                          {
                                            "int": "3"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CONS"
                                      },
                                      {
                                        "prim": "SWAP"
                                      }
                                    ],
                                    [
                                      {
                                        "prim": "SWAP"
                                      },
                                      {
                                        "prim": "DROP"
                                      }
                                    ]
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "ADD"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "10"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LE"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "string"
                                    },
                                    {
                                      "string": "PH_INVALID_TOTAL"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "SUB"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "4"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "ISNAT"
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "95"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CDR"
                                },
                                {
                                  "prim": "SENDER"
                                },
                                {
                                  "prim": "PAIR",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONS"
                                }
                              ],
                              [
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "CONTRACT",
                            "annots": [
                              "%transfer"
                            ],
                            "args": [
                              {
                                "prim": "list",
                                "args": [
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "address",
                                        "annots": [
                                          "%from_"
                                        ]
                                      },
                                      {
                                        "prim": "list",
                                        "annots": [
                                          "%txs"
                                        ],
                                        "args": [
                                          {
                                            "prim": "pair",
                                            "args": [
                                              {
                                                "prim": "address",
                                                "annots": [
                                                  "%to_"
                                                ]
                                              },
                                              {
                                                "prim": "pair",
                                                "args": [
                                                  {
                                                    "prim": "nat",
                                                    "annots": [
                                                      "%token_id"
                                                    ]
                                                  },
                                                  {
                                                    "prim": "nat",
                                                    "annots": [
                                                      "%amount"
                                                    ]
                                                  }
                                                ]
                                              }
                                            ]
                                          }
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "157"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "NIL",
                            "args": [
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "address"
                                  },
                                  {
                                    "prim": "list",
                                    "args": [
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "address"
                                          },
                                          {
                                            "prim": "pair",
                                            "args": [
                                              {
                                                "prim": "nat"
                                              },
                                              {
                                                "prim": "nat"
                                              }
                                            ]
                                          }
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "5"
                              }
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "PAIR"
                          },
                          {
                            "prim": "CONS"
                          },
                          {
                            "prim": "TRANSFER_TOKENS"
                          },
                          {
                            "prim": "CONS"
                          }
                        ],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "10000"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "6"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "EDIV"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "36"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                },
                                {
                                  "prim": "CONTRACT",
                                  "args": [
                                    {
                                      "prim": "unit"
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "39"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "3"
                                    }
                                  ]
                                },
                                {
                                  "prim": "UNIT"
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                },
                                {
                                  "prim": "DUG",
                                  "args": [
                                    {
                                      "int": "6"
                                    }
                                  ]
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "ADD"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "9"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "9"
                              }
                            ]
                          },
                          {
                            "prim": "ITER",
                            "args": [
                              [
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "nat"
                                    },
                                    {
                                      "int": "10000"
                                    }
                                  ]
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "1"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DUP",
                                  "args": [
                                    {
                                      "int": "13"
                                    }
                                  ]
                                },
                                {
                                  "prim": "GET",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                },
                                {
                                  "prim": "MUL"
                                },
                                {
                                  "prim": "MUL"
                                },
                                {
                                  "prim": "EDIV"
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "46"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "CAR"
                                },
                                {
                                  "prim": "DUP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "mutez"
                                    },
                                    {
                                      "int": "0"
                                    }
                                  ]
                                },
                                {
                                  "prim": "COMPARE"
                                },
                                {
                                  "prim": "LT"
                                },
                                {
                                  "prim": "IF",
                                  "args": [
                                    [
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "8"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "DIG",
                                        "args": [
                                          {
                                            "int": "2"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "CDR"
                                      },
                                      {
                                        "prim": "CONTRACT",
                                        "args": [
                                          {
                                            "prim": "unit"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "IF_NONE",
                                        "args": [
                                          [
                                            {
                                              "prim": "PUSH",
                                              "args": [
                                                {
                                                  "prim": "int"
                                                },
                                                {
                                                  "int": "51"
                                                }
                                              ]
                                            },
                                            {
                                              "prim": "FAILWITH"
                                            }
                                          ],
                                          []
                                        ]
                                      },
                                      {
                                        "prim": "DUP",
                                        "args": [
                                          {
                                            "int": "3"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "UNIT"
                                      },
                                      {
                                        "prim": "TRANSFER_TOKENS"
                                      },
                                      {
                                        "prim": "CONS"
                                      },
                                      {
                                        "prim": "DUG",
                                        "args": [
                                          {
                                            "int": "7"
                                          }
                                        ]
                                      }
                                    ],
                                    [
                                      {
                                        "prim": "SWAP"
                                      },
                                      {
                                        "prim": "DROP"
                                      }
                                    ]
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "ADD"
                                },
                                {
                                  "prim": "SWAP"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "SUB"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "4"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LE"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "string"
                                    },
                                    {
                                      "string": "PH_INVALID_TOTAL"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "LT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "SENDER"
                                },
                                {
                                  "prim": "CONTRACT",
                                  "args": [
                                    {
                                      "prim": "unit"
                                    }
                                  ]
                                },
                                {
                                  "prim": "IF_NONE",
                                  "args": [
                                    [
                                      {
                                        "prim": "PUSH",
                                        "args": [
                                          {
                                            "prim": "int"
                                          },
                                          {
                                            "int": "58"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "FAILWITH"
                                      }
                                    ],
                                    []
                                  ]
                                },
                                {
                                  "prim": "DIG",
                                  "args": [
                                    {
                                      "int": "2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "UNIT"
                                },
                                {
                                  "prim": "TRANSFER_TOKENS"
                                },
                                {
                                  "prim": "CONS"
                                }
                              ],
                              [
                                {
                                  "prim": "DROP",
                                  "args": [
                                    {
                                      "int": "7"
                                    }
                                  ]
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "SWAP"
                                },
                                {
                                  "prim": "DROP"
                                }
                              ]
                            ]
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "NONE",
                "args": [
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "address"
                      },
                      {
                        "prim": "pair",
                        "args": [
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "address"
                              },
                              {
                                "prim": "option",
                                "args": [
                                  {
                                    "prim": "nat"
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "or",
                                "args": [
                                  {
                                    "prim": "address"
                                  },
                                  {
                                    "prim": "or",
                                    "args": [
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "address"
                                          },
                                          {
                                            "prim": "nat"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "unit"
                                      }
                                    ]
                                  }
                                ]
                              },
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "nat"
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "list",
                                        "args": [
                                          {
                                            "prim": "pair",
                                            "args": [
                                              {
                                                "prim": "nat"
                                              },
                                              {
                                                "prim": "address"
                                              }
                                            ]
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "option",
                                            "args": [
                                              {
                                                "prim": "timestamp"
                                              }
                                            ]
                                          },
                                          {
                                            "prim": "option",
                                            "args": [
                                              {
                                                "prim": "address"
                                              }
                                            ]
                                          }
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "UPDATE"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PAIR"
              }
            ]
          ]
        ]
      },
      {
        "prim": "Elt",
        "args": [
          {
            "int": "3"
          },
          [
            [
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "-1"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "-1"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "is_paused"
                  },
                  {
                    "prim": "bool"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "195"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "UH_PAUSED"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "12"
                  }
                ]
              },
              {
                "prim": "SENDER"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [],
                  [
                    {
                      "prim": "DROP",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "3"
                        }
                      ]
                    },
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "bool"
                              },
                              {
                                "prim": "False"
                              }
                            ]
                          }
                        ],
                        [
                          {
                            "prim": "IF_LEFT",
                            "args": [
                              [
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "bool"
                                    },
                                    {
                                      "prim": "False"
                                    }
                                  ]
                                }
                              ],
                              [
                                {
                                  "prim": "DROP"
                                },
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "bool"
                                    },
                                    {
                                      "prim": "True"
                                    }
                                  ]
                                }
                              ]
                            ]
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_PROXY_OFFER_ONLY_TEZ"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "12"
                        }
                      ]
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "121"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "3"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "5"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "GT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_MIN_0_FA12"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "nat"
                              },
                              {
                                "int": "0"
                              }
                            ]
                          },
                          {
                            "prim": "DUP",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "5"
                              }
                            ]
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "GT"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "string"
                                    },
                                    {
                                      "string": "M_MIN_0_FA2"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          }
                        ],
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "DUG",
                            "args": [
                              {
                                "int": "2"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "5"
                              }
                            ]
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "AMOUNT"
                          },
                          {
                            "prim": "EDIV"
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "UNIT"
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "EQ"
                          },
                          {
                            "prim": "IF",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "string"
                                    },
                                    {
                                      "string": "M_TEZ_AMOUNT_MISMATCH"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "4"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "get_override"
                  },
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "option",
                        "annots": [
                          "%beneficiary_override"
                        ],
                        "args": [
                          {
                            "prim": "address"
                          }
                        ]
                      },
                      {
                        "prim": "option",
                        "annots": [
                          "%fee_override"
                        ],
                        "args": [
                          {
                            "prim": "nat"
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "Payment token not registered"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "CDR"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "4"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "ITER",
                      "args": [
                        [
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "ADD"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "5"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "UNIT"
                    },
                    {
                      "prim": "VIEW",
                      "args": [
                        {
                          "string": "get_default_management_fee"
                        },
                        {
                          "prim": "nat"
                        }
                      ]
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "214"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "10000"
                        }
                      ]
                    },
                    {
                      "prim": "SUB"
                    },
                    {
                      "prim": "ISNAT"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "22"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LE"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "R_INVALID_SHARES_TOTAL"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "DUP",
                      "args": [
                        {
                          "int": "4"
                        }
                      ]
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "ITER",
                      "args": [
                        [
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "ADD"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "DUG",
                      "args": [
                        {
                          "int": "2"
                        }
                      ]
                    },
                    {
                      "prim": "CDR"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "136"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "10000"
                        }
                      ]
                    },
                    {
                      "prim": "SUB"
                    },
                    {
                      "prim": "ISNAT"
                    },
                    {
                      "prim": "IF_NONE",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "22"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        []
                      ]
                    },
                    {
                      "prim": "SWAP"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LE"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "R_INVALID_SHARES_TOTAL"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "4"
                  }
                ]
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "11"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "9"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "12"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "12"
                  }
                ]
              },
              {
                "prim": "PAIR",
                "args": [
                  {
                    "int": "7"
                  }
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "DROP"
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "DROP"
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "DROP"
              },
              {
                "prim": "SOME"
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "4"
                  }
                ]
              },
              {
                "prim": "UPDATE"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PUSH",
                "args": [
                  {
                    "prim": "nat"
                  },
                  {
                    "int": "1"
                  }
                ]
              },
              {
                "prim": "ADD"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "operation"
                  }
                ]
              },
              {
                "prim": "PAIR"
              }
            ]
          ]
        ]
      },
      {
        "prim": "Elt",
        "args": [
          {
            "int": "4"
          },
          [
            [
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "-1"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "-1"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        [
                          {
                            "prim": "IF_LEFT",
                            "args": [
                              [],
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "-1"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ]
                            ]
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "is_paused"
                  },
                  {
                    "prim": "bool"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "195"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "UH_PAUSED"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "SENDER"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "DUP",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "GET"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "237"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "COMPARE"
              },
              {
                "prim": "EQ"
              },
              {
                "prim": "IF",
                "args": [
                  [],
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "M_NOT_RETRACTOR"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "NONE",
                "args": [
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "address"
                      },
                      {
                        "prim": "pair",
                        "args": [
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "address"
                              },
                              {
                                "prim": "nat"
                              }
                            ]
                          },
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "or",
                                "args": [
                                  {
                                    "prim": "address"
                                  },
                                  {
                                    "prim": "or",
                                    "args": [
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "address"
                                          },
                                          {
                                            "prim": "nat"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "unit"
                                      }
                                    ]
                                  }
                                ]
                              },
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "nat"
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "nat"
                                      },
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "list",
                                            "args": [
                                              {
                                                "prim": "pair",
                                                "args": [
                                                  {
                                                    "prim": "nat"
                                                  },
                                                  {
                                                    "prim": "address"
                                                  }
                                                ]
                                              }
                                            ]
                                          },
                                          {
                                            "prim": "pair",
                                            "args": [
                                              {
                                                "prim": "option",
                                                "args": [
                                                  {
                                                    "prim": "timestamp"
                                                  }
                                                ]
                                              },
                                              {
                                                "prim": "option",
                                                "args": [
                                                  {
                                                    "prim": "address"
                                                  }
                                                ]
                                              }
                                            ]
                                          }
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UPDATE"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "NIL",
                "args": [
                  {
                    "prim": "operation"
                  }
                ]
              },
              {
                "prim": "PAIR"
              }
            ]
          ]
        ]
      },
      {
        "prim": "Elt",
        "args": [
          {
            "int": "5"
          },
          [
            [
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "-1"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "int"
                              },
                              {
                                "int": "-1"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ],
                        [
                          {
                            "prim": "IF_LEFT",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "-1"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "UNIT"
              },
              {
                "prim": "VIEW",
                "args": [
                  {
                    "string": "is_paused"
                  },
                  {
                    "prim": "bool"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "195"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "string"
                        },
                        {
                          "string": "UH_PAUSED"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "3"
                  }
                ]
              },
              {
                "prim": "CAR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "DUG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "GET"
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "int"
                        },
                        {
                          "int": "220"
                        }
                      ]
                    },
                    {
                      "prim": "FAILWITH"
                    }
                  ],
                  []
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "11"
                  }
                ]
              },
              {
                "prim": "IF_NONE",
                "args": [
                  [
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "CAR"
                    },
                    {
                      "prim": "SENDER"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "EQ"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_NOT_RETRACTOR"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "CAR"
                    },
                    {
                      "prim": "SENDER"
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "EQ"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "bool"
                              },
                              {
                                "prim": "True"
                              }
                            ]
                          }
                        ],
                        [
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "11"
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "224"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "NOW"
                          },
                          {
                            "prim": "COMPARE"
                          },
                          {
                            "prim": "GT"
                          }
                        ]
                      ]
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [],
                        [
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "string"
                              },
                              {
                                "string": "M_NOT_RETRACTOR"
                              }
                            ]
                          },
                          {
                            "prim": "FAILWITH"
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DUP"
              },
              {
                "prim": "GET",
                "args": [
                  {
                    "int": "5"
                  }
                ]
              },
              {
                "prim": "IF_LEFT",
                "args": [
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "bool"
                        },
                        {
                          "prim": "False"
                        }
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "IF_LEFT",
                      "args": [
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "bool"
                              },
                              {
                                "prim": "False"
                              }
                            ]
                          }
                        ],
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "bool"
                              },
                              {
                                "prim": "True"
                              }
                            ]
                          }
                        ]
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "IF",
                "args": [
                  [
                    {
                      "prim": "DUP"
                    },
                    {
                      "prim": "GET",
                      "args": [
                        {
                          "int": "7"
                        }
                      ]
                    },
                    {
                      "prim": "PUSH",
                      "args": [
                        {
                          "prim": "nat"
                        },
                        {
                          "int": "0"
                        }
                      ]
                    },
                    {
                      "prim": "COMPARE"
                    },
                    {
                      "prim": "LT"
                    },
                    {
                      "prim": "IF",
                      "args": [
                        [
                          {
                            "prim": "DUP"
                          },
                          {
                            "prim": "CAR"
                          },
                          {
                            "prim": "CONTRACT",
                            "args": [
                              {
                                "prim": "unit"
                              }
                            ]
                          },
                          {
                            "prim": "IF_NONE",
                            "args": [
                              [
                                {
                                  "prim": "PUSH",
                                  "args": [
                                    {
                                      "prim": "int"
                                    },
                                    {
                                      "int": "231"
                                    }
                                  ]
                                },
                                {
                                  "prim": "FAILWITH"
                                }
                              ],
                              []
                            ]
                          },
                          {
                            "prim": "NIL",
                            "args": [
                              {
                                "prim": "operation"
                              }
                            ]
                          },
                          {
                            "prim": "SWAP"
                          },
                          {
                            "prim": "PUSH",
                            "args": [
                              {
                                "prim": "mutez"
                              },
                              {
                                "int": "1"
                              }
                            ]
                          },
                          {
                            "prim": "DIG",
                            "args": [
                              {
                                "int": "3"
                              }
                            ]
                          },
                          {
                            "prim": "GET",
                            "args": [
                              {
                                "int": "7"
                              }
                            ]
                          },
                          {
                            "prim": "MUL"
                          },
                          {
                            "prim": "UNIT"
                          },
                          {
                            "prim": "TRANSFER_TOKENS"
                          },
                          {
                            "prim": "CONS"
                          }
                        ],
                        [
                          {
                            "prim": "DROP"
                          },
                          {
                            "prim": "NIL",
                            "args": [
                              {
                                "prim": "operation"
                              }
                            ]
                          }
                        ]
                      ]
                    }
                  ],
                  [
                    {
                      "prim": "DROP"
                    },
                    {
                      "prim": "NIL",
                      "args": [
                        {
                          "prim": "operation"
                        }
                      ]
                    }
                  ]
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "2"
                  }
                ]
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "UNPAIR"
              },
              {
                "prim": "NONE",
                "args": [
                  {
                    "prim": "pair",
                    "args": [
                      {
                        "prim": "address"
                      },
                      {
                        "prim": "pair",
                        "args": [
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "address"
                              },
                              {
                                "prim": "option",
                                "args": [
                                  {
                                    "prim": "nat"
                                  }
                                ]
                              }
                            ]
                          },
                          {
                            "prim": "pair",
                            "args": [
                              {
                                "prim": "or",
                                "args": [
                                  {
                                    "prim": "address"
                                  },
                                  {
                                    "prim": "or",
                                    "args": [
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "address"
                                          },
                                          {
                                            "prim": "nat"
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "unit"
                                      }
                                    ]
                                  }
                                ]
                              },
                              {
                                "prim": "pair",
                                "args": [
                                  {
                                    "prim": "nat"
                                  },
                                  {
                                    "prim": "pair",
                                    "args": [
                                      {
                                        "prim": "list",
                                        "args": [
                                          {
                                            "prim": "pair",
                                            "args": [
                                              {
                                                "prim": "nat"
                                              },
                                              {
                                                "prim": "address"
                                              }
                                            ]
                                          }
                                        ]
                                      },
                                      {
                                        "prim": "pair",
                                        "args": [
                                          {
                                            "prim": "option",
                                            "args": [
                                              {
                                                "prim": "timestamp"
                                              }
                                            ]
                                          },
                                          {
                                            "prim": "option",
                                            "args": [
                                              {
                                                "prim": "address"
                                              }
                                            ]
                                          }
                                        ]
                                      }
                                    ]
                                  }
                                ]
                              }
                            ]
                          }
                        ]
                      }
                    ]
                  }
                ]
              },
              {
                "prim": "DIG",
                "args": [
                  {
                    "int": "6"
                  }
                ]
              },
              {
                "prim": "UPDATE"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PAIR"
              },
              {
                "prim": "SWAP"
              },
              {
                "prim": "PAIR"
              }
            ]
          ]
        ]
      }
    ]
  ]
}' from json to michelson