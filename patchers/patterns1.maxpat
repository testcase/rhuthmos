{
	"patcher" : 	{
		"fileversion" : 1,
		"appversion" : 		{
			"major" : 8,
			"minor" : 5,
			"revision" : 2,
			"architecture" : "x64",
			"modernui" : 1
		}
,
		"classnamespace" : "box",
		"rect" : [ 459.0, 215.0, 1401.0, 827.0 ],
		"bglocked" : 0,
		"openinpresentation" : 0,
		"default_fontsize" : 12.0,
		"default_fontface" : 0,
		"default_fontname" : "Arial",
		"gridonopen" : 1,
		"gridsize" : [ 15.0, 15.0 ],
		"gridsnaponopen" : 1,
		"objectsnaponopen" : 1,
		"statusbarvisible" : 2,
		"toolbarvisible" : 1,
		"lefttoolbarpinned" : 0,
		"toptoolbarpinned" : 0,
		"righttoolbarpinned" : 0,
		"bottomtoolbarpinned" : 0,
		"toolbars_unpinned_last_save" : 0,
		"tallnewobj" : 0,
		"boxanimatetime" : 200,
		"enablehscroll" : 1,
		"enablevscroll" : 1,
		"devicewidth" : 0.0,
		"description" : "",
		"digest" : "",
		"tags" : "",
		"style" : "",
		"subpatcher_template" : "",
		"assistshowspatchername" : 0,
		"boxes" : [ 			{
				"box" : 				{
					"autosave" : 1,
					"id" : "obj-1",
					"inletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"maxclass" : "newobj",
					"numinlets" : 1,
					"numoutlets" : 1,
					"outletInfo" : 					{
						"IOInfo" : [  ]
					}
,
					"outlettype" : [ "list" ],
					"patcher" : 					{
						"fileversion" : 1,
						"appversion" : 						{
							"major" : 8,
							"minor" : 5,
							"revision" : 2,
							"architecture" : "x64",
							"modernui" : 1
						}
,
						"classnamespace" : "rnbo",
						"rect" : [ 148.0, 241.0, 740.0, 760.0 ],
						"bglocked" : 0,
						"openinpresentation" : 0,
						"default_fontsize" : 12.0,
						"default_fontface" : 0,
						"default_fontname" : "Lato",
						"gridonopen" : 1,
						"gridsize" : [ 15.0, 15.0 ],
						"gridsnaponopen" : 1,
						"objectsnaponopen" : 1,
						"statusbarvisible" : 2,
						"toolbarvisible" : 1,
						"lefttoolbarpinned" : 0,
						"toptoolbarpinned" : 0,
						"righttoolbarpinned" : 0,
						"bottomtoolbarpinned" : 0,
						"toolbars_unpinned_last_save" : 0,
						"tallnewobj" : 0,
						"boxanimatetime" : 200,
						"enablehscroll" : 1,
						"enablevscroll" : 1,
						"devicewidth" : 0.0,
						"description" : "",
						"digest" : "",
						"tags" : "",
						"style" : "",
						"subpatcher_template" : "",
						"assistshowspatchername" : 0,
						"title" : "untitled",
						"boxes" : [ 							{
								"box" : 								{
									"code" : "",
									"fontface" : 0,
									"fontname" : "<Monospaced>",
									"fontsize" : 12.0,
									"id" : "obj-2",
									"maxclass" : "codebox",
									"numinlets" : 1,
									"numoutlets" : 0,
									"patching_rect" : [ 352.0, 205.0, 200.0, 200.0 ],
									"rnbo_classname" : "codebox",
									"rnbo_extra_attributes" : 									{
										"code" : "",
										"hot" : 0
									}
,
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "codebox_obj-2",
									"rnboinfo" : 									{
										"needsInstanceInfo" : 1,
										"argnames" : 										{
											"reset" : 											{
												"attrOrProp" : 1,
												"digest" : "Reset all state and params to initial values",
												"isalias" : 0,
												"aliases" : [  ],
												"attachable" : 1,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bang"
											}
,
											"in1" : 											{
												"attrOrProp" : 1,
												"digest" : "in1",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 0,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"inlet" : 1,
												"type" : "bang"
											}
,
											"expr" : 											{
												"attrOrProp" : 2,
												"digest" : "expr",
												"defaultarg" : 1,
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "symbol",
												"doNotShowInMaxInspector" : 1
											}
,
											"hot" : 											{
												"attrOrProp" : 2,
												"digest" : "Trigger computation on all inlets.",
												"isalias" : 0,
												"aliases" : [  ],
												"settable" : 1,
												"attachable" : 0,
												"isparam" : 0,
												"deprecated" : 0,
												"type" : "bool",
												"defaultValue" : "false"
											}

										}
,
										"inputs" : [ 											{
												"name" : "in1",
												"type" : "bang",
												"digest" : "in1",
												"hot" : 1,
												"docked" : 0
											}
 ],
										"outputs" : [  ],
										"helpname" : "codebox",
										"aliasOf" : "expr",
										"classname" : "codebox",
										"operator" : 0,
										"versionId" : 1700822773,
										"changesPatcherIO" : 0
									}

								}

							}
, 							{
								"box" : 								{
									"id" : "obj-1",
									"maxclass" : "newobj",
									"numinlets" : 2,
									"numoutlets" : 2,
									"outlettype" : [ "", "" ],
									"patching_rect" : [ 145.0, 206.0, 73.0, 23.0 ],
									"rnbo_classname" : "list.scramble",
									"rnbo_serial" : 1,
									"rnbo_uniqueid" : "list.scramble_obj-1",
									"text" : "list.scramble"
								}

							}
 ],
						"lines" : [  ],
						"default_bgcolor" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"color" : [ 0.929412, 0.929412, 0.352941, 1.0 ],
						"elementcolor" : [ 0.357540726661682, 0.515565991401672, 0.861786782741547, 1.0 ],
						"accentcolor" : [ 0.343034118413925, 0.506230533123016, 0.86220508813858, 1.0 ],
						"stripecolor" : [ 0.258338063955307, 0.352425158023834, 0.511919498443604, 1.0 ],
						"bgfillcolor_type" : "color",
						"bgfillcolor_color" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color1" : [ 0.031372549019608, 0.125490196078431, 0.211764705882353, 1.0 ],
						"bgfillcolor_color2" : [ 0.263682, 0.004541, 0.038797, 1.0 ],
						"bgfillcolor_angle" : 270.0,
						"bgfillcolor_proportion" : 0.39,
						"bgfillcolor_autogradient" : 0.0
					}
,
					"patching_rect" : [ 301.0, 483.0, 40.0, 22.0 ],
					"rnboattrcache" : 					{

					}
,
					"rnboversion" : "1.0.2-alpha.2",
					"saved_attribute_attributes" : 					{
						"valueof" : 						{
							"parameter_invisible" : 1,
							"parameter_longname" : "rnbo~",
							"parameter_shortname" : "rnbo~",
							"parameter_type" : 3
						}

					}
,
					"saved_object_attributes" : 					{
						"optimization" : "O1",
						"parameter_enable" : 1,
						"uuid" : "b06e184f-72b4-11ed-984f-a63abfc0fca6"
					}
,
					"snapshot" : 					{
						"filetype" : "C74Snapshot",
						"version" : 2,
						"minorversion" : 0,
						"name" : "snapshotlist",
						"origin" : "rnbo~",
						"type" : "list",
						"subtype" : "Undefined",
						"embed" : 1,
						"snapshot" : 						{
							"__presetid" : "b06e184f-72b4-11ed-984f-a63abfc0fca6"
						}
,
						"snapshotlist" : 						{
							"current_snapshot" : 0,
							"entries" : [ 								{
									"filetype" : "C74Snapshot",
									"version" : 2,
									"minorversion" : 0,
									"name" : "untitled",
									"origin" : "b06e184f-72b4-11ed-984f-a63abfc0fca6",
									"type" : "rnbo",
									"subtype" : "",
									"embed" : 0,
									"snapshot" : 									{
										"__presetid" : "b06e184f-72b4-11ed-984f-a63abfc0fca6"
									}
,
									"fileref" : 									{
										"name" : "untitled",
										"filename" : "untitled_20221203.maxsnap",
										"filepath" : "~/Dropbox/Documents/Max 8/Projects/rhuthmos/data",
										"filepos" : -1,
										"snapshotfileid" : "fd295f46a9dcc8ec4f61ae9b8fb492a9"
									}

								}
 ]
						}

					}
,
					"text" : "rnbo~",
					"varname" : "rnbo~"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-21",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 876.0, 454.428558349609375, 551.0, 20.0 ],
					"text" : "Pattern array gets shuffled and then continuously cycles through"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-20",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 876.0, 417.428558349609375, 551.0, 20.0 ],
					"text" : "Patterns uses a array of elements and array of weightings"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-18",
					"linecount" : 2,
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 880.0, 376.857147216796875, 551.0, 33.0 ],
					"text" : "Pattern which uniformly picks elements of array by position and also avoids repitition of position until full array is exhausted"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-17",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 880.0, 336.285720825195312, 551.0, 20.0 ],
					"text" : "Pattern which uniformly picks elements of array by position and also avoids repetitions (by position)"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-16",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 880.0, 295.714279174804688, 369.0, 20.0 ],
					"text" : "Pattern which uniformly picks elements of array by position"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-15",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 880.0, 256.142860412597656, 369.0, 20.0 ],
					"text" : "Pattern which cycles through elements in palindrom"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-14",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.0, 214.571426391601562, 369.0, 20.0 ],
					"text" : "Pattern cycles through once and sticks on last element"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-13",
					"maxclass" : "comment",
					"numinlets" : 1,
					"numoutlets" : 0,
					"patching_rect" : [ 884.0, 172.0, 369.0, 20.0 ],
					"text" : "Pattern which cycles through elements"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-11",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 779.149993896484375, 255.142860412597656, 88.0, 22.0 ],
					"text" : "pat.palindrome",
					"varname" : "sc.patterns[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-10",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 820.149993896484375, 214.571426391601562, 47.0, 22.0 ],
					"text" : "pat.line",
					"varname" : "pat.seq[6]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-9",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 806.149993896484375, 417.428558349609375, 61.0, 22.0 ],
					"text" : "pat.wrand",
					"varname" : "sc.patterns[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-170",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 816.149993896484375, 458.0, 51.0, 22.0 ],
					"text" : "pat.shuf",
					"varname" : "pat.seq[5]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-96",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 812.149993896484375, 376.857147216796875, 55.0, 22.0 ],
					"text" : "pat.heap",
					"varname" : "pat.seq[3]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-68",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 808.149993896484375, 336.285720825195312, 59.0, 22.0 ],
					"text" : "pat.xrand",
					"varname" : "pat.seq[2]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-54",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 814.149993896484375, 295.714279174804688, 53.0, 22.0 ],
					"text" : "pat.rand",
					"varname" : "pat.seq[1]"
				}

			}
