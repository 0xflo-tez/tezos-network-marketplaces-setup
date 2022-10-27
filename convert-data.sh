tezos-client -E https://rpc.tzkt.io/mainnet convert data '{
			"prim": "Pair",
			"args": [{
					"prim": "Pair",
					"args": [{
							"prim": "Pair",
							"args": [{
									"prim": "Pair",
									"args": [{
											"prim": "Pair",
											"args": [{
													"string": "tz1fepn7jZsCYBqCDhpM63hzh9g2Ytqk4Tpv"
												},
												[]
											]
										},
										{
											"prim": "Pair",
											"args": [
												[],
												{
													"int": "0"
												}
											]
										}
									]
								},
								{
									"prim": "Pair",
									"args": [{
											"prim": "Pair",
											"args": [
												[],
												{
													"int": "0"
												}
											]
										},
										{
											"prim": "Pair",
											"args": [
												[{
														"prim": "Elt",
														"args": [{
																"string": "auction"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "auction_bid"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "auction_cancel"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "auction_fulfill"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "collection_offer"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "collection_offer_accept"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "collection_offer_cancel"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "listing"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "listing_accept"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "listing_cancel"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "offer"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "offer_accept"
															},
															{
																"prim": "True"
															}
														]
													},
													{
														"prim": "Elt",
														"args": [{
																"string": "offer_cancel"
															},
															{
																"prim": "True"
															}
														]
													}
												],
												{
													"prim": "Pair",
													"args": [
														[],
														{
															"int": "25"
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
							"prim": "Pair",
							"args": [{
									"prim": "Pair",
									"args": [{
											"prim": "Pair",
											"args": [
												[],
												[]
											]
										},
										{
											"prim": "Pair",
											"args": [{
													"int": "0"
												},
												{
													"prim": "False"
												}
											]
										}
									]
								},
								{
									"prim": "Pair",
									"args": [{
											"prim": "Pair",
											"args": [
												[{
													"prim": "Elt",
													"args": [{
															"string": ""
														},
														{
															"bytes": "697066733a2f2f516d52476858556e6332733463765774576b626b434c45714470366d34735a7641616f5243387a5659373170505a"
														}
													]
												}],
												[]
											]
										},
										{
											"prim": "Pair",
											"args": [{
													"int": "0"
												},
												{
													"prim": "Pair",
													"args": [{
															"prim": "False"
														},
														{
															"string": "tz1dtzgLYUHMhP6sWeFtFsHkHqyPezBBPLsZ"
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
				[{
						"prim": "Elt",
						"args": [{
								"int": "0"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
													"prim": "IF_LEFT",
													"args": [
														[],
														[{
																"prim": "PUSH",
																"args": [{
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
												}],
												[{
														"prim": "PUSH",
														"args": [{
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
										}],
										[{
												"prim": "PUSH",
												"args": [{
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "auction"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "3600"
										}
									]
								},
								{
									"prim": "SWAP"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AUCTION_MIN_1_HOUR"
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
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "300"
										}
									]
								},
								{
									"prim": "SWAP"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AUCTION_INCR_MIN_5_MIN"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "BID_INCR_TBL_DOESNT_EXIST"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "NONE",
									"args": [{
										"prim": "timestamp"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "SOME"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "UPDATE"
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
									"prim": "PAIR"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "SELF_ADDRESS"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
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
									"args": [{
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
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "1"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[],
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}],
												[{
														"prim": "PUSH",
														"args": [{
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
										}],
										[{
												"prim": "PUSH",
												"args": [{
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "auction_bid"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AUCTION_DOESNT_EXIST"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "800"
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
									"args": [{
										"int": "5"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "SELLER_CANNOT_BID"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "800"
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
									"args": [{
										"int": "6"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "TOP_BIDDER_CANNOT_BID"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "800"
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
											"prim": "PUSH",
											"args": [{
													"prim": "bool"
												},
												{
													"prim": "False"
												}
											]
										}],
										[{
												"prim": "DROP"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "bool"
													},
													{
														"prim": "True"
													}
												]
											}
										]
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "800"
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "DUP",
												"args": [{
													"int": "4"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "4"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"prim": "GET",
												"args": [{
													"int": "4"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "816"
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "AUCTION_ENDED"
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
												"prim": "PUSH",
												"args": [{
														"prim": "mutez"
													},
													{
														"int": "1000000"
													}
												]
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "bool"
													},
													{
														"prim": "False"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "7"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "7"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"prim": "CAR"
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "697"
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
												"prim": "ITER",
												"args": [
													[{
															"prim": "DUP"
														},
														{
															"prim": "CAR"
														},
														{
															"prim": "DUP",
															"args": [{
																"int": "8"
															}]
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
															"prim": "CDR"
														},
														{
															"prim": "DUP",
															"args": [{
																"int": "8"
															}]
														},
														{
															"prim": "GET"
														},
														{
															"prim": "IF_NONE",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
																				"prim": "int"
																			},
																			{
																				"int": "800"
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
															"args": [{
																"int": "6"
															}]
														},
														{
															"prim": "CDR"
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
																[{
																		"prim": "SWAP"
																	},
																	{
																		"prim": "DROP"
																	},
																	{
																		"prim": "PUSH",
																		"args": [{
																				"prim": "bool"
																			},
																			{
																				"prim": "True"
																			}
																		]
																	},
																	{
																		"prim": "SWAP"
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
															"args": [{
																"int": "2"
															}]
														},
														{
															"prim": "IF",
															"args": [
																[{
																	"prim": "DROP"
																}],
																[{
																		"prim": "DIG",
																		"args": [{
																			"int": "2"
																		}]
																	},
																	{
																		"prim": "DROP"
																	},
																	{
																		"prim": "CDR"
																	},
																	{
																		"prim": "SWAP"
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
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "PUSH",
												"args": [{
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
												"prim": "EQ"
											},
											{
												"prim": "IF",
												"args": [
													[{
															"prim": "DROP"
														},
														{
															"prim": "PUSH",
															"args": [{
																	"prim": "mutez"
																},
																{
																	"int": "1"
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
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "ADD"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "AMOUNT"
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "BID_TOO_LOW"
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
												"args": [{
													"int": "8"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "NOW"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"prim": "GET",
												"args": [{
													"int": "4"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "816"
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
												"prim": "SUB"
											},
											{
												"prim": "ISNAT"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "832"
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
												"prim": "COMPARE"
											},
											{
												"prim": "LT"
											},
											{
												"prim": "IF",
												"args": [
													[{
															"prim": "DIG",
															"args": [{
																"int": "4"
															}]
														},
														{
															"prim": "DROP"
														},
														{
															"prim": "DUP",
															"args": [{
																"int": "7"
															}]
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
															"prim": "CAR"
														},
														{
															"prim": "CAR"
														},
														{
															"prim": "CAR"
														},
														{
															"prim": "CDR"
														},
														{
															"prim": "DUP",
															"args": [{
																"int": "2"
															}]
														},
														{
															"prim": "GET"
														},
														{
															"prim": "IF_NONE",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
																				"prim": "int"
																			},
																			{
																				"int": "800"
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
															"prim": "GET",
															"args": [{
																"int": "3"
															}]
														},
														{
															"prim": "INT"
														},
														{
															"prim": "NOW"
														},
														{
															"prim": "ADD"
														},
														{
															"prim": "SOME"
														}
													],
													[{
															"prim": "DROP",
															"args": [{
																"int": "4"
															}]
														},
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
												"prim": "NIL",
												"args": [{
													"prim": "operation"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "4"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "4"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "837"
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
												"args": [{
													"int": "5"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CDR"
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
										[{
												"prim": "DROP"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "3"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "AMOUNT"
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "BID_TOO_LOW"
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
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "DROP"
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "800"
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
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "INT"
											},
											{
												"prim": "NOW"
											},
											{
												"prim": "ADD"
											},
											{
												"prim": "SOME"
											},
											{
												"prim": "NIL",
												"args": [{
													"prim": "operation"
												}]
											}
										]
									]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "3"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "848"
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
									"prim": "AMOUNT"
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "UPDATE",
									"args": [{
										"int": "6"
									}]
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
									"prim": "DUP"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "850"
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
									"prim": "UNPAIR"
								},
								{
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "10"
									}]
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
									"prim": "SOME"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "UPDATE"
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
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "2"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}],
												[{
														"prim": "PUSH",
														"args": [{
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
										}],
										[{
												"prim": "PUSH",
												"args": [{
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "auction_cancel"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AUCTION_DOESNT_EXIST"
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
									"args": [{
										"int": "3"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "863"
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
									"args": [{
										"int": "5"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "UNAUTHORIZED"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "863"
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AUCTION_ALREADY_STARTED"
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
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "863"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "863"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CONS"
								},
								{
									"prim": "SELF_ADDRESS"
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
									"prim": "DIG",
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "NONE",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "pair",
														"args": [{
																"prim": "nat"
															},
															{
																"prim": "option",
																"args": [{
																	"prim": "timestamp"
																}]
															}
														]
													}
												]
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "pair",
														"args": [{
																"prim": "pair",
																"args": [{
																		"prim": "nat"
																	},
																	{
																		"prim": "nat"
																	}
																]
															},
															{
																"prim": "nat"
															}
														]
													},
													{
														"prim": "pair",
														"args": [{
																"prim": "address"
															},
															{
																"prim": "pair",
																"args": [{
																		"prim": "address"
																	},
																	{
																		"prim": "mutez"
																	}
																]
															}
														]
													}
												]
											}
										]
									}]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "UPDATE"
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
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "3"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
															"prim": "IF_LEFT",
															"args": [
																[],
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}],
														[{
																"prim": "PUSH",
																"args": [{
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
												}]
											]
										}],
										[{
												"prim": "PUSH",
												"args": [{
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "auction_fulfill"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AUCTION_DOESNT_EXIST"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
											"prim": "PUSH",
											"args": [{
													"prim": "bool"
												},
												{
													"prim": "False"
												}
											]
										}],
										[{
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
												"args": [{
													"int": "2"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "DUG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "895"
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
												"prim": "GET",
												"args": [{
													"int": "4"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "687"
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
												"prim": "GE"
											}
										]
									]
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AUCTION_NOT_ENDED"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "5"
									}]
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
										[{
											"prim": "PUSH",
											"args": [{
													"prim": "bool"
												},
												{
													"prim": "True"
												}
											]
										}],
										[{
												"prim": "SWAP"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "DUG",
												"args": [{
													"int": "2"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "DUG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "895"
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
												"args": [{
													"int": "6"
												}]
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
											}
										]
									]
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "UNAUTHORIZED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "VIEW",
									"args": [{
											"string": "royalty_splits"
										},
										{
											"prim": "pair",
											"args": [{
													"prim": "nat",
													"annots": [
														"%royalty"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%address"
																]
															},
															{
																"prim": "nat",
																"annots": [
																	"%pct"
																]
															}
														]
													}],
													"annots": [
														"%splits"
													]
												}
											]
										}
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "117"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "ITER",
									"args": [
										[{
												"prim": "DUP"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "7"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "895"
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
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CDR"
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
													[{
															"prim": "PUSH",
															"args": [{
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
											},
											{
												"prim": "CAR"
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
													[{
															"prim": "PUSH",
															"args": [{
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
												"prim": "CAR"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "PUSH",
												"args": [{
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
													[{
															"prim": "DUG",
															"args": [{
																"int": "2"
															}]
														},
														{
															"prim": "CAR"
														},
														{
															"prim": "CONTRACT",
															"args": [{
																"prim": "unit"
															}]
														},
														{
															"prim": "IF_NONE",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
																				"prim": "string"
																			},
																			{
																				"string": "ROYALTY_SPLIT_FAILED"
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
															"args": [{
																"int": "3"
															}]
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
															"prim": "SWAP"
														},
														{
															"prim": "DIG",
															"args": [{
																"int": "2"
															}]
														},
														{
															"prim": "ADD"
														},
														{
															"prim": "SWAP"
														}
													],
													[{
														"prim": "DROP",
														"args": [{
															"int": "2"
														}]
													}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CDR"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "913"
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
									"prim": "GT"
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "SWAP"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "PLATFORM_FEES_FAILED"
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
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "895"
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
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CDR"
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "913"
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
												"prim": "UNIT"
											},
											{
												"prim": "TRANSFER_TOKENS"
											},
											{
												"prim": "CONS"
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "7"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "895"
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
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CDR"
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "913"
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
												"prim": "ADD"
											}
										],
										[]
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CDR"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "913"
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
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "919"
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
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "919"
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
									"prim": "PUSH",
									"args": [{
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
										[{
												"prim": "DIG",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "5"
												}]
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
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "895"
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
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "ISSUER_PAY_FAILED"
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
												"args": [{
													"int": "3"
												}]
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
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "ADD"
											},
											{
												"prim": "DROP"
											}
										],
										[{
												"prim": "DROP",
												"args": [{
													"int": "2"
												}]
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
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "895"
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
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CONS"
								},
								{
									"prim": "SELF_ADDRESS"
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
									"prim": "DIG",
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "NONE",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "pair",
														"args": [{
																"prim": "nat"
															},
															{
																"prim": "option",
																"args": [{
																	"prim": "timestamp"
																}]
															}
														]
													}
												]
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "pair",
														"args": [{
																"prim": "pair",
																"args": [{
																		"prim": "nat"
																	},
																	{
																		"prim": "nat"
																	}
																]
															},
															{
																"prim": "nat"
															}
														]
													},
													{
														"prim": "pair",
														"args": [{
																"prim": "address"
															},
															{
																"prim": "pair",
																"args": [{
																		"prim": "address"
																	},
																	{
																		"prim": "mutez"
																	}
																]
															}
														]
													}
												]
											}
										]
									}]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "UPDATE"
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
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "4"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
															"prim": "IF_LEFT",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}],
														[{
																"prim": "PUSH",
																"args": [{
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
												}]
											]
										}],
										[{
												"prim": "PUSH",
												"args": [{
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "collection_offer"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NO_0_XTZ_OFFERS"
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
									"prim": "CAR"
								},
								{
									"prim": "PUSH",
									"args": [{
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NO_0_AMOUNT_OFFERS"
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
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "MUL"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "AMOUNT"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NOT_ENOUGH_XTZ"
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
									"prim": "AMOUNT"
								},
								{
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "522"
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
									"prim": "PUSH",
									"args": [{
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
										[{
												"prim": "NIL",
												"args": [{
													"prim": "operation"
												}]
											},
											{
												"prim": "SENDER"
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "524"
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
												"args": [{
													"int": "2"
												}]
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
										[{
												"prim": "DROP"
											},
											{
												"prim": "NIL",
												"args": [{
													"prim": "operation"
												}]
											}
										]
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "UNPAIR"
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
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "SOME"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "UPDATE"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "PUSH",
									"args": [{
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
									"prim": "SWAP"
								},
								{
									"prim": "PAIR"
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "5"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[],
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}]
											]
										}],
										[{
												"prim": "PUSH",
												"args": [{
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "collection_offer_accept"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "OFFER_DOESNT_EXIST"
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
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "577"
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
									"prim": "CAR"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "OFFER_EXHAUSTED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "577"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "VIEW",
									"args": [{
											"string": "get_token_data"
										},
										{
											"prim": "pair",
											"args": [{
													"prim": "pair",
													"args": [{
															"prim": "nat",
															"annots": [
																"%issuer_id"
															]
														},
														{
															"prim": "nat",
															"annots": [
																"%iteration"
															]
														}
													]
												},
												{
													"prim": "pair",
													"args": [{
															"prim": "nat",
															"annots": [
																"%royalties"
															]
														},
														{
															"prim": "list",
															"args": [{
																"prim": "pair",
																"args": [{
																		"prim": "address",
																		"annots": [
																			"%address"
																		]
																	},
																	{
																		"prim": "nat",
																		"annots": [
																			"%pct"
																		]
																	}
																]
															}],
															"annots": [
																"%royalties_split"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "594"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "GENTK_WRONG_COLLECTION"
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
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "577"
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
									"prim": "CDR"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "VIEW",
									"args": [{
											"string": "royalty_splits"
										},
										{
											"prim": "pair",
											"args": [{
													"prim": "nat",
													"annots": [
														"%royalty"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%address"
																]
															},
															{
																"prim": "nat",
																"annots": [
																	"%pct"
																]
															}
														]
													}],
													"annots": [
														"%splits"
													]
												}
											]
										}
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "117"
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
									"prim": "PUSH",
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "ITER",
									"args": [
										[{
												"prim": "DUP"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "577"
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
												"args": [{
													"int": "4"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
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
											},
											{
												"prim": "CAR"
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
													[{
															"prim": "PUSH",
															"args": [{
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
												"prim": "CAR"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "PUSH",
												"args": [{
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
													[{
															"prim": "DIG",
															"args": [{
																"int": "4"
															}]
														},
														{
															"prim": "DIG",
															"args": [{
																"int": "2"
															}]
														},
														{
															"prim": "CAR"
														},
														{
															"prim": "CONTRACT",
															"args": [{
																"prim": "unit"
															}]
														},
														{
															"prim": "IF_NONE",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
																				"prim": "string"
																			},
																			{
																				"string": "ROYALTY_SPLIT_FAILED"
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
															"args": [{
																"int": "3"
															}]
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
															"args": [{
																"int": "3"
															}]
														},
														{
															"prim": "ADD"
														}
													],
													[{
														"prim": "DROP",
														"args": [{
															"int": "2"
														}]
													}]
												]
											}
										]
									]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "577"
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
									"args": [{
										"int": "4"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "620"
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
									"prim": "GT"
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "DIG",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "PLATFORM_FEES_FAILED"
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
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "577"
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
												"args": [{
													"int": "4"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "620"
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
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "7"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "577"
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
												"args": [{
													"int": "4"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "620"
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
												"prim": "ADD"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "577"
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
									"args": [{
										"int": "4"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "620"
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
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "577"
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
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "626"
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
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "626"
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
									"prim": "PUSH",
									"args": [{
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
										[{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "SENDER"
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "ISSUER_PAY_FAILED"
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
												"args": [{
													"int": "3"
												}]
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
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "ADD"
											},
											{
												"prim": "DROP"
											}
										],
										[{
											"prim": "DROP",
											"args": [{
												"int": "4"
											}]
										}]
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "UNPAIR"
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
									"prim": "DUP"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "632"
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
									"prim": "UNPAIR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "11"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "11"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "632"
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
									"prim": "CAR"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "632"
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
									"prim": "PAIR"
								},
								{
									"prim": "PAIR"
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
									"prim": "SWAP"
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
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "6"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}]
											]
										}],
										[{
												"prim": "PUSH",
												"args": [{
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "collection_offer_cancel"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "OFFER_DOESNT_EXIST"
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
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "547"
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
									"prim": "CAR"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "OFFER_FULFILLED"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "547"
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
									"prim": "CDR"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "UNAUTHORIZED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "547"
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
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "547"
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
									"prim": "CAR"
								},
								{
									"prim": "MUL"
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "547"
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
									"prim": "CDR"
								},
								{
									"prim": "CONTRACT",
									"args": [{
										"prim": "unit"
									}]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "557"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "DIG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "UNPAIR"
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
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "address"
													}
												]
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "mutez"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
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
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "7"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
															"prim": "IF_LEFT",
															"args": [
																[],
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}],
														[{
																"prim": "PUSH",
																"args": [{
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
												}],
												[{
														"prim": "PUSH",
														"args": [{
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
										}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "listing"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "SOME"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "UPDATE"
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
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "SELF_ADDRESS"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "UNPAIR"
								},
								{
									"prim": "PUSH",
									"args": [{
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
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "8"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
															"prim": "IF_LEFT",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}],
														[{
																"prim": "PUSH",
																"args": [{
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
												}],
												[{
														"prim": "PUSH",
														"args": [{
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
										}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "listing_accept"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "AMOUNT"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "AMOUNT_NOT_PRICE"
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
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"prim": "CAR"
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CONS"
								},
								{
									"prim": "SELF_ADDRESS"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"prim": "CAR"
								},
								{
									"prim": "VIEW",
									"args": [{
											"string": "royalty_splits"
										},
										{
											"prim": "pair",
											"args": [{
													"prim": "nat",
													"annots": [
														"%royalty"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%address"
																]
															},
															{
																"prim": "nat",
																"annots": [
																	"%pct"
																]
															}
														]
													}],
													"annots": [
														"%splits"
													]
												}
											]
										}
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "117"
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
									"prim": "PUSH",
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "ITER",
									"args": [
										[{
												"prim": "DUP"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "204"
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
												"args": [{
													"int": "3"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
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
											},
											{
												"prim": "CAR"
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
													[{
															"prim": "PUSH",
															"args": [{
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
												"prim": "CAR"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "PUSH",
												"args": [{
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
													[{
															"prim": "DIG",
															"args": [{
																"int": "4"
															}]
														},
														{
															"prim": "DIG",
															"args": [{
																"int": "2"
															}]
														},
														{
															"prim": "CAR"
														},
														{
															"prim": "CONTRACT",
															"args": [{
																"prim": "unit"
															}]
														},
														{
															"prim": "IF_NONE",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
																				"prim": "string"
																			},
																			{
																				"string": "ROYALTY_SPLIT_FAILED"
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
															"args": [{
																"int": "3"
															}]
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
															"args": [{
																"int": "3"
															}]
														},
														{
															"prim": "ADD"
														}
													],
													[{
														"prim": "DROP",
														"args": [{
															"int": "2"
														}]
													}]
												]
											}
										]
									]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"args": [{
										"int": "3"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "298"
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
									"prim": "GT"
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "DIG",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "PLATFORM_FEES_FAILED"
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
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "204"
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
												"args": [{
													"int": "3"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "298"
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
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "7"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "204"
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
												"args": [{
													"int": "3"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "298"
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
												"prim": "ADD"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"args": [{
										"int": "3"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "298"
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
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "304"
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
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "304"
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
									"prim": "PUSH",
									"args": [{
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
										[{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "204"
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
												"args": [{
													"int": "4"
												}]
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "ISSUER_PAY_FAILED"
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
												"args": [{
													"int": "3"
												}]
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
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "ADD"
											},
											{
												"prim": "DROP"
											}
										],
										[{
											"prim": "DROP",
											"args": [{
												"int": "4"
											}]
										}]
									]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "NONE",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "mutez"
													},
													{
														"prim": "address"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "UPDATE"
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
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "9"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[],
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}],
												[{
														"prim": "PUSH",
														"args": [{
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
										}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "listing_cancel"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"args": [{
										"int": "4"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NOT_AUTHORIZED"
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
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "204"
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
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CONS"
								},
								{
									"prim": "SELF_ADDRESS"
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
									"prim": "DIG",
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "NONE",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "mutez"
													},
													{
														"prim": "address"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "UPDATE"
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
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "10"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}],
												[{
														"prim": "PUSH",
														"args": [{
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
										}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "offer"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"prim": "CDR"
								},
								{
									"prim": "AMOUNT"
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NOT_ENOUGH_XTZ"
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
									"prim": "CDR"
								},
								{
									"prim": "PUSH",
									"args": [{
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NO_0_XTZ_OFFER"
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
									"prim": "CDR"
								},
								{
									"prim": "AMOUNT"
								},
								{
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "366"
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
									"prim": "PUSH",
									"args": [{
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
										[{
												"prim": "NIL",
												"args": [{
													"prim": "operation"
												}]
											},
											{
												"prim": "SENDER"
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "OFFER_XTZ_TOO_MUCH_FAILED"
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
												"args": [{
													"int": "2"
												}]
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
										[{
												"prim": "DROP"
											},
											{
												"prim": "NIL",
												"args": [{
													"prim": "operation"
												}]
											}
										]
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "VIEW",
									"args": [{
											"string": "token_exists"
										},
										{
											"prim": "bool"
										}
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "378"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NO_GENTK"
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
									"args": [{
										"int": "3"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "UNPAIR"
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "SOME"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "UPDATE"
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
									"prim": "DUP"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
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
									"prim": "UPDATE",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "PAIR"
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "11"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
															"prim": "IF_LEFT",
															"args": [
																[],
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}],
														[{
																"prim": "PUSH",
																"args": [{
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
												}]
											]
										}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "offer_accept"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "OFFER_DOESNT_EXIST"
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
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CONTRACT",
									"args": [{
										"prim": "list",
										"args": [{
											"prim": "pair",
											"args": [{
													"prim": "address",
													"annots": [
														"%from_"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%to_"
																]
															},
															{
																"prim": "pair",
																"args": [{
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
													}],
													"annots": [
														"%txs"
													]
												}
											]
										}]
									}],
									"annots": [
										"%transfer"
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "81"
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
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "list",
												"args": [{
													"prim": "pair",
													"args": [{
															"prim": "address"
														},
														{
															"prim": "pair",
															"args": [{
																	"prim": "nat"
																},
																{
																	"prim": "nat"
																}
															]
														}
													]
												}]
											}
										]
									}]
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "nat"
													},
													{
														"prim": "nat"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "CAR"
								},
								{
									"prim": "PAIR",
									"args": [{
										"int": "3"
									}]
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
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "161"
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
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "3"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "VIEW",
									"args": [{
											"string": "royalty_splits"
										},
										{
											"prim": "pair",
											"args": [{
													"prim": "nat",
													"annots": [
														"%royalty"
													]
												},
												{
													"prim": "list",
													"args": [{
														"prim": "pair",
														"args": [{
																"prim": "address",
																"annots": [
																	"%address"
																]
															},
															{
																"prim": "nat",
																"annots": [
																	"%pct"
																]
															}
														]
													}],
													"annots": [
														"%splits"
													]
												}
											]
										}
									]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "117"
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
									"prim": "PUSH",
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "ITER",
									"args": [
										[{
												"prim": "DUP"
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "SWAP"
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
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
												"prim": "GET",
												"args": [{
													"int": "4"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
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
											},
											{
												"prim": "CAR"
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
													[{
															"prim": "PUSH",
															"args": [{
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
												"prim": "CAR"
											},
											{
												"prim": "DUP"
											},
											{
												"prim": "PUSH",
												"args": [{
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
													[{
															"prim": "DIG",
															"args": [{
																"int": "4"
															}]
														},
														{
															"prim": "DIG",
															"args": [{
																"int": "2"
															}]
														},
														{
															"prim": "CAR"
														},
														{
															"prim": "CONTRACT",
															"args": [{
																"prim": "unit"
															}]
														},
														{
															"prim": "IF_NONE",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
																				"prim": "string"
																			},
																			{
																				"string": "ROYALTY_SPLIT_FAILED"
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
															"args": [{
																"int": "3"
															}]
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
															"args": [{
																"int": "3"
															}]
														},
														{
															"prim": "ADD"
														}
													],
													[{
														"prim": "DROP",
														"args": [{
															"int": "2"
														}]
													}]
												]
											}
										]
									]
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "mutez"
										},
										{
											"int": "0"
										}
									]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "440"
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
									"prim": "GT"
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "DIG",
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "6"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "10"
												}]
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "PLATFORM_FEES_FAILED"
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
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "9"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
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
												"prim": "GET",
												"args": [{
													"int": "4"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "440"
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
												"args": [{
													"int": "3"
												}]
											},
											{
												"prim": "PUSH",
												"args": [{
														"prim": "nat"
													},
													{
														"int": "1000"
													}
												]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "7"
												}]
											},
											{
												"prim": "CAR"
											},
											{
												"prim": "GET",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "GET",
												"args": [{
													"int": "5"
												}]
											},
											{
												"prim": "CDR"
											},
											{
												"prim": "DUP",
												"args": [{
													"int": "8"
												}]
											},
											{
												"prim": "GET"
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
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
												"prim": "GET",
												"args": [{
													"int": "4"
												}]
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
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "int"
																},
																{
																	"int": "440"
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
												"prim": "ADD"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "nat"
										},
										{
											"int": "1000"
										}
									]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "440"
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
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "8"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "446"
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
									"prim": "SUB_MUTEZ"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "446"
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
									"prim": "PUSH",
									"args": [{
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
										[{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "DROP"
											},
											{
												"prim": "DIG",
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "SENDER"
											},
											{
												"prim": "CONTRACT",
												"args": [{
													"prim": "unit"
												}]
											},
											{
												"prim": "IF_NONE",
												"args": [
													[{
															"prim": "PUSH",
															"args": [{
																	"prim": "string"
																},
																{
																	"string": "ISSUER_PAY_FAILED"
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
												"args": [{
													"int": "3"
												}]
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
												"args": [{
													"int": "2"
												}]
											},
											{
												"prim": "ADD"
											},
											{
												"prim": "DROP"
											}
										],
										[{
											"prim": "DROP",
											"args": [{
												"int": "4"
											}]
										}]
									]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "NONE",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "pair",
														"args": [{
																"prim": "nat"
															},
															{
																"prim": "nat"
															}
														]
													},
													{
														"prim": "mutez"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "UPDATE"
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
									"prim": "SWAP"
								},
								{
									"prim": "PAIR"
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "12"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
															"prim": "IF_LEFT",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}],
														[{
																"prim": "PUSH",
																"args": [{
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
												}]
											]
										}]
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "9"
									}]
								},
								{
									"prim": "IF",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "PAUSED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "PUSH",
									"args": [{
											"prim": "string"
										},
										{
											"string": "offer_cancel"
										}
									]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "int"
													},
													{
														"int": "40"
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
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "EP_DISABLED"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "MEM"
								},
								{
									"prim": "IF",
									"args": [
										[],
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "OFFER_DOESNT_EXIST"
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
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "DUP"
								},
								{
									"prim": "DUG",
									"args": [{
										"int": "2"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "UNAUTHORIZED"
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
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "SENDER"
								},
								{
									"prim": "CONTRACT",
									"args": [{
										"prim": "unit"
									}]
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET",
									"args": [{
										"int": "5"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "4"
									}]
								},
								{
									"prim": "GET"
								},
								{
									"prim": "IF_NONE",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
									"prim": "GET",
									"args": [{
										"int": "4"
									}]
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
									"prim": "DIG",
									"args": [{
										"int": "2"
									}]
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
									"prim": "UNPAIR"
								},
								{
									"prim": "UNPAIR"
								},
								{
									"prim": "SWAP"
								},
								{
									"prim": "NONE",
									"args": [{
										"prim": "pair",
										"args": [{
												"prim": "address"
											},
											{
												"prim": "pair",
												"args": [{
														"prim": "pair",
														"args": [{
																"prim": "nat"
															},
															{
																"prim": "nat"
															}
														]
													},
													{
														"prim": "mutez"
													}
												]
											}
										]
									}]
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "7"
									}]
								},
								{
									"prim": "UPDATE"
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
									"prim": "SWAP"
								},
								{
									"prim": "PAIR"
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "13"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[],
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}]
											]
										}]
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
									"args": [{
										"int": "2"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NOT_ADMIN"
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
									"prim": "SWAP"
								},
								{
									"prim": "UNPAIR"
								},
								{
									"prim": "DUP",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CDR"
								},
								{
									"prim": "SOME"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "6"
									}]
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
									"prim": "SWAP"
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
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "PAIR"
								}
							]
						]
					},
					{
						"prim": "Elt",
						"args": [{
								"int": "14"
							},
							[{
									"prim": "UNPAIR"
								},
								{
									"prim": "IF_LEFT",
									"args": [
										[{
												"prim": "PUSH",
												"args": [{
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
										[{
											"prim": "IF_LEFT",
											"args": [
												[{
														"prim": "PUSH",
														"args": [{
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
												[{
													"prim": "IF_LEFT",
													"args": [
														[{
																"prim": "PUSH",
																"args": [{
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
														[{
															"prim": "IF_LEFT",
															"args": [
																[{
																		"prim": "PUSH",
																		"args": [{
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
														}]
													]
												}]
											]
										}]
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
									"args": [{
										"int": "2"
									}]
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
										[{
												"prim": "PUSH",
												"args": [{
														"prim": "string"
													},
													{
														"string": "NOT_ADMIN"
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
									"prim": "DUP",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CAR"
								},
								{
									"prim": "SOME"
								},
								{
									"prim": "DIG",
									"args": [{
										"int": "6"
									}]
								},
								{
									"prim": "CDR"
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
								},
								{
									"prim": "PAIR"
								},
								{
									"prim": "NIL",
									"args": [{
										"prim": "operation"
									}]
								},
								{
									"prim": "PAIR"
								}
							]
						]
					}
				]
			]
		}' from json to michelson