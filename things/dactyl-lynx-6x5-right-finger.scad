include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/version.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/constants.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/transforms.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/distributors.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/mutators.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/color.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/attachments.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/shapes3d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/shapes2d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/drawing.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/masks3d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/masks2d.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/math.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/paths.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/lists.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/comparisons.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/linalg.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/trigonometry.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/vectors.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/affine.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/coords.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/geometry.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/regions.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/strings.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/skin.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/vnf.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/utility.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/partitions.scad>;
include </home/whitelynx/.local/share/virtualenvs/dactyl-lynx-keyboard-vn24Ws0r/lib/python3.12/site-packages/solid2/extensions/bosl2/BOSL2/screws.scad>;

difference() {
	union() {
		difference() {
			union() {
				difference() {
					union() {
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 6.82, -4.0]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 0.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -14.999999999999998, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 6.82, -4.0]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 0.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -14.999999999999998, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 6.82, -4.0]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 0.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -14.999999999999998, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 6.82, -4.0]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 0.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -14.999999999999998, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 6.82, -4.0]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 0.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -5.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																difference() {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [20.0, 20.0, 5.08]);
																	}
																	union() {
																		translate(v = [0, 0, -2.04]) {
																			cube(center = true, size = [14.0, 14.0, 7.08]);
																		}
																		translate(v = [0, 7.0, -5.3]) {
																			hull() {
																				cube(center = true, size = [5, 1.0, 8]);
																				translate(v = [0, -0.5, 0]) {
																					cube(center = true, size = [6, 1.0, 9]);
																				}
																			}
																		}
																		rotate(a = 180, v = [0, 0, 1]) {
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																		}
																	}
																	translate(v = [8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, 8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																	translate(v = [-8, -8, -5.54]) {
																		cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, -20.8, 7.64]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -14.999999999999998, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	difference() {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [20.0, 20.0, 5.08]);
																		}
																		union() {
																			translate(v = [0, 0, -2.04]) {
																				cube(center = true, size = [14.0, 14.0, 7.08]);
																			}
																			translate(v = [0, 7.0, -5.3]) {
																				hull() {
																					cube(center = true, size = [5, 1.0, 8]);
																					translate(v = [0, -0.5, 0]) {
																						cube(center = true, size = [6, 1.0, 9]);
																					}
																				}
																			}
																			rotate(a = 180, v = [0, 0, 1]) {
																				translate(v = [0, 7.0, -5.3]) {
																					hull() {
																						cube(center = true, size = [5, 1.0, 8]);
																						translate(v = [0, -0.5, 0]) {
																							cube(center = true, size = [6, 1.0, 9]);
																						}
																					}
																				}
																			}
																		}
																		translate(v = [8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, 8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																		translate(v = [-8, -8, -5.54]) {
																			cylinder($fn = 16, center = true, h = 6.58, r = 0.5097955791041592);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 10.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 0.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 0.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, -9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -10.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -29.999999999999996, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, 9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, -20.8, 7.64]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = -14.999999999999998, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = -14.999999999999998, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-9.95, -9.95, 0]) {
																			translate(v = [0, 0, -2.54]) {
																				cube(center = true, size = [0.1, 0.1, 5.08]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 6.82, -4.0]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 0.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 45.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-26, -2.5, -6]) {
																		rotate(a = 160, v = [1, 0, 0]) {
																			rotate(a = 90, v = [0, 0, 1]) {
																				difference() {
																					union() {
																						translate(v = [0, -54.2, 0]) {
																							union() {
																								translate(v = [-8.5, 0, 0]) {
																									difference() {
																										cylinder($fn = 16, center = false, h = 8, r = 3.058773474624955);
																										translate(v = [0, 0, -0.05]) {
																											cylinder($fn = 16, center = false, h = 8.1, r = 1.0195911582083184);
																										}
																									}
																								}
																								translate(v = [8.5, 0, 0]) {
																									difference() {
																										cylinder($fn = 16, center = false, h = 8, r = 3.058773474624955);
																										translate(v = [0, 0, -0.05]) {
																											cylinder($fn = 16, center = false, h = 8.1, r = 1.0195911582083184);
																										}
																									}
																								}
																							}
																						}
																						difference() {
																							union() {
																								translate(v = [-7.0, 0, 0]) {
																									translate(v = [0, 1, 0]) {
																										translate(v = [0, 0, 6.32]) {
																											cube(center = true, size = [4, 4, 12.64]);
																										}
																									}
																								}
																								translate(v = [7.0, 0, 0]) {
																									translate(v = [0, 1, 0]) {
																										translate(v = [0, 0, 6.32]) {
																											cube(center = true, size = [4, 4, 12.64]);
																										}
																									}
																								}
																							}
																							union() {
																								translate(v = [0, 0, 8.82]) {
																									translate(v = [0, -26.5, 0]) {
																										cube(center = true, size = [20.66, 53, 1.64]);
																									}
																								}
																								translate(v = [0, 0, 6.75]) {
																									union() {
																										translate(v = [0, 2.1, 0]) {
																											rotate(a = [90, 0, 0]) {
																												hull() {
																													translate(v = [-2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																													}
																													translate(v = [2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																													}
																												}
																											}
																										}
																										translate(v = [0, 22, 0]) {
																											rotate(a = [90, 0, 0]) {
																												hull() {
																													translate(v = [-2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																													}
																													translate(v = [2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																					union() {
																						translate(v = [0, 0, 8.82]) {
																							translate(v = [0, -26.5, 0]) {
																								cube(center = true, size = [20.66, 53, 1.64]);
																							}
																						}
																						translate(v = [0, 0, 6.75]) {
																							union() {
																								translate(v = [0, 2.1, 0]) {
																									rotate(a = [90, 0, 0]) {
																										hull() {
																											translate(v = [-2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																											}
																											translate(v = [2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																											}
																										}
																									}
																								}
																								translate(v = [0, 22, 0]) {
																									rotate(a = [90, 0, 0]) {
																										hull() {
																											translate(v = [-2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																											}
																											translate(v = [2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 45.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-26, -2.5, -6]) {
																			rotate(a = 160, v = [1, 0, 0]) {
																				rotate(a = 90, v = [0, 0, 1]) {
																					intersection() {
																						cube(center = true, size = [60, 120, 8]);
																						translate(v = [0, -54.2, 0]) {
																							union() {
																								translate(v = [-8.5, 0, 0]) {
																									difference() {
																										cylinder($fn = 16, center = false, h = 8, r = 3.058773474624955);
																										translate(v = [0, 0, -0.05]) {
																											cylinder($fn = 16, center = false, h = 8.1, r = 1.0195911582083184);
																										}
																									}
																								}
																								translate(v = [8.5, 0, 0]) {
																									difference() {
																										cylinder($fn = 16, center = false, h = 8, r = 3.058773474624955);
																										translate(v = [0, 0, -0.05]) {
																											cylinder($fn = 16, center = false, h = 8.1, r = 1.0195911582083184);
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = -5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						hull() {
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 6.82, -4.0]) {
												translate(v = [0, 0, 230.49306344750678]) {
													rotate(a = 0.0, v = [0, 1, 0]) {
														translate(v = [0, 0, -230.49306344750678]) {
															translate(v = [0, 0, 79.73635378597841]) {
																rotate(a = 45.0, v = [1, 0, 0]) {
																	translate(v = [0, 0, -79.73635378597841]) {
																		translate(v = [-26, -2.5, -6]) {
																			rotate(a = 160, v = [1, 0, 0]) {
																				rotate(a = 90, v = [0, 0, 1]) {
																					intersection() {
																						cube(center = true, size = [60, 120, 6]);
																						difference() {
																							union() {
																								translate(v = [-7.0, 0, 0]) {
																									translate(v = [0, 1, 0]) {
																										translate(v = [0, 0, 6.32]) {
																											cube(center = true, size = [4, 4, 12.64]);
																										}
																									}
																								}
																								translate(v = [7.0, 0, 0]) {
																									translate(v = [0, 1, 0]) {
																										translate(v = [0, 0, 6.32]) {
																											cube(center = true, size = [4, 4, 12.64]);
																										}
																									}
																								}
																							}
																							union() {
																								translate(v = [0, 0, 8.82]) {
																									translate(v = [0, -26.5, 0]) {
																										cube(center = true, size = [20.66, 53, 1.64]);
																									}
																								}
																								translate(v = [0, 0, 6.75]) {
																									union() {
																										translate(v = [0, 2.1, 0]) {
																											rotate(a = [90, 0, 0]) {
																												hull() {
																													translate(v = [-2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																													}
																													translate(v = [2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																													}
																												}
																											}
																										}
																										translate(v = [0, 22, 0]) {
																											rotate(a = [90, 0, 0]) {
																												hull() {
																													translate(v = [-2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																													}
																													translate(v = [2.75, 0, 0]) {
																														cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
							translate(v = [0, 0, 30.5]) {
								rotate(a = 18.0, v = [1, 0, 0]) {
									rotate(a = 18.0, v = [0, 1, 0]) {
										translate(v = [0, 0, 3]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 5.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 29.999999999999996, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [9.95, 9.95, 0]) {
																		translate(v = [0, 0, -2.54]) {
																			cube(center = true, size = [0.1, 0.1, 5.08]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
						translate(v = [0, 0, 30.5]) {
							rotate(a = 18.0, v = [1, 0, 0]) {
								rotate(a = 18.0, v = [0, 1, 0]) {
									translate(v = [0, 0, 3]) {
										translate(v = [0, 6.82, -4.0]) {
											translate(v = [0, 0, 230.49306344750678]) {
												rotate(a = 0.0, v = [0, 1, 0]) {
													translate(v = [0, 0, -230.49306344750678]) {
														translate(v = [0, 0, 79.73635378597841]) {
															rotate(a = 45.0, v = [1, 0, 0]) {
																translate(v = [0, 0, -79.73635378597841]) {
																	translate(v = [-26, -2.5, -6]) {
																		rotate(a = 160, v = [1, 0, 0]) {
																			rotate(a = 90, v = [0, 0, 1]) {
																				difference() {
																					union() {
																						hull() {
																							intersection() {
																								cube(center = true, size = [60, 120, 2]);
																								translate(v = [0, -54.2, 0]) {
																									union() {
																										translate(v = [-8.5, 0, 0]) {
																											difference() {
																												cylinder($fn = 16, center = false, h = 8, r = 3.058773474624955);
																												translate(v = [0, 0, -0.05]) {
																													cylinder($fn = 16, center = false, h = 8.1, r = 1.0195911582083184);
																												}
																											}
																										}
																										translate(v = [8.5, 0, 0]) {
																											difference() {
																												cylinder($fn = 16, center = false, h = 8, r = 3.058773474624955);
																												translate(v = [0, 0, -0.05]) {
																													cylinder($fn = 16, center = false, h = 8.1, r = 1.0195911582083184);
																												}
																											}
																										}
																									}
																								}
																							}
																							intersection() {
																								cube(center = true, size = [60, 120, 2]);
																								difference() {
																									union() {
																										translate(v = [-7.0, 0, 0]) {
																											translate(v = [0, 1, 0]) {
																												translate(v = [0, 0, 6.32]) {
																													cube(center = true, size = [4, 4, 12.64]);
																												}
																											}
																										}
																										translate(v = [7.0, 0, 0]) {
																											translate(v = [0, 1, 0]) {
																												translate(v = [0, 0, 6.32]) {
																													cube(center = true, size = [4, 4, 12.64]);
																												}
																											}
																										}
																									}
																									union() {
																										translate(v = [0, 0, 8.82]) {
																											translate(v = [0, -26.5, 0]) {
																												cube(center = true, size = [20.66, 53, 1.64]);
																											}
																										}
																										translate(v = [0, 0, 6.75]) {
																											union() {
																												translate(v = [0, 2.1, 0]) {
																													rotate(a = [90, 0, 0]) {
																														hull() {
																															translate(v = [-2.75, 0, 0]) {
																																cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																															}
																															translate(v = [2.75, 0, 0]) {
																																cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																															}
																														}
																													}
																												}
																												translate(v = [0, 22, 0]) {
																													rotate(a = [90, 0, 0]) {
																														hull() {
																															translate(v = [-2.75, 0, 0]) {
																																cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																															}
																															translate(v = [2.75, 0, 0]) {
																																cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																															}
																														}
																													}
																												}
																											}
																										}
																									}
																								}
																							}
																						}
																						translate(v = [0, 1.5, 6.5]) {
																							cube(center = true, size = [11, 2.9, 13]);
																						}
																					}
																					union() {
																						translate(v = [0, 0, 8.82]) {
																							translate(v = [0, -26.5, 0]) {
																								cube(center = true, size = [20.66, 53, 1.64]);
																							}
																						}
																						translate(v = [0, 0, 6.75]) {
																							union() {
																								translate(v = [0, 2.1, 0]) {
																									rotate(a = [90, 0, 0]) {
																										hull() {
																											translate(v = [-2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																											}
																											translate(v = [2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 6.2, r = 1.274488947760398);
																											}
																										}
																									}
																								}
																								translate(v = [0, 22, 0]) {
																									rotate(a = [90, 0, 0]) {
																										hull() {
																											translate(v = [-2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																											}
																											translate(v = [2.75, 0, 0]) {
																												cylinder($fn = 16, center = false, h = 20, r = 4.333262422385353);
																											}
																										}
																									}
																								}
																							}
																						}
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 45.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-26, -2.5, -6]) {
																	rotate(a = 160, v = [1, 0, 0]) {
																		rotate(a = 90, v = [0, 0, 1]) {
																			union() {
																				translate(v = [5, -22, 0]) {
																					cube(center = true, size = [4, 6, 40]);
																				}
																				translate(v = [-6, -46, 0]) {
																					cube(center = true, size = [4, 6, 40]);
																				}
																				translate(v = [6, -46, 0]) {
																					cube(center = true, size = [4, 6, 40]);
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-10.5, 0, -12.7]) {
																rotate(a = -90, v = [0, 1, 0]) {
																	cylinder($fn = 16, center = false, h = 4, r = 10.909625392829005);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, 10.2, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, 10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, -10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, -10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, 10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, 10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, -10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, -10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, 10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, 10, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, -3, 0]) {
																translate(v = [-13.0, 0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [3, 0.2, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -14.999999999999998, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-3, 0, 0]) {
																translate(v = [0, -13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [13, 0, 0]) {
																translate(v = [0, -13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [13, 0, 0]) {
																translate(v = [0, -13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-7, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-7, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [7, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [7, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 6.82, -4.0]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = 0.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-13, 0, 0]) {
																translate(v = [0, -13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-13, 0, 0]) {
																translate(v = [0, -13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [7, 0, 0]) {
																translate(v = [0, -13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [7, 0, 0]) {
																translate(v = [0, -13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -5.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [9.95, -9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-13, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-13, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [10, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [10, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-10, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-10, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [12, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [12, 0, 0]) {
																	translate(v = [0, -13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -12, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -12, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = -14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 0.0, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 14.999999999999998, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, -10, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, -9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 12, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [0, 12, 0]) {
																	translate(v = [13.0, 0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [3, 0.2, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [12, 0, 0]) {
																	translate(v = [0, 13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [12, 0, 0]) {
																	translate(v = [0, 13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-10, 0, 0]) {
																	translate(v = [0, 13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-10, 0, 0]) {
																	translate(v = [0, 13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -14.999999999999998, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [10, 0, 0]) {
																	translate(v = [0, 13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [10, 0, 0]) {
																	translate(v = [0, 13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.7, 0, 0]) {
																	translate(v = [0, 13.0, 0]) {
																		translate(v = [0, 0, -7.9]) {
																			cube(center = true, size = [0.2, 3, 0.2]);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, -20.8, 7.64]) {
										translate(v = [0, 0, 230.49306344750678]) {
											rotate(a = -10.0, v = [0, 1, 0]) {
												translate(v = [0, 0, -230.49306344750678]) {
													translate(v = [0, 0, 79.73635378597841]) {
														rotate(a = 29.999999999999996, v = [1, 0, 0]) {
															translate(v = [0, 0, -79.73635378597841]) {
																translate(v = [-9.95, 9.95, 0]) {
																	translate(v = [0, 0, -2.54]) {
																		cube(center = true, size = [0.1, 0.1, 5.08]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				hull() {
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [10, 0, 0]) {
																translate(v = [0, 13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-13, 0, 0]) {
																translate(v = [0, 13.0, 0]) {
																	translate(v = [0, 0, -7.9]) {
																		cube(center = true, size = [0.2, 3, 0.2]);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
					translate(v = [0, 0, 30.5]) {
						rotate(a = 18.0, v = [1, 0, 0]) {
							rotate(a = 18.0, v = [0, 1, 0]) {
								translate(v = [0, 0, 3]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = 10.0, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-9.95, 9.95, 0]) {
																translate(v = [0, 0, -2.54]) {
																	cube(center = true, size = [0.1, 0.1, 5.08]);
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, 0, 230.49306344750678]) {
									rotate(a = 10.0, v = [0, 1, 0]) {
										translate(v = [0, 0, -230.49306344750678]) {
											translate(v = [0, 0, 79.73635378597841]) {
												rotate(a = 29.999999999999996, v = [1, 0, 0]) {
													translate(v = [0, 0, -79.73635378597841]) {
														translate(v = [0, 13.7, 0]) {
															translate(v = [0, 0, -8]) {
																union() {
																	translate(v = [0, 0, 1.5]) {
																		cylinder($fn = 16, center = true, h = 3, r = 4.078364632833273);
																	}
																	translate(v = [0, 0, 3]) {
																		difference() {
																			sphere($fn = 16, r = 4.141104721640332);
																			translate(v = [0, 0, -4.0]) {
																				cube(center = true, size = [8.0, 8.0, 8.0]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, 0, 230.49306344750678]) {
									rotate(a = 10.0, v = [0, 1, 0]) {
										translate(v = [0, 0, -230.49306344750678]) {
											translate(v = [0, 0, 79.73635378597841]) {
												rotate(a = 0.0, v = [1, 0, 0]) {
													translate(v = [0, 0, -79.73635378597841]) {
														translate(v = [-13.7, 0, 0]) {
															translate(v = [0, 0, -8]) {
																union() {
																	translate(v = [0, 0, 1.5]) {
																		cylinder($fn = 16, center = true, h = 3, r = 4.078364632833273);
																	}
																	translate(v = [0, 0, 3]) {
																		difference() {
																			sphere($fn = 16, r = 4.141104721640332);
																			translate(v = [0, 0, -4.0]) {
																				cube(center = true, size = [8.0, 8.0, 8.0]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, 0, 230.49306344750678]) {
									rotate(a = 5.0, v = [0, 1, 0]) {
										translate(v = [0, 0, -230.49306344750678]) {
											translate(v = [0, 0, 79.73635378597841]) {
												rotate(a = -29.999999999999996, v = [1, 0, 0]) {
													translate(v = [0, 0, -79.73635378597841]) {
														translate(v = [0, -13.7, 0]) {
															translate(v = [0, 0, -8]) {
																union() {
																	translate(v = [0, 0, 1.5]) {
																		cylinder($fn = 16, center = true, h = 3, r = 4.078364632833273);
																	}
																	translate(v = [0, 0, 3]) {
																		difference() {
																			sphere($fn = 16, r = 4.141104721640332);
																			translate(v = [0, 0, -4.0]) {
																				cube(center = true, size = [8.0, 8.0, 8.0]);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, -20.8, 7.64]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -14.999999999999998, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, -13.7, 0]) {
																translate(v = [0, 0, -8]) {
																	union() {
																		translate(v = [0, 0, 1.5]) {
																			cylinder($fn = 16, center = true, h = 3, r = 4.078364632833273);
																		}
																		translate(v = [0, 0, 3]) {
																			difference() {
																				sphere($fn = 16, r = 4.141104721640332);
																				translate(v = [0, 0, -4.0]) {
																					cube(center = true, size = [8.0, 8.0, 8.0]);
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, -20.8, 7.64]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -14.999999999999998, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [13.7, 0, 0]) {
																translate(v = [0, 0, -8]) {
																	union() {
																		translate(v = [0, 0, 1.5]) {
																			cylinder($fn = 16, center = true, h = 3, r = 4.078364632833273);
																		}
																		translate(v = [0, 0, 3]) {
																			difference() {
																				sphere($fn = 16, r = 4.141104721640332);
																				translate(v = [0, 0, -4.0]) {
																					cube(center = true, size = [8.0, 8.0, 8.0]);
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, -20.8, 7.64]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -14.999999999999998, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-1.5, 0, 0]) {
																translate(v = [0, 13.7, 0]) {
																	translate(v = [0, 0, -8]) {
																		union() {
																			translate(v = [0, 0, 1.5]) {
																				cylinder($fn = 16, center = true, h = 3, r = 4.078364632833273);
																			}
																			translate(v = [0, 0, 3]) {
																				difference() {
																					sphere($fn = 16, r = 4.141104721640332);
																					translate(v = [0, 0, -4.0]) {
																						cube(center = true, size = [8.0, 8.0, 8.0]);
																					}
																				}
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			union() {
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, 0, 230.49306344750678]) {
									rotate(a = 10.0, v = [0, 1, 0]) {
										translate(v = [0, 0, -230.49306344750678]) {
											translate(v = [0, 0, 79.73635378597841]) {
												rotate(a = 29.999999999999996, v = [1, 0, 0]) {
													translate(v = [0, 0, -79.73635378597841]) {
														translate(v = [0, 13.7, 0]) {
															translate(v = [0, 0, -8]) {
																union() {
																	translate(v = [0, 0, 2.75]) {
																		cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																	}
																	translate(v = [0, 0, 2.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.4352341016782733);
																	}
																	translate(v = [0, 0, -0.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.204293994002423);
																	}
																	cylinder($fn = 6, center = true, h = 6, r = 2.8578838324886475);
																	translate(v = [0, 0, 0.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 3.204293994002423, r2 = 2.8578838324886475);
																	}
																	translate(v = [0, 0, -2.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 3.4352341016782733, r2 = 2.8578838324886475);
																	}
																	translate(v = [0, 0, -2.75]) {
																		cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, 0, 230.49306344750678]) {
									rotate(a = 10.0, v = [0, 1, 0]) {
										translate(v = [0, 0, -230.49306344750678]) {
											translate(v = [0, 0, 79.73635378597841]) {
												rotate(a = 0.0, v = [1, 0, 0]) {
													translate(v = [0, 0, -79.73635378597841]) {
														translate(v = [-13.7, 0, 0]) {
															translate(v = [0, 0, -8]) {
																union() {
																	translate(v = [0, 0, 2.75]) {
																		cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																	}
																	translate(v = [0, 0, 2.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.4352341016782733);
																	}
																	translate(v = [0, 0, -0.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.204293994002423);
																	}
																	cylinder($fn = 6, center = true, h = 6, r = 2.8578838324886475);
																	translate(v = [0, 0, 0.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 3.204293994002423, r2 = 2.8578838324886475);
																	}
																	translate(v = [0, 0, -2.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 3.4352341016782733, r2 = 2.8578838324886475);
																	}
																	translate(v = [0, 0, -2.75]) {
																		cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, 0, 230.49306344750678]) {
									rotate(a = 5.0, v = [0, 1, 0]) {
										translate(v = [0, 0, -230.49306344750678]) {
											translate(v = [0, 0, 79.73635378597841]) {
												rotate(a = -29.999999999999996, v = [1, 0, 0]) {
													translate(v = [0, 0, -79.73635378597841]) {
														translate(v = [0, -13.7, 0]) {
															translate(v = [0, 0, -8]) {
																union() {
																	translate(v = [0, 0, 2.75]) {
																		cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																	}
																	translate(v = [0, 0, 2.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.4352341016782733);
																	}
																	translate(v = [0, 0, -0.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.204293994002423);
																	}
																	cylinder($fn = 6, center = true, h = 6, r = 2.8578838324886475);
																	translate(v = [0, 0, 0.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 3.204293994002423, r2 = 2.8578838324886475);
																	}
																	translate(v = [0, 0, -2.25]) {
																		cylinder($fn = 6, center = true, h = 0.5, r1 = 3.4352341016782733, r2 = 2.8578838324886475);
																	}
																	translate(v = [0, 0, -2.75]) {
																		cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, -20.8, 7.64]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -14.999999999999998, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = -29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [0, -13.7, 0]) {
																translate(v = [0, 0, -8]) {
																	union() {
																		translate(v = [0, 0, 2.75]) {
																			cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																		}
																		translate(v = [0, 0, 2.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.4352341016782733);
																		}
																		translate(v = [0, 0, -0.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.204293994002423);
																		}
																		cylinder($fn = 6, center = true, h = 6, r = 2.8578838324886475);
																		translate(v = [0, 0, 0.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 3.204293994002423, r2 = 2.8578838324886475);
																		}
																		translate(v = [0, 0, -2.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 3.4352341016782733, r2 = 2.8578838324886475);
																		}
																		translate(v = [0, 0, -2.75]) {
																			cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, -20.8, 7.64]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -14.999999999999998, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 0.0, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [13.7, 0, 0]) {
																translate(v = [0, 0, -8]) {
																	union() {
																		translate(v = [0, 0, 2.75]) {
																			cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																		}
																		translate(v = [0, 0, 2.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.4352341016782733);
																		}
																		translate(v = [0, 0, -0.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.204293994002423);
																		}
																		cylinder($fn = 6, center = true, h = 6, r = 2.8578838324886475);
																		translate(v = [0, 0, 0.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 3.204293994002423, r2 = 2.8578838324886475);
																		}
																		translate(v = [0, 0, -2.25]) {
																			cylinder($fn = 6, center = true, h = 0.5, r1 = 3.4352341016782733, r2 = 2.8578838324886475);
																		}
																		translate(v = [0, 0, -2.75]) {
																			cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
				translate(v = [0, 0, 30.5]) {
					rotate(a = 18.0, v = [1, 0, 0]) {
						rotate(a = 18.0, v = [0, 1, 0]) {
							translate(v = [0, 0, 3]) {
								translate(v = [0, -20.8, 7.64]) {
									translate(v = [0, 0, 230.49306344750678]) {
										rotate(a = -14.999999999999998, v = [0, 1, 0]) {
											translate(v = [0, 0, -230.49306344750678]) {
												translate(v = [0, 0, 79.73635378597841]) {
													rotate(a = 29.999999999999996, v = [1, 0, 0]) {
														translate(v = [0, 0, -79.73635378597841]) {
															translate(v = [-1.5, 0, 0]) {
																translate(v = [0, 13.7, 0]) {
																	translate(v = [0, 0, -8]) {
																		union() {
																			translate(v = [0, 0, 2.75]) {
																				cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																			}
																			translate(v = [0, 0, 2.25]) {
																				cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.4352341016782733);
																			}
																			translate(v = [0, 0, -0.25]) {
																				cylinder($fn = 6, center = true, h = 0.5, r1 = 2.8578838324886475, r2 = 3.204293994002423);
																			}
																			cylinder($fn = 6, center = true, h = 6, r = 2.8578838324886475);
																			translate(v = [0, 0, 0.25]) {
																				cylinder($fn = 6, center = true, h = 0.5, r1 = 3.204293994002423, r2 = 2.8578838324886475);
																			}
																			translate(v = [0, 0, -2.25]) {
																				cylinder($fn = 6, center = true, h = 0.5, r1 = 3.4352341016782733, r2 = 2.8578838324886475);
																			}
																			translate(v = [0, 0, -2.75]) {
																				cylinder($fn = 6, center = true, h = 0.5, r = 3.4352341016782733);
																			}
																		}
																	}
																}
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
			translate(v = [0, 0, 30.5]) {
				rotate(a = 18.0, v = [1, 0, 0]) {
					rotate(a = 18.0, v = [0, 1, 0]) {
						translate(v = [0, 0, 3]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = 10.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 29.999999999999996, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [-10.5, 0, -12.7]) {
														rotate(a = -90, v = [0, 1, 0]) {
															union() {
																difference() {
																	cylinder($fn = 16, center = true, h = 32, r = 7.850851918204051);
																	translate(v = [0, 0, 1.5]) {
																		cylinder($fn = 16, center = false, h = 1.25, r = 10.909625392829005);
																	}
																}
																cylinder($fn = 16, center = true, h = 10.0, r = 5.811669601787415);
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 7.499999999999999, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = -7.499999999999999, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												color(alpha = 1.0, c = [0, 1, 0]) {
													translate(v = [0, 0, -5]) {
														difference() {
															translate(v = [0, 0, -2.25]) {
																hull() {
																	translate(v = [9.375, 0, 0]) {
																		cylinder($fn = 16, center = true, h = 4.5, r = 2.548977895520796);
																	}
																	translate(v = [-9.375, 0, 0]) {
																		cylinder($fn = 16, center = true, h = 4.5, r = 2.548977895520796);
																	}
																}
															}
															translate(v = [7, 7.5, 0]) {
																cube(center = true, size = [10, 10, 20]);
															}
															translate(v = [-7, 7.5, 0]) {
																cube(center = true, size = [10, 10, 20]);
															}
															translate(v = [7, -7.5, 0]) {
																cube(center = true, size = [10, 10, 20]);
															}
															translate(v = [-7, -7.5, 0]) {
																cube(center = true, size = [10, 10, 20]);
															}
														}
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	translate(v = [0, 0, 30.5]) {
		rotate(a = 18.0, v = [1, 0, 0]) {
			rotate(a = 18.0, v = [0, 1, 0]) {
				translate(v = [0, 0, 3]) {
					translate(v = [0, 0, 230.49306344750678]) {
						rotate(a = 7.499999999999999, v = [0, 1, 0]) {
							translate(v = [0, 0, -230.49306344750678]) {
								translate(v = [0, 0, 79.73635378597841]) {
									rotate(a = -7.499999999999999, v = [1, 0, 0]) {
										translate(v = [0, 0, -79.73635378597841]) {
											translate(v = [0, 0, -5]) {
												union() {
													translate(v = [0, 0, -4.0]) {
														cylinder($fn = 16, center = true, h = 2, r = 3.9764055170124415);
													}
													cylinder($fn = 16, center = true, h = 9.9, r = 3.3136712641770347);
													translate(v = [9.375, 0, 0]) {
														cylinder($fn = 16, center = true, h = 9.9, r = 1.0195911582083184);
													}
													translate(v = [-9.375, 0, 0]) {
														cylinder($fn = 16, center = true, h = 9.9, r = 1.0195911582083184);
													}
													translate(v = [0, 0, -4.5]) {
														cube(center = true, size = [23.5, 17, 1]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
	union() {
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 10.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 29.999999999999996, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 29.999999999999996, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 6.82, -4.0]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = 0.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 29.999999999999996, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = -5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 29.999999999999996, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -10.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 29.999999999999996, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -14.999999999999998, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 29.999999999999996, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 10.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 14.999999999999998, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 14.999999999999998, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 6.82, -4.0]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = 0.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 14.999999999999998, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = -5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 14.999999999999998, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -10.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 14.999999999999998, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -14.999999999999998, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 14.999999999999998, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 10.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 0.0, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 0.0, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 6.82, -4.0]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = 0.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 0.0, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = -5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = 0.0, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -10.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 0.0, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -14.999999999999998, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = 0.0, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 10.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = -14.999999999999998, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = -14.999999999999998, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 6.82, -4.0]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = 0.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = -14.999999999999998, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = -5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = -14.999999999999998, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -10.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = -14.999999999999998, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -14.999999999999998, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = -14.999999999999998, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = 5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = -29.999999999999996, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 6.82, -4.0]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = 0.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = -29.999999999999996, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, 0, 230.49306344750678]) {
							rotate(a = -5.0, v = [0, 1, 0]) {
								translate(v = [0, 0, -230.49306344750678]) {
									translate(v = [0, 0, 79.73635378597841]) {
										rotate(a = -29.999999999999996, v = [1, 0, 0]) {
											translate(v = [0, 0, -79.73635378597841]) {
												translate(v = [0, 0, -5.875]) {
													cube(center = true, size = [19.04, 19.04, 1.59]);
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -10.0, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = -29.999999999999996, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
		translate(v = [0, 0, 30.5]) {
			rotate(a = 18.0, v = [1, 0, 0]) {
				rotate(a = 18.0, v = [0, 1, 0]) {
					translate(v = [0, 0, 3]) {
						translate(v = [0, -20.8, 7.64]) {
							translate(v = [0, 0, 230.49306344750678]) {
								rotate(a = -14.999999999999998, v = [0, 1, 0]) {
									translate(v = [0, 0, -230.49306344750678]) {
										translate(v = [0, 0, 79.73635378597841]) {
											rotate(a = -29.999999999999996, v = [1, 0, 0]) {
												translate(v = [0, 0, -79.73635378597841]) {
													translate(v = [0, 0, -5.875]) {
														cube(center = true, size = [19.04, 19.04, 1.59]);
													}
												}
											}
										}
									}
								}
							}
						}
					}
				}
			}
		}
	}
}