, 			{
				"box" : 				{
					"id" : "obj-2",
					"maxclass" : "newobj",
					"numinlets" : 2,
					"numoutlets" : 2,
					"outlettype" : [ "", "" ],
					"patching_rect" : [ 819.149993896484375, 174.0, 48.0, 22.0 ],
					"text" : "pat.seq",
					"varname" : "pat.seq"
				}

			}
 ],
		"lines" : [  ],
		"parameters" : 		{
			"obj-1" : [ "rnbo~", "rnbo~", 0 ],
			"parameterbanks" : 			{
				"0" : 				{
					"index" : 0,
					"name" : "",
					"parameters" : [ "-", "-", "-", "-", "-", "-", "-", "-" ]
				}

			}
,
			"inherited_shortname" : 1
		}
,
		"dependency_cache" : [ 			{
				"name" : "array.at.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/array",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/array",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "array.choose.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/array",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/array",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "array.scramble.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/array",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/array",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.heap.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.line.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.palindrome.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.rand.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.seq.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.shuf.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.wrand.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "pat.xrand.maxpat",
				"bootpath" : "~/Dropbox/Documents/Max 8/Packages/tilib/patchers/pat",
				"patcherrelativepath" : "../../../Packages/tilib/patchers/pat",
				"type" : "JSON",
				"implicit" : 1
			}
, 			{
				"name" : "untitled_20221203.maxsnap",
				"bootpath" : "~/Dropbox/Documents/Max 8/Projects/rhuthmos/data",
				"patcherrelativepath" : "../data",
				"type" : "mx@s",
				"implicit" : 1
			}
 ],
		"autosave" : 0
	}

}
