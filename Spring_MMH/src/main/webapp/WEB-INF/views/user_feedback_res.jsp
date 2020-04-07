<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
<head>
<style>
/* @import url(http://fonts.googleapis.com/css?family=Noto+Sans); */

/* html, body { */
/* 	height: 100%; */
/* 	margin: 0; */
/* } */
</style>

<meta charset="UTF-8">
<title>1. Basic베이스</title>
<link type="text/css"
	href="https://uicdn.toast.com/tui-color-picker/v2.2.3/tui-color-picker.css"
	rel="stylesheet">
            <link type="text/css" href="resources/dist/tui-image-editor.css"
	rel="stylesheet">
<link type="text/css" href="resources/css/service-basic.css" rel="stylesheet">
</head>
<body>


	<div id="tui-image-editor-container"></div>
	<div class="demo-container">
		<div class="image-editor-wrap">
			<div id="tui-image-editor" class="tui-image-editor-container bottom"
				style="width: 100%; height: 100%;">
				<div class="tui-image-editor-controls">
					<div class="tui-image-editor-controls-logo">
						<img
							src="https://uicdn.toast.com/toastui/img/tui-image-editor-bi.png">
					</div>
					<ul class="tui-image-editor-menu">
						<li class="tie-btn-undo tui-image-editor-item"><svg
								class="svg_ic-menu">
                    <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-undo"
									class="enabled"></use>
                    <use
									xlink:href="/static/icon-a-843c03ed6edd3f2a4dc35357feedbbec.svg#icon-a-ic-undo"
									class="normal"></use>
                    <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-undo"
									class="hover"></use>
                </svg></li>
						<li class="tie-btn-redo tui-image-editor-item"><svg
								class="svg_ic-menu">
                    <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-redo"
									class="enabled"></use>
                    <use
									xlink:href="/static/icon-a-843c03ed6edd3f2a4dc35357feedbbec.svg#icon-a-ic-redo"
									class="normal"></use>
                    <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-redo"
									class="hover"></use>
                </svg></li>
						<li class="tie-btn-reset tui-image-editor-item"><svg
								class="svg_ic-menu">
                    <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-reset"
									class="enabled"></use>
                    <use
									xlink:href="/static/icon-a-843c03ed6edd3f2a4dc35357feedbbec.svg#icon-a-ic-reset"
									class="normal"></use>
                    <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-reset"
									class="hover"></use>
                </svg></li>
						<li class="tui-image-editor-item">
							<div class="tui-image-editor-icpartition"></div>
						</li>
						<li class="tie-btn-delete tui-image-editor-item"><svg
								class="svg_ic-menu">
                    <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-delete"
									class="enabled"></use>
                    <use
									xlink:href="/static/icon-a-843c03ed6edd3f2a4dc35357feedbbec.svg#icon-a-ic-delete"
									class="normal"></use>
                    <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-delete"
									class="hover"></use>
                </svg></li>
						<li class="tie-btn-delete-all tui-image-editor-item"><svg
								class="svg_ic-menu">
                    <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-delete-all"
									class="enabled"></use>
                    <use
									xlink:href="/static/icon-a-843c03ed6edd3f2a4dc35357feedbbec.svg#icon-a-ic-delete-all"
									class="normal"></use>
                    <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-delete-all"
									class="hover"></use>
                </svg></li>
						<li class="tui-image-editor-item">
							<div class="tui-image-editor-icpartition"></div>
						</li>
						<li id="tie-btn-crop" class="tui-image-editor-item normal"
							tooltip-content="Crop"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-crop"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-crop"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-crop"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-flip" class="tui-image-editor-item normal"
							tooltip-content="Flip"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-flip"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-flip"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-flip"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-rotate" class="tui-image-editor-item normal"
							tooltip-content="Rotate"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-rotate"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-rotate"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-rotate"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-draw" class="tui-image-editor-item normal"
							tooltip-content="Draw"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-draw"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-draw"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-draw"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-shape" class="tui-image-editor-item normal"
							tooltip-content="Shape"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-shape"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-shape"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-shape"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-icon" class="tui-image-editor-item normal"
							tooltip-content="Icon"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-icon"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-text" class="tui-image-editor-item normal"
							tooltip-content="Text"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-text"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-text"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-text"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-mask" class="tui-image-editor-item normal"
							tooltip-content="Mask"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-mask"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-mask"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-mask"
									class="hover"></use>
            </svg></li>
						<li id="tie-btn-filter"
							class="tui-image-editor-item normal active"
							tooltip-content="Filter"><svg class="svg_ic-menu">
                <use
									xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-filter"
									class="normal"></use>
                <use
									xlink:href="/static/icon-b-d70663d06bd44437c178f522047470cc.svg#icon-b-ic-filter"
									class="active"></use>
                <use
									xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-filter"
									class="hover"></use>
            </svg></li>
					</ul>

					<div class="tui-image-editor-controls-buttons">
						<div
							style="background-color: #fff; border: 1px solid #ddd; color: #222; font-family: 'Noto Sans', sans-serif; font-size: 12px">
							Load <input type="file" class="tui-image-editor-load-btn">
						</div>
						<button class="tui-image-editor-download-btn"
							style="background-color: #fdba3b; border: 1px solid #fdba3b; color: #fff; font-family: 'Noto Sans', sans-serif; font-size: 12px">
							Download</button>
					</div>
				</div>

				<div class="tui-image-editor-main-container"
					style="background-image: none; background-color: #1e1e1e; border: 0px">
					<div class="tui-image-editor-header"
						style="background-image: none; background-color: transparent; border: 0px">
						<div class="tui-image-editor-header-logo">
							<img
								src="https://uicdn.toast.com/toastui/img/tui-image-editor-bi.png">
						</div>
						<div class="tui-image-editor-header-buttons">
							<div
								style="background-color: #fff; border: 1px solid #ddd; color: #222; font-family: 'Noto Sans', sans-serif; font-size: 12px">
								Load <input type="file" class="tui-image-editor-load-btn">
							</div>
							<button class="tui-image-editor-download-btn"
								style="background-color: #fdba3b; border: 1px solid #fdba3b; color: #fff; font-family: 'Noto Sans', sans-serif; font-size: 12px">
								Download</button>
						</div>
					</div>
					<div class="tui-image-editor-main tui-image-editor-menu-filter">
						<div class="tui-image-editor-submenu">
							<div class="tui-image-editor-submenu-style"
								style="background-color: #1e1e1e"></div>
							<div class="tui-image-editor-menu-crop">
								<ul class="tui-image-editor-submenu-item">
									<li class="tie-crop-preset-button">
										<div class="tui-image-editor-button preset preset-none active">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-shape-rectangle"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-shape-rectangle"
														class="active"></use>
                    </svg>
											</div>
											<label> Custom </label>
										</div>
										<div class="tui-image-editor-button preset preset-square">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-crop"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-crop"
														class="active"></use>
                    </svg>
											</div>
											<label> Square </label>
										</div>
										<div class="tui-image-editor-button preset preset-3-2">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-crop"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-crop"
														class="active"></use>
                    </svg>
											</div>
											<label> 3:2 </label>
										</div>
										<div class="tui-image-editor-button preset preset-4-3">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-crop"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-crop"
														class="active"></use>
                    </svg>
											</div>
											<label> 4:3 </label>
										</div>
										<div class="tui-image-editor-button preset preset-5-4">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-crop"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-crop"
														class="active"></use>
                    </svg>
											</div>
											<label> 5:4 </label>
										</div>
										<div class="tui-image-editor-button preset preset-7-5">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-crop"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-crop"
														class="active"></use>
                    </svg>
											</div>
											<label> 7:5 </label>
										</div>
										<div class="tui-image-editor-button preset preset-16-9">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-crop"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-crop"
														class="active"></use>
                    </svg>
											</div>
											<label> 16:9 </label>
										</div>
									</li>
									<li class="tui-image-editor-partition tui-image-editor-newline">
									</li>
									<li class="tui-image-editor-partition only-left-right">
										<div></div>
									</li>
									<li class="tie-crop-button action">
										<div class="tui-image-editor-button apply">
											<svg class="svg_ic-menu">
                    <use
													xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-apply"
													class="normal"></use>
                    <use
													xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-apply"
													class="active"></use>
                </svg>
											<label> Apply </label>
										</div>
										<div class="tui-image-editor-button cancel">
											<svg class="svg_ic-menu">
                    <use
													xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-cancel"
													class="normal"></use>
                    <use
													xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-cancel"
													class="active"></use>
                </svg>
											<label> Cancel </label>
										</div>
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-flip">
								<ul class="tie-flip-button tui-image-editor-submenu-item">
									<li>
										<div class="tui-image-editor-button flipX">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-flip-x"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-flip-x"
														class="active"></use>
                    </svg>
											</div>
											<label> Flip X </label>
										</div>
										<div class="tui-image-editor-button flipY">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-flip-y"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-flip-y"
														class="active"></use>
                    </svg>
											</div>
											<label> Flip Y </label>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li>
										<div class="tui-image-editor-button resetFlip">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-flip-reset"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-flip-reset"
														class="active"></use>
                    </svg>
											</div>
											<label> Reset </label>
										</div>
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-rotate">
								<ul class="tui-image-editor-submenu-item">
									<li class="tie-retate-button">
										<div class="tui-image-editor-button clockwise">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-rotate-clockwise"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-rotate-clockwise"
														class="active"></use>
                    </svg>
											</div>
											<label> 30 </label>
										</div>
										<div class="tui-image-editor-button counterclockwise">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-rotate-counterclockwise"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-rotate-counterclockwise"
														class="active"></use>
                    </svg>
											</div>
											<label> -30 </label>
										</div>
									</li>
									<li class="tui-image-editor-partition only-left-right">
										<div></div>
									</li>
									<li
										class="tui-image-editor-newline tui-image-editor-range-wrap">
										<label class="range">Range</label>
										<div class="tie-rotate-range tui-image-editor-range">
											<div class="tui-image-editor-virtual-range-bar">
												<div class="tui-image-editor-virtual-range-subbar"
													style="right: 77px;"></div>
												<div class="tui-image-editor-virtual-range-pointer"
													style="left: 77px;"></div>
											</div>
										</div> <input
										class="tie-ratate-range-value tui-image-editor-range-value"
										value="0">
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-draw">
								<ul class="tui-image-editor-submenu-item">
									<li class="tie-draw-line-select-button">
										<div class="tui-image-editor-button free">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-draw-free"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-draw-free"
														class="active"></use>
                    </svg>
											</div>
											<label> Free </label>
										</div>
										<div class="tui-image-editor-button line">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-draw-line"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-draw-line"
														class="active"></use>
                    </svg>
											</div>
											<label> Straight </label>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li>
										<div class="tie-draw-color tui-image-editor-button"
											title="Color">
											<div class="color-picker-control" style="display: none;">
												<div class="color-picker">
													<div class="tui-colorpicker-container tui-view-1">
														<div class="tui-colorpicker-palette-container tui-view-2">
															<ul class="tui-colorpicker-clearfix">
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #000000; color: #000000"
																	title="#000000" value="#000000"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #2a2a2a; color: #2a2a2a"
																	title="#2a2a2a" value="#2a2a2a"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #545454; color: #545454"
																	title="#545454" value="#545454"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #7e7e7e; color: #7e7e7e"
																	title="#7e7e7e" value="#7e7e7e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #a8a8a8; color: #a8a8a8"
																	title="#a8a8a8" value="#a8a8a8"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #d2d2d2; color: #d2d2d2"
																	title="#d2d2d2" value="#d2d2d2"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ffffff; color: #ffffff"
																	title="#ffffff" value="#ffffff"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-color-transparent"
																	type="button" style="" title="" value=""></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff4040; color: #ff4040"
																	title="#ff4040" value="#ff4040"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff6518; color: #ff6518"
																	title="#ff6518" value="#ff6518"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ffbb3b; color: #ffbb3b"
																	title="#ffbb3b" value="#ffbb3b"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #03bd9e; color: #03bd9e"
																	title="#03bd9e" value="#03bd9e"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-selected"
																	type="button"
																	style="background-color: #00a9ff; color: #00a9ff"
																	title="#00a9ff" value="#00a9ff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #515ce6; color: #515ce6"
																	title="#515ce6" value="#515ce6"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #9e5fff; color: #9e5fff"
																	title="#9e5fff" value="#9e5fff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff5583; color: #ff5583"
																	title="#ff5583" value="#ff5583"></li>
															</ul>
															<div class="tui-colorpicker-clearfix"
																style="overflow: hidden">
																<input type="button"
																	class="tui-colorpicker-palette-toggle-slider"
																	value="Detail"> <input type="text"
																	class="tui-colorpicker-palette-hex" value="#00a9ff"
																	maxlength="7"> <span
																	class="tui-colorpicker-palette-preview"
																	style="background-color: #00a9ff; color: #00a9ff">#00a9ff</span>
															</div>
														</div>
														<div class="tui-colorpicker-slider-container tui-view-3"
															style="display: none;">
															<div
																class="tui-colorpicker-slider-left tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-slider">
<defs>
<linearGradient id="tui-colorpicker-svg-fill-color-1" x1="0%" y1="0%"
																		x2="100%" y2="0%">
<stop offset="0%" stop-color="rgb(255,255,255)"></stop>
<stop class="tui-colorpicker-slider-basecolor" offset="100%"
																		stop-color="#00aaff"></stop>
</linearGradient>
<linearGradient id="tui-colorpicker-svn-fill-black-1" x1="0%" y1="0%"
																		x2="0%" y2="100%">
<stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"></stop>
<stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"></stop>
</linearGradient>
</defs>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svg-fill-color-1)"></rect>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svn-fill-black-1)"></rect>
<path transform="translate(105,-7)"
																		class="tui-colorpicker-slider-handle"
																		d="M0 7.5 L15 7.5 M7.5 15 L7.5 0 M2 7 a5.5 5.5 0 1 1 0 1 Z"
																		stroke="black" stroke-width="0.75" fill="none"></path>
</svg>
															</div>
															<div
																class="tui-colorpicker-slider-right tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-huebar">
<defs>
<linearGradient id="g-1" x1="0%" y1="0%" x2="0%" y2="100%">
<stop offset="0%" stop-color="rgb(255,0,0)"></stop>
<stop offset="16.666%" stop-color="rgb(255,255,0)"></stop>
<stop offset="33.333%" stop-color="rgb(0,255,0)"></stop>
<stop offset="50%" stop-color="rgb(0,255,255)"></stop>
<stop offset="66.666%" stop-color="rgb(0,0,255)"></stop>
<stop offset="83.333%" stop-color="rgb(255,0,255)"></stop>
<stop offset="100%" stop-color="rgb(255,0,0)"></stop>
</linearGradient>
</defs>
<rect width="18px" height="100%" fill="url(#g-1)"></rect>
<path transform="translate(-6,62.557376593794274)"
																		class="tui-colorpicker-huebar-handle"
																		d="M0 0 L4 4 L0 8 L0 0 Z" fill="black" stroke="none"></path>
</svg>
															</div>
														</div>
													</div>
												</div>
												<div class="triangle"></div>
											</div>
											<div class="color-picker-value"
												style="background-color: rgb(0, 169, 255);"></div>
											<label>Color</label>
										</div>
									</li>
									<li class="tui-image-editor-partition only-left-right">
										<div></div>
									</li>
									<li
										class="tui-image-editor-newline tui-image-editor-range-wrap">
										<label class="range">Range</label>
										<div class="tie-draw-range tui-image-editor-range">
											<div class="tui-image-editor-virtual-range-bar">
												<div class="tui-image-editor-virtual-range-subbar"
													style="right: 110.88px;"></div>
												<div class="tui-image-editor-virtual-range-pointer"
													style="left: 43.12px;"></div>
											</div>
										</div> <input
										class="tie-draw-range-value tui-image-editor-range-value"
										value="0">
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-shape">
								<ul class="tui-image-editor-submenu-item">
									<li class="tie-shape-button">
										<div class="tui-image-editor-button rect">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-shape-rectangle"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-shape-rectangle"
														class="active"></use>
                    </svg>
											</div>
											<label> Rectangle </label>
										</div>
										<div class="tui-image-editor-button circle">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-shape-circle"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-shape-circle"
														class="active"></use>
                    </svg>
											</div>
											<label> Circle </label>
										</div>
										<div class="tui-image-editor-button triangle">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-shape-triangle"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-shape-triangle"
														class="active"></use>
                    </svg>
											</div>
											<label> Triangle </label>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li class="tie-shape-color-button">
										<div class="tie-color-fill tui-image-editor-button"
											title="Fill">
											<div class="color-picker-control" style="display: none;">
												<div class="color-picker">
													<div class="tui-colorpicker-container tui-view-8">
														<div class="tui-colorpicker-palette-container tui-view-9">
															<ul class="tui-colorpicker-clearfix">
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #000000; color: #000000"
																	title="#000000" value="#000000"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #2a2a2a; color: #2a2a2a"
																	title="#2a2a2a" value="#2a2a2a"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #545454; color: #545454"
																	title="#545454" value="#545454"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #7e7e7e; color: #7e7e7e"
																	title="#7e7e7e" value="#7e7e7e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #a8a8a8; color: #a8a8a8"
																	title="#a8a8a8" value="#a8a8a8"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #d2d2d2; color: #d2d2d2"
																	title="#d2d2d2" value="#d2d2d2"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ffffff; color: #ffffff"
																	title="#ffffff" value="#ffffff"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-selected tui-colorpicker-color-transparent"
																	type="button" style="" title="" value=""></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff4040; color: #ff4040"
																	title="#ff4040" value="#ff4040"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff6518; color: #ff6518"
																	title="#ff6518" value="#ff6518"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ffbb3b; color: #ffbb3b"
																	title="#ffbb3b" value="#ffbb3b"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #03bd9e; color: #03bd9e"
																	title="#03bd9e" value="#03bd9e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #00a9ff; color: #00a9ff"
																	title="#00a9ff" value="#00a9ff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #515ce6; color: #515ce6"
																	title="#515ce6" value="#515ce6"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #9e5fff; color: #9e5fff"
																	title="#9e5fff" value="#9e5fff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff5583; color: #ff5583"
																	title="#ff5583" value="#ff5583"></li>
															</ul>
															<div class="tui-colorpicker-clearfix"
																style="overflow: hidden">
																<input type="button"
																	class="tui-colorpicker-palette-toggle-slider"
																	value="Detail"> <input type="text"
																	class="tui-colorpicker-palette-hex" value=""
																	maxlength="7"> <span
																	class="tui-colorpicker-palette-preview"
																	style="background-color:; color:"></span>
															</div>
														</div>
														<div class="tui-colorpicker-slider-container tui-view-10"
															style="display: none;"></div>
													</div>
												</div>
												<div class="triangle"></div>
											</div>
											<div class="color-picker-value transparent"></div>
											<label>Fill</label>
										</div>
										<div class="tie-color-stroke tui-image-editor-button"
											title="Stroke">
											<div class="color-picker-control" style="display: none;">
												<div class="color-picker">
													<div class="tui-colorpicker-container tui-view-12">
														<div class="tui-colorpicker-palette-container tui-view-13">
															<ul class="tui-colorpicker-clearfix">
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #000000; color: #000000"
																	title="#000000" value="#000000"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #2a2a2a; color: #2a2a2a"
																	title="#2a2a2a" value="#2a2a2a"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #545454; color: #545454"
																	title="#545454" value="#545454"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #7e7e7e; color: #7e7e7e"
																	title="#7e7e7e" value="#7e7e7e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #a8a8a8; color: #a8a8a8"
																	title="#a8a8a8" value="#a8a8a8"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #d2d2d2; color: #d2d2d2"
																	title="#d2d2d2" value="#d2d2d2"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ffffff; color: #ffffff"
																	title="#ffffff" value="#ffffff"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-color-transparent"
																	type="button" style="" title="" value=""></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff4040; color: #ff4040"
																	title="#ff4040" value="#ff4040"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff6518; color: #ff6518"
																	title="#ff6518" value="#ff6518"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-selected"
																	type="button"
																	style="background-color: #ffbb3b; color: #ffbb3b"
																	title="#ffbb3b" value="#ffbb3b"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #03bd9e; color: #03bd9e"
																	title="#03bd9e" value="#03bd9e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #00a9ff; color: #00a9ff"
																	title="#00a9ff" value="#00a9ff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #515ce6; color: #515ce6"
																	title="#515ce6" value="#515ce6"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #9e5fff; color: #9e5fff"
																	title="#9e5fff" value="#9e5fff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff5583; color: #ff5583"
																	title="#ff5583" value="#ff5583"></li>
															</ul>
															<div class="tui-colorpicker-clearfix"
																style="overflow: hidden">
																<input type="button"
																	class="tui-colorpicker-palette-toggle-slider"
																	value="Detail"> <input type="text"
																	class="tui-colorpicker-palette-hex" value="#ffbb3b"
																	maxlength="7"> <span
																	class="tui-colorpicker-palette-preview"
																	style="background-color: #ffbb3b; color: #ffbb3b">#ffbb3b</span>
															</div>
														</div>
														<div class="tui-colorpicker-slider-container tui-view-14"
															style="display: none;">
															<div
																class="tui-colorpicker-slider-left tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-slider">
<defs>
<linearGradient id="tui-colorpicker-svg-fill-color-3" x1="0%" y1="0%"
																		x2="100%" y2="0%">
<stop offset="0%" stop-color="rgb(255,255,255)"></stop>
<stop class="tui-colorpicker-slider-basecolor" offset="100%"
																		stop-color="#ffa600"></stop>
</linearGradient>
<linearGradient id="tui-colorpicker-svn-fill-black-3" x1="0%" y1="0%"
																		x2="0%" y2="100%">
<stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"></stop>
<stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"></stop>
</linearGradient>
</defs>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svg-fill-color-3)"></rect>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svn-fill-black-3)"></rect>
<path transform="translate(79.24,-7)"
																		class="tui-colorpicker-slider-handle"
																		d="M0 7.5 L15 7.5 M7.5 15 L7.5 0 M2 7 a5.5 5.5 0 1 1 0 1 Z"
																		stroke="black" stroke-width="0.75" fill="none"></path>
</svg>
															</div>
															<div
																class="tui-colorpicker-slider-right tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-huebar">
<defs>
<linearGradient id="g-3" x1="0%" y1="0%" x2="0%" y2="100%">
<stop offset="0%" stop-color="rgb(255,0,0)"></stop>
<stop offset="16.666%" stop-color="rgb(255,255,0)"></stop>
<stop offset="33.333%" stop-color="rgb(0,255,0)"></stop>
<stop offset="50%" stop-color="rgb(0,255,255)"></stop>
<stop offset="66.666%" stop-color="rgb(0,0,255)"></stop>
<stop offset="83.333%" stop-color="rgb(255,0,255)"></stop>
<stop offset="100%" stop-color="rgb(255,0,0)"></stop>
</linearGradient>
</defs>
<rect width="18px" height="100%" fill="url(#g-3)"></rect>
<path transform="translate(-6,9.783688435789882)"
																		class="tui-colorpicker-huebar-handle"
																		d="M0 0 L4 4 L0 8 L0 0 Z" fill="black" stroke="none"></path>
</svg>
															</div>
														</div>
													</div>
												</div>
												<div class="triangle"></div>
											</div>
											<div class="color-picker-value"
												style="background-color: rgb(255, 187, 59);"></div>
											<label>Stroke</label>
										</div>
									</li>
									<li class="tui-image-editor-partition only-left-right">
										<div></div>
									</li>
									<li
										class="tui-image-editor-newline tui-image-editor-range-wrap">
										<label class="range">Stroke</label>
										<div class="tie-stroke-range tui-image-editor-range">
											<div class="tui-image-editor-virtual-range-bar">
												<div class="tui-image-editor-virtual-range-subbar"
													style="right: 153.483px;"></div>
												<div class="tui-image-editor-virtual-range-pointer"
													style="left: 0.516779px;"></div>
											</div>
										</div> <input
										class="tie-stroke-range-value tui-image-editor-range-value"
										value="0">
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-icon">
								<ul class="tui-image-editor-submenu-item">
									<li class="tie-icon-add-button">
										<div class="tui-image-editor-button"
											data-icontype="icon-arrow">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-arrow"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-arrow"
														class="active"></use>
                    </svg>
											</div>
											<label> Arrow </label>
										</div>
										<div class="tui-image-editor-button"
											data-icontype="icon-arrow-2">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-arrow-2"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-arrow-2"
														class="active"></use>
                    </svg>
											</div>
											<label> Arrow-2 </label>
										</div>
										<div class="tui-image-editor-button"
											data-icontype="icon-arrow-3">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-arrow-3"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-arrow-3"
														class="active"></use>
                    </svg>
											</div>
											<label> Arrow-3 </label>
										</div>
										<div class="tui-image-editor-button" data-icontype="icon-star">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-star"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-star"
														class="active"></use>
                    </svg>
											</div>
											<label> Star-1 </label>
										</div>
										<div class="tui-image-editor-button"
											data-icontype="icon-star-2">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-star-2"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-star-2"
														class="active"></use>
                    </svg>
											</div>
											<label> Star-2 </label>
										</div>

										<div class="tui-image-editor-button"
											data-icontype="icon-polygon">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-polygon"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-polygon"
														class="active"></use>
                    </svg>
											</div>
											<label> Polygon </label>
										</div>

										<div class="tui-image-editor-button"
											data-icontype="icon-location">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-location"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-location"
														class="active"></use>
                    </svg>
											</div>
											<label> Location </label>
										</div>

										<div class="tui-image-editor-button"
											data-icontype="icon-heart">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-heart"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-heart"
														class="active"></use>
                    </svg>
											</div>
											<label> Heart </label>
										</div>

										<div class="tui-image-editor-button"
											data-icontype="icon-bubble">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-bubble"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-bubble"
														class="active"></use>
                    </svg>
											</div>
											<label> Bubble </label>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li class="tie-icon-add-button">
										<div class="tui-image-editor-button" style="margin: 0">
											<div>
												<input type="file" accept="image/*"
													class="tie-icon-image-file">
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-icon-load"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-icon-load"
														class="active"></use>
                    </svg>
											</div>
											<label> Custom icon </label>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li>
										<div class="tie-icon-color tui-image-editor-button"
											title="Color">
											<div class="color-picker-control" style="display: none;">
												<div class="color-picker">
													<div class="tui-colorpicker-container tui-view-16">
														<div class="tui-colorpicker-palette-container tui-view-17">
															<ul class="tui-colorpicker-clearfix">
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #000000; color: #000000"
																	title="#000000" value="#000000"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #2a2a2a; color: #2a2a2a"
																	title="#2a2a2a" value="#2a2a2a"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #545454; color: #545454"
																	title="#545454" value="#545454"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #7e7e7e; color: #7e7e7e"
																	title="#7e7e7e" value="#7e7e7e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #a8a8a8; color: #a8a8a8"
																	title="#a8a8a8" value="#a8a8a8"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #d2d2d2; color: #d2d2d2"
																	title="#d2d2d2" value="#d2d2d2"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ffffff; color: #ffffff"
																	title="#ffffff" value="#ffffff"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-color-transparent"
																	type="button" style="" title="" value=""></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff4040; color: #ff4040"
																	title="#ff4040" value="#ff4040"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff6518; color: #ff6518"
																	title="#ff6518" value="#ff6518"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-selected"
																	type="button"
																	style="background-color: #ffbb3b; color: #ffbb3b"
																	title="#ffbb3b" value="#ffbb3b"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #03bd9e; color: #03bd9e"
																	title="#03bd9e" value="#03bd9e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #00a9ff; color: #00a9ff"
																	title="#00a9ff" value="#00a9ff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #515ce6; color: #515ce6"
																	title="#515ce6" value="#515ce6"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #9e5fff; color: #9e5fff"
																	title="#9e5fff" value="#9e5fff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff5583; color: #ff5583"
																	title="#ff5583" value="#ff5583"></li>
															</ul>
															<div class="tui-colorpicker-clearfix"
																style="overflow: hidden">
																<input type="button"
																	class="tui-colorpicker-palette-toggle-slider"
																	value="Detail"> <input type="text"
																	class="tui-colorpicker-palette-hex" value="#ffbb3b"
																	maxlength="7"> <span
																	class="tui-colorpicker-palette-preview"
																	style="background-color: #ffbb3b; color: #ffbb3b">#ffbb3b</span>
															</div>
														</div>
														<div class="tui-colorpicker-slider-container tui-view-18"
															style="display: none;">
															<div
																class="tui-colorpicker-slider-left tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-slider">
<defs>
<linearGradient id="tui-colorpicker-svg-fill-color-4" x1="0%" y1="0%"
																		x2="100%" y2="0%">
<stop offset="0%" stop-color="rgb(255,255,255)"></stop>
<stop class="tui-colorpicker-slider-basecolor" offset="100%"
																		stop-color="#ffa600"></stop>
</linearGradient>
<linearGradient id="tui-colorpicker-svn-fill-black-4" x1="0%" y1="0%"
																		x2="0%" y2="100%">
<stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"></stop>
<stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"></stop>
</linearGradient>
</defs>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svg-fill-color-4)"></rect>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svn-fill-black-4)"></rect>
<path transform="translate(79.24,-7)"
																		class="tui-colorpicker-slider-handle"
																		d="M0 7.5 L15 7.5 M7.5 15 L7.5 0 M2 7 a5.5 5.5 0 1 1 0 1 Z"
																		stroke="black" stroke-width="0.75" fill="none"></path>
</svg>
															</div>
															<div
																class="tui-colorpicker-slider-right tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-huebar">
<defs>
<linearGradient id="g-4" x1="0%" y1="0%" x2="0%" y2="100%">
<stop offset="0%" stop-color="rgb(255,0,0)"></stop>
<stop offset="16.666%" stop-color="rgb(255,255,0)"></stop>
<stop offset="33.333%" stop-color="rgb(0,255,0)"></stop>
<stop offset="50%" stop-color="rgb(0,255,255)"></stop>
<stop offset="66.666%" stop-color="rgb(0,0,255)"></stop>
<stop offset="83.333%" stop-color="rgb(255,0,255)"></stop>
<stop offset="100%" stop-color="rgb(255,0,0)"></stop>
</linearGradient>
</defs>
<rect width="18px" height="100%" fill="url(#g-4)"></rect>
<path transform="translate(-6,9.783688435789882)"
																		class="tui-colorpicker-huebar-handle"
																		d="M0 0 L4 4 L0 8 L0 0 Z" fill="black" stroke="none"></path>
</svg>
															</div>
														</div>
													</div>
												</div>
												<div class="triangle"></div>
											</div>
											<div class="color-picker-value"
												style="background-color: rgb(255, 187, 59);"></div>
											<label>Color</label>
										</div>
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-text">
								<ul class="tui-image-editor-submenu-item">
									<li class="tie-text-effect-button">
										<div class="tui-image-editor-button bold">
											<div>
												<svg class="svg_ic-submenu">
                    <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-text-bold"
														class="normal"></use>
                    <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-text-bold"
														class="active"></use>
                    </svg>
											</div>
											<label> Bold </label>
										</div>
										<div class="tui-image-editor-button italic">
											<div>
												<svg class="svg_ic-submenu">
                    <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-text-italic"
														class="normal"></use>
                    <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-text-italic"
														class="active"></use>
                    </svg>
											</div>
											<label> Italic </label>
										</div>
										<div class="tui-image-editor-button underline">
											<div>
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-text-underline"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-text-underline"
														class="active"></use>
                    </svg>
											</div>
											<label> Underline </label>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li class="tie-text-align-button">
										<div class="tui-image-editor-button left">
											<div>
												<svg class="svg_ic-submenu">
                     <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-text-align-left"
														class="normal"></use>
                     <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-text-align-left"
														class="active"></use>
                    </svg>
											</div>
											<label> Left </label>
										</div>
										<div class="tui-image-editor-button center">
											<div>
												<svg class="svg_ic-submenu">
                     <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-text-align-center"
														class="normal"></use>
                     <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-text-align-center"
														class="active"></use>
                    </svg>
											</div>
											<label> Center </label>
										</div>
										<div class="tui-image-editor-button right">
											<div>
												<svg class="svg_ic-submenu">
                     <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-text-align-right"
														class="normal"></use>
                     <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-text-align-right"
														class="active"></use>
                    </svg>
											</div>
											<label> Right </label>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li>
										<div class="tie-text-color tui-image-editor-button"
											title="Color">
											<div class="color-picker-control" style="display: none;">
												<div class="color-picker">
													<div class="tui-colorpicker-container tui-view-20">
														<div class="tui-colorpicker-palette-container tui-view-21">
															<ul class="tui-colorpicker-clearfix">
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #000000; color: #000000"
																	title="#000000" value="#000000"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #2a2a2a; color: #2a2a2a"
																	title="#2a2a2a" value="#2a2a2a"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #545454; color: #545454"
																	title="#545454" value="#545454"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #7e7e7e; color: #7e7e7e"
																	title="#7e7e7e" value="#7e7e7e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #a8a8a8; color: #a8a8a8"
																	title="#a8a8a8" value="#a8a8a8"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #d2d2d2; color: #d2d2d2"
																	title="#d2d2d2" value="#d2d2d2"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ffffff; color: #ffffff"
																	title="#ffffff" value="#ffffff"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-color-transparent"
																	type="button" style="" title="" value=""></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff4040; color: #ff4040"
																	title="#ff4040" value="#ff4040"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff6518; color: #ff6518"
																	title="#ff6518" value="#ff6518"></li>
																<li><input
																	class="tui-colorpicker-palette-button tui-colorpicker-selected"
																	type="button"
																	style="background-color: #ffbb3b; color: #ffbb3b"
																	title="#ffbb3b" value="#ffbb3b"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #03bd9e; color: #03bd9e"
																	title="#03bd9e" value="#03bd9e"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #00a9ff; color: #00a9ff"
																	title="#00a9ff" value="#00a9ff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #515ce6; color: #515ce6"
																	title="#515ce6" value="#515ce6"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #9e5fff; color: #9e5fff"
																	title="#9e5fff" value="#9e5fff"></li>
																<li><input class="tui-colorpicker-palette-button"
																	type="button"
																	style="background-color: #ff5583; color: #ff5583"
																	title="#ff5583" value="#ff5583"></li>
															</ul>
															<div class="tui-colorpicker-clearfix"
																style="overflow: hidden">
																<input type="button"
																	class="tui-colorpicker-palette-toggle-slider"
																	value="Detail"> <input type="text"
																	class="tui-colorpicker-palette-hex" value="#ffbb3b"
																	maxlength="7"> <span
																	class="tui-colorpicker-palette-preview"
																	style="background-color: #ffbb3b; color: #ffbb3b">#ffbb3b</span>
															</div>
														</div>
														<div class="tui-colorpicker-slider-container tui-view-22"
															style="display: none;">
															<div
																class="tui-colorpicker-slider-left tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-slider">
<defs>
<linearGradient id="tui-colorpicker-svg-fill-color-5" x1="0%" y1="0%"
																		x2="100%" y2="0%">
<stop offset="0%" stop-color="rgb(255,255,255)"></stop>
<stop class="tui-colorpicker-slider-basecolor" offset="100%"
																		stop-color="#ffa600"></stop>
</linearGradient>
<linearGradient id="tui-colorpicker-svn-fill-black-5" x1="0%" y1="0%"
																		x2="0%" y2="100%">
<stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"></stop>
<stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"></stop>
</linearGradient>
</defs>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svg-fill-color-5)"></rect>
<rect width="100%" height="100%"
																		fill="url(#tui-colorpicker-svn-fill-black-5)"></rect>
<path transform="translate(79.24,-7)"
																		class="tui-colorpicker-slider-handle"
																		d="M0 7.5 L15 7.5 M7.5 15 L7.5 0 M2 7 a5.5 5.5 0 1 1 0 1 Z"
																		stroke="black" stroke-width="0.75" fill="none"></path>
</svg>
															</div>
															<div
																class="tui-colorpicker-slider-right tui-colorpicker-slider-part">
																<svg
																	class="tui-colorpicker-svg tui-colorpicker-svg-huebar">
<defs>
<linearGradient id="g-5" x1="0%" y1="0%" x2="0%" y2="100%">
<stop offset="0%" stop-color="rgb(255,0,0)"></stop>
<stop offset="16.666%" stop-color="rgb(255,255,0)"></stop>
<stop offset="33.333%" stop-color="rgb(0,255,0)"></stop>
<stop offset="50%" stop-color="rgb(0,255,255)"></stop>
<stop offset="66.666%" stop-color="rgb(0,0,255)"></stop>
<stop offset="83.333%" stop-color="rgb(255,0,255)"></stop>
<stop offset="100%" stop-color="rgb(255,0,0)"></stop>
</linearGradient>
</defs>
<rect width="18px" height="100%" fill="url(#g-5)"></rect>
<path transform="translate(-6,9.783688435789882)"
																		class="tui-colorpicker-huebar-handle"
																		d="M0 0 L4 4 L0 8 L0 0 Z" fill="black" stroke="none"></path>
</svg>
															</div>
														</div>
													</div>
												</div>
												<div class="triangle"></div>
											</div>
											<div class="color-picker-value"
												style="background-color: rgb(255, 187, 59);"></div>
											<label>Color</label>
										</div>
									</li>
									<li class="tui-image-editor-partition only-left-right">
										<div></div>
									</li>
									<li
										class="tui-image-editor-newline tui-image-editor-range-wrap">
										<label class="range">Text size</label>
										<div class="tie-text-range tui-image-editor-range">
											<div class="tui-image-editor-virtual-range-bar">
												<div class="tui-image-editor-virtual-range-subbar"
													style="right: 85.5556px;"></div>
												<div class="tui-image-editor-virtual-range-pointer"
													style="left: 68.4444px;"></div>
											</div>
										</div> <input
										class="tie-text-range-value tui-image-editor-range-value"
										value="0">
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-mask">
								<ul class="tui-image-editor-submenu-item">
									<li>
										<div class="tui-image-editor-button">
											<div>
												<input type="file" accept="image/*"
													class="tie-mask-image-file">
												<svg class="svg_ic-submenu">
                        <use
														xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-mask-load"
														class="normal"></use>
                        <use
														xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-mask-load"
														class="active"></use>
                    </svg>
											</div>
											<label> Load Mask Image </label>
										</div>
									</li>
									<li class="tui-image-editor-partition only-left-right">
										<div></div>
									</li>
									<li class="tie-mask-apply tui-image-editor-newline apply"
										style="margin-top: 22px; margin-bottom: 5px">
										<div class="tui-image-editor-button apply">
											<svg class="svg_ic-menu">
                    <use
													xlink:href="/static/icon-d-4ef3abbd14fbe85ceebf36d900d2c9ad.svg#icon-d-ic-apply"
													class="normal"></use>
                    <use
													xlink:href="/static/icon-c-6f440c0d2fa852de523edfd5383ad682.svg#icon-c-ic-apply"
													class="active"></use>
                </svg>
											<label> Apply </label>
										</div>
									</li>
								</ul>
							</div>
							<div class="tui-image-editor-menu-filter">
								<ul class="tui-image-editor-submenu-item">
									<li class="tui-image-editor-submenu-align">
										<div class="tui-image-editor-checkbox-wrap fixed-width">
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-grayscale">
													<span>Grayscale</span>
												</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-invert">
													<span>Invert</span>
												</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-sepia">
													<span>Sepia</span>
												</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-vintage">
													<span>Sepia2</span>
												</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-blur">
													<span>Blur</span>
												</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-sharpen">
													<span>Sharpen</span>
												</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-emboss">
													<span>Emboss</span>
												</label>
											</div>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li class="tui-image-editor-submenu-align">
										<div
											class="tui-image-editor-checkbox-group tui-image-editor-disabled"
											style="margin-bottom: 7px;">
											<div class="tui-image-editor-checkbox-wrap">
												<div class="tui-image-editor-checkbox">
													<label> <input type="checkbox"
														class="tie-remove-white"> <span>Remove
															White</span>
													</label>
												</div>
											</div>
											<div
												class="tui-image-editor-newline tui-image-editor-range-wrap short">
												<label>Distance</label>
												<div
													class="tie-removewhite-distance-range tui-image-editor-range">
													<div class="tui-image-editor-virtual-range-bar">
														<div class="tui-image-editor-virtual-range-subbar"
															style="right: 70.4px;"></div>
														<div class="tui-image-editor-virtual-range-pointer"
															style="left: 17.6px;"></div>
													</div>
												</div>
											</div>
										</div>
										<div
											class="tui-image-editor-checkbox-group tui-image-editor-disabled">
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox"
													class="tie-brightness"> <span>Brightness</span>
												</label>
											</div>
											<div class="tui-image-editor-range-wrap short">
												<div class="tie-brightness-range tui-image-editor-range">
													<div class="tui-image-editor-virtual-range-bar">
														<div class="tui-image-editor-virtual-range-subbar"
															style="right: 44px;"></div>
														<div class="tui-image-editor-virtual-range-pointer"
															style="left: 44px;"></div>
													</div>
												</div>
											</div>
										</div>
										<div
											class="tui-image-editor-checkbox-group tui-image-editor-disabled">
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-noise">
													<span>Noise</span>
												</label>
											</div>
											<div class="tui-image-editor-range-wrap short">
												<div class="tie-noise-range tui-image-editor-range">
													<div class="tui-image-editor-virtual-range-bar">
														<div class="tui-image-editor-virtual-range-subbar"
															style="right: 79.2px;"></div>
														<div class="tui-image-editor-virtual-range-pointer"
															style="left: 8.8px;"></div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li class="tui-image-editor-partition only-left-right">
										<div></div>
									</li>
									<li class="tui-image-editor-submenu-align">
										<div
											class="tui-image-editor-checkbox-group tui-image-editor-disabled">
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-pixelate">
													<span>Pixelate</span>
												</label>
											</div>
											<div class="tui-image-editor-range-wrap short">
												<div class="tie-pixelate-range tui-image-editor-range">
													<div class="tui-image-editor-virtual-range-bar">
														<div class="tui-image-editor-virtual-range-subbar"
															style="right: 78.2222px;"></div>
														<div class="tui-image-editor-virtual-range-pointer"
															style="left: 9.77778px;"></div>
													</div>
												</div>
											</div>
										</div>
										<div
											class="tui-image-editor-checkbox-group tui-image-editor-disabled">
											<div
												class="tui-image-editor-newline tui-image-editor-checkbox-wrap">
												<div class="tui-image-editor-checkbox">
													<label> <input type="checkbox"
														class="tie-color-filter"> <span>Color
															Filter</span>
													</label>
												</div>
											</div>
											<div
												class="tui-image-editor-newline tui-image-editor-range-wrap short">
												<label>Threshold</label>
												<div
													class="tie-colorfilter-threshole-range tui-image-editor-range">
													<div class="tui-image-editor-virtual-range-bar">
														<div class="tui-image-editor-virtual-range-subbar"
															style="right: 70.4px;"></div>
														<div class="tui-image-editor-virtual-range-pointer"
															style="left: 17.6px;"></div>
													</div>
												</div>
											</div>
										</div>
									</li>
									<li class="tui-image-editor-partition">
										<div></div>
									</li>
									<li>
										<div class="filter-color-item">
											<div class="tie-filter-tint-color tui-image-editor-button"
												title="Tint">
												<div class="color-picker-control"
													style="height: 130px; display: none;">
													<div class="color-picker">
														<div class="tui-colorpicker-container tui-view-24">
															<div
																class="tui-colorpicker-palette-container tui-view-25">
																<ul class="tui-colorpicker-clearfix">
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #000000; color: #000000"
																		title="#000000" value="#000000"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #2a2a2a; color: #2a2a2a"
																		title="#2a2a2a" value="#2a2a2a"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #545454; color: #545454"
																		title="#545454" value="#545454"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #7e7e7e; color: #7e7e7e"
																		title="#7e7e7e" value="#7e7e7e"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #a8a8a8; color: #a8a8a8"
																		title="#a8a8a8" value="#a8a8a8"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #d2d2d2; color: #d2d2d2"
																		title="#d2d2d2" value="#d2d2d2"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ffffff; color: #ffffff"
																		title="#ffffff" value="#ffffff"></li>
																	<li><input
																		class="tui-colorpicker-palette-button tui-colorpicker-color-transparent"
																		type="button" style="" title="" value=""></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff4040; color: #ff4040"
																		title="#ff4040" value="#ff4040"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff6518; color: #ff6518"
																		title="#ff6518" value="#ff6518"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ffbb3b; color: #ffbb3b"
																		title="#ffbb3b" value="#ffbb3b"></li>
																	<li><input
																		class="tui-colorpicker-palette-button tui-colorpicker-selected"
																		type="button"
																		style="background-color: #03bd9e; color: #03bd9e"
																		title="#03bd9e" value="#03bd9e"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #00a9ff; color: #00a9ff"
																		title="#00a9ff" value="#00a9ff"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #515ce6; color: #515ce6"
																		title="#515ce6" value="#515ce6"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #9e5fff; color: #9e5fff"
																		title="#9e5fff" value="#9e5fff"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff5583; color: #ff5583"
																		title="#ff5583" value="#ff5583"></li>
																</ul>
																<div class="tui-colorpicker-clearfix"
																	style="overflow: hidden">
																	<input type="button"
																		class="tui-colorpicker-palette-toggle-slider"
																		value="Detail"> <input type="text"
																		class="tui-colorpicker-palette-hex" value="#03bd9e"
																		maxlength="7"> <span
																		class="tui-colorpicker-palette-preview"
																		style="background-color: #03bd9e; color: #03bd9e">#03bd9e</span>
																</div>
															</div>
															<div class="tui-colorpicker-slider-container tui-view-26"
																style="display: none;">
																<div
																	class="tui-colorpicker-slider-left tui-colorpicker-slider-part">
																	<svg
																		class="tui-colorpicker-svg tui-colorpicker-svg-slider">
<defs>
<linearGradient id="tui-colorpicker-svg-fill-color-6" x1="0%" y1="0%"
																			x2="100%" y2="0%">
<stop offset="0%" stop-color="rgb(255,255,255)"></stop>
<stop class="tui-colorpicker-slider-basecolor" offset="100%"
																			stop-color="#00ffd5"></stop>
</linearGradient>
<linearGradient id="tui-colorpicker-svn-fill-black-6" x1="0%" y1="0%"
																			x2="0%" y2="100%">
<stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"></stop>
<stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"></stop>
</linearGradient>
</defs>
<rect width="100%" height="100%"
																			fill="url(#tui-colorpicker-svg-fill-color-6)"></rect>
<rect width="100%" height="100%"
																			fill="url(#tui-colorpicker-svn-fill-black-6)"></rect>
<path transform="translate(102.76,22.120000000000005)"
																			class="tui-colorpicker-slider-handle"
																			d="M0 7.5 L15 7.5 M7.5 15 L7.5 0 M2 7 a5.5 5.5 0 1 1 0 1 Z"
																			stroke="black" stroke-width="0.75" fill="none"></path>
</svg>
																</div>
																<div
																	class="tui-colorpicker-slider-right tui-colorpicker-slider-part">
																	<svg
																		class="tui-colorpicker-svg tui-colorpicker-svg-huebar">
<defs>
<linearGradient id="g-6" x1="0%" y1="0%" x2="0%" y2="100%">
<stop offset="0%" stop-color="rgb(255,0,0)"></stop>
<stop offset="16.666%" stop-color="rgb(255,255,0)"></stop>
<stop offset="33.333%" stop-color="rgb(0,255,0)"></stop>
<stop offset="50%" stop-color="rgb(0,255,255)"></stop>
<stop offset="66.666%" stop-color="rgb(0,0,255)"></stop>
<stop offset="83.333%" stop-color="rgb(255,0,255)"></stop>
<stop offset="100%" stop-color="rgb(255,0,0)"></stop>
</linearGradient>
</defs>
<rect width="18px" height="100%" fill="url(#g-6)"></rect>
<path transform="translate(-6,52.723770104725126)"
																			class="tui-colorpicker-huebar-handle"
																			d="M0 0 L4 4 L0 8 L0 0 Z" fill="black" stroke="none"></path>
</svg>
																</div>
															</div>
														</div>
													</div>
													<div class="triangle"></div>
													<div>
														<label>Opacity</label>
														<div id="tie-filter-tint-opacity"
															class="tui-image-editor-range">
															<div class="tui-image-editor-virtual-range-bar">
																<div class="tui-image-editor-virtual-range-subbar"
																	style="right: 28.8px;"></div>
																<div class="tui-image-editor-virtual-range-pointer"
																	style="left: 67.2px;"></div>
															</div>
														</div>
													</div>
												</div>
												<div class="color-picker-value"
													style="background-color: rgb(3, 189, 158);"></div>
												<label>Tint</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-tint">
													<span></span>
												</label>
											</div>
										</div>
										<div class="filter-color-item">
											<div
												class="tie-filter-multiply-color tui-image-editor-button"
												title="Multiply">
												<div class="color-picker-control" style="display: none;">
													<div class="color-picker">
														<div class="tui-colorpicker-container tui-view-28">
															<div
																class="tui-colorpicker-palette-container tui-view-29">
																<ul class="tui-colorpicker-clearfix">
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #000000; color: #000000"
																		title="#000000" value="#000000"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #2a2a2a; color: #2a2a2a"
																		title="#2a2a2a" value="#2a2a2a"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #545454; color: #545454"
																		title="#545454" value="#545454"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #7e7e7e; color: #7e7e7e"
																		title="#7e7e7e" value="#7e7e7e"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #a8a8a8; color: #a8a8a8"
																		title="#a8a8a8" value="#a8a8a8"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #d2d2d2; color: #d2d2d2"
																		title="#d2d2d2" value="#d2d2d2"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ffffff; color: #ffffff"
																		title="#ffffff" value="#ffffff"></li>
																	<li><input
																		class="tui-colorpicker-palette-button tui-colorpicker-color-transparent"
																		type="button" style="" title="" value=""></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff4040; color: #ff4040"
																		title="#ff4040" value="#ff4040"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff6518; color: #ff6518"
																		title="#ff6518" value="#ff6518"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ffbb3b; color: #ffbb3b"
																		title="#ffbb3b" value="#ffbb3b"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #03bd9e; color: #03bd9e"
																		title="#03bd9e" value="#03bd9e"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #00a9ff; color: #00a9ff"
																		title="#00a9ff" value="#00a9ff"></li>
																	<li><input
																		class="tui-colorpicker-palette-button tui-colorpicker-selected"
																		type="button"
																		style="background-color: #515ce6; color: #515ce6"
																		title="#515ce6" value="#515ce6"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #9e5fff; color: #9e5fff"
																		title="#9e5fff" value="#9e5fff"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff5583; color: #ff5583"
																		title="#ff5583" value="#ff5583"></li>
																</ul>
																<div class="tui-colorpicker-clearfix"
																	style="overflow: hidden">
																	<input type="button"
																		class="tui-colorpicker-palette-toggle-slider"
																		value="Detail"> <input type="text"
																		class="tui-colorpicker-palette-hex" value="#515ce6"
																		maxlength="7"> <span
																		class="tui-colorpicker-palette-preview"
																		style="background-color: #515ce6; color: #515ce6">#515ce6</span>
																</div>
															</div>
															<div class="tui-colorpicker-slider-container tui-view-30"
																style="display: none;">
																<div
																	class="tui-colorpicker-slider-left tui-colorpicker-slider-part">
																	<svg
																		class="tui-colorpicker-svg tui-colorpicker-svg-slider">
<defs>
<linearGradient id="tui-colorpicker-svg-fill-color-7" x1="0%" y1="0%"
																			x2="100%" y2="0%">
<stop offset="0%" stop-color="rgb(255,255,255)"></stop>
<stop class="tui-colorpicker-slider-basecolor" offset="100%"
																			stop-color="#0011ff"></stop>
</linearGradient>
<linearGradient id="tui-colorpicker-svn-fill-black-7" x1="0%" y1="0%"
																			x2="0%" y2="100%">
<stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"></stop>
<stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"></stop>
</linearGradient>
</defs>
<rect width="100%" height="100%"
																			fill="url(#tui-colorpicker-svg-fill-color-7)"></rect>
<rect width="100%" height="100%"
																			fill="url(#tui-colorpicker-svn-fill-black-7)"></rect>
<path transform="translate(65.8,4.200000000000003)"
																			class="tui-colorpicker-slider-handle"
																			d="M0 7.5 L15 7.5 M7.5 15 L7.5 0 M2 7 a5.5 5.5 0 1 1 0 1 Z"
																			stroke="black" stroke-width="0.75" fill="none"></path>
</svg>
																</div>
																<div
																	class="tui-colorpicker-slider-right tui-colorpicker-slider-part">
																	<svg
																		class="tui-colorpicker-svg tui-colorpicker-svg-huebar">
<defs>
<linearGradient id="g-7" x1="0%" y1="0%" x2="0%" y2="100%">
<stop offset="0%" stop-color="rgb(255,0,0)"></stop>
<stop offset="16.666%" stop-color="rgb(255,255,0)"></stop>
<stop offset="33.333%" stop-color="rgb(0,255,0)"></stop>
<stop offset="50%" stop-color="rgb(0,255,255)"></stop>
<stop offset="66.666%" stop-color="rgb(0,0,255)"></stop>
<stop offset="83.333%" stop-color="rgb(255,0,255)"></stop>
<stop offset="100%" stop-color="rgb(255,0,0)"></stop>
</linearGradient>
</defs>
<rect width="18px" height="100%" fill="url(#g-7)"></rect>
<path transform="translate(-6,74.35770438067723)"
																			class="tui-colorpicker-huebar-handle"
																			d="M0 0 L4 4 L0 8 L0 0 Z" fill="black" stroke="none"></path>
</svg>
																</div>
															</div>
														</div>
													</div>
													<div class="triangle"></div>
												</div>
												<div class="color-picker-value"
													style="background-color: rgb(81, 92, 230);"></div>
												<label>Multiply</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-multiply">
													<span></span>
												</label>
											</div>
										</div>
										<div class="filter-color-item">
											<div class="tie-filter-blend-color tui-image-editor-button"
												title="Blend">
												<div class="color-picker-control"
													style="height: 130px; display: none;">
													<div class="color-picker">
														<div class="tui-colorpicker-container tui-view-32">
															<div
																class="tui-colorpicker-palette-container tui-view-33">
																<ul class="tui-colorpicker-clearfix">
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #000000; color: #000000"
																		title="#000000" value="#000000"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #2a2a2a; color: #2a2a2a"
																		title="#2a2a2a" value="#2a2a2a"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #545454; color: #545454"
																		title="#545454" value="#545454"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #7e7e7e; color: #7e7e7e"
																		title="#7e7e7e" value="#7e7e7e"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #a8a8a8; color: #a8a8a8"
																		title="#a8a8a8" value="#a8a8a8"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #d2d2d2; color: #d2d2d2"
																		title="#d2d2d2" value="#d2d2d2"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ffffff; color: #ffffff"
																		title="#ffffff" value="#ffffff"></li>
																	<li><input
																		class="tui-colorpicker-palette-button tui-colorpicker-color-transparent"
																		type="button" style="" title="" value=""></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff4040; color: #ff4040"
																		title="#ff4040" value="#ff4040"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff6518; color: #ff6518"
																		title="#ff6518" value="#ff6518"></li>
																	<li><input
																		class="tui-colorpicker-palette-button tui-colorpicker-selected"
																		type="button"
																		style="background-color: #ffbb3b; color: #ffbb3b"
																		title="#ffbb3b" value="#ffbb3b"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #03bd9e; color: #03bd9e"
																		title="#03bd9e" value="#03bd9e"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #00a9ff; color: #00a9ff"
																		title="#00a9ff" value="#00a9ff"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #515ce6; color: #515ce6"
																		title="#515ce6" value="#515ce6"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #9e5fff; color: #9e5fff"
																		title="#9e5fff" value="#9e5fff"></li>
																	<li><input class="tui-colorpicker-palette-button"
																		type="button"
																		style="background-color: #ff5583; color: #ff5583"
																		title="#ff5583" value="#ff5583"></li>
																</ul>
																<div class="tui-colorpicker-clearfix"
																	style="overflow: hidden">
																	<input type="button"
																		class="tui-colorpicker-palette-toggle-slider"
																		value="Detail"> <input type="text"
																		class="tui-colorpicker-palette-hex" value="#ffbb3b"
																		maxlength="7"> <span
																		class="tui-colorpicker-palette-preview"
																		style="background-color: #ffbb3b; color: #ffbb3b">#ffbb3b</span>
																</div>
															</div>
															<div class="tui-colorpicker-slider-container tui-view-34"
																style="display: none;">
																<div
																	class="tui-colorpicker-slider-left tui-colorpicker-slider-part">
																	<svg
																		class="tui-colorpicker-svg tui-colorpicker-svg-slider">
<defs>
<linearGradient id="tui-colorpicker-svg-fill-color-8" x1="0%" y1="0%"
																			x2="100%" y2="0%">
<stop offset="0%" stop-color="rgb(255,255,255)"></stop>
<stop class="tui-colorpicker-slider-basecolor" offset="100%"
																			stop-color="#ffa600"></stop>
</linearGradient>
<linearGradient id="tui-colorpicker-svn-fill-black-8" x1="0%" y1="0%"
																			x2="0%" y2="100%">
<stop offset="0%" style="stop-color:rgb(0,0,0);stop-opacity:0"></stop>
<stop offset="100%" style="stop-color:rgb(0,0,0);stop-opacity:1"></stop>
</linearGradient>
</defs>
<rect width="100%" height="100%"
																			fill="url(#tui-colorpicker-svg-fill-color-8)"></rect>
<rect width="100%" height="100%"
																			fill="url(#tui-colorpicker-svn-fill-black-8)"></rect>
<path transform="translate(79.24,-7)"
																			class="tui-colorpicker-slider-handle"
																			d="M0 7.5 L15 7.5 M7.5 15 L7.5 0 M2 7 a5.5 5.5 0 1 1 0 1 Z"
																			stroke="black" stroke-width="0.75" fill="none"></path>
</svg>
																</div>
																<div
																	class="tui-colorpicker-slider-right tui-colorpicker-slider-part">
																	<svg
																		class="tui-colorpicker-svg tui-colorpicker-svg-huebar">
<defs>
<linearGradient id="g-8" x1="0%" y1="0%" x2="0%" y2="100%">
<stop offset="0%" stop-color="rgb(255,0,0)"></stop>
<stop offset="16.666%" stop-color="rgb(255,255,0)"></stop>
<stop offset="33.333%" stop-color="rgb(0,255,0)"></stop>
<stop offset="50%" stop-color="rgb(0,255,255)"></stop>
<stop offset="66.666%" stop-color="rgb(0,0,255)"></stop>
<stop offset="83.333%" stop-color="rgb(255,0,255)"></stop>
<stop offset="100%" stop-color="rgb(255,0,0)"></stop>
</linearGradient>
</defs>
<rect width="18px" height="100%" fill="url(#g-8)"></rect>
<path transform="translate(-6,9.783688435789882)"
																			class="tui-colorpicker-huebar-handle"
																			d="M0 0 L4 4 L0 8 L0 0 Z" fill="black" stroke="none"></path>
</svg>
																</div>
															</div>
														</div>
													</div>
													<div class="triangle"></div>
													<div class="tui-image-editor-selectlist-wrap">
														<select><option value="add">Add</option>
															<option value="diff">Diff</option>
															<option value="subtract">Subtract</option>
															<option value="multiply">Multiply</option>
															<option value="screen">Screen</option>
															<option value="lighten">Lighten</option>
															<option value="darken">Darken</option></select>
														<ul class="tui-image-editor-selectlist">
															<li data-item="add">Add</li>
															<li data-item="diff">Diff</li>
															<li data-item="subtract">Subtract</li>
															<li data-item="multiply">Multiply</li>
															<li data-item="screen">Screen</li>
															<li data-item="lighten">Lighten</li>
															<li data-item="darken">Darken</li>
														</ul>
													</div>
												</div>
												<div class="color-picker-value"
													style="background-color: rgb(255, 187, 59);"></div>
												<label>Blend</label>
											</div>
											<div class="tui-image-editor-checkbox">
												<label> <input type="checkbox" class="tie-blend">
													<span></span>
												</label>
											</div>
										</div>
									</li>
								</ul>
							</div>
						</div>
						<div class="tui-image-editor-wrap"
							style="bottom: 0px; top: 0px; left: 0px; width: 100%;">
							<div class="tui-image-editor-size-wrap">
								<div class="tui-image-editor-align-wrap">
									<div class="tui-image-editor"
										style="top: -75px; left: 0px; height: 350px; width: 490px;">
										<div class="tui-image-editor-canvas-container"
											style="width: 100%; height: 100%; position: relative; user-select: none; max-width: 490px; max-height: 350px;">
											<canvas class="lower-canvas" width="1125" height="803"
												style="position: absolute; width: 100%; height: 100%; left: 0px; top: 0px; touch-action: none; user-select: none; max-width: 490px; max-height: 350px;"></canvas>
											<canvas class="upper-canvas " width="1125" height="803"
												style="position: absolute; width: 100%; height: 100%; left: 0px; top: 0px; touch-action: none; user-select: none; max-width: 490px; max-height: 350px; cursor: default;"></canvas>
											<div class="tui-image-editor-grid-visual">
												<table>
													<tbody>
														<tr>
															<td class="dot left-top"></td>
															<td></td>
															<td class="dot right-top"></td>
														</tr>
														<tr>
															<td></td>
															<td></td>
															<td></td>
														</tr>
														<tr>
															<td class="dot left-bottom"></td>
															<td></td>
															<td class="dot right-bottom"></td>
														</tr>
													</tbody>
												</table>
											</div>
										</div>
									</div>
								</div>
							</div>
						</div>
					</div>
				</div>
			</div>
		</div>
	</div>

	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/3.6.0/fabric.js"></script>
	<script type="text/javascript" src="https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.min.js"></script>
	<script type="text/javascript" src="https://uicdn.toast.com/tui-color-picker/v2.2.3/tui-color-picker.js"></script>
	<script type="text/javascript" src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.3/FileSaver.min.js"></script>
	<script type="text/javascript" src="../dist/tui-image-editor.js"></script>
	<script type="text/javascript" src="./js/theme/white-theme.js"></script>
	<!--         <script type="text/javascript" src="./js/theme/black-theme.js"></script> -->
	<script>
		// Image editor
		var imageEditor = new tui.ImageEditor('#tui-image-editor-container', {
			includeUI : {
				loadImage : {
					path : 'img/sampleImage2.png',
					name : 'SampleImage'
				},
				theme : blackTheme, // or whiteTheme
				initMenu : 'filter',
				menuBarPosition : 'bottom'
			},
			cssMaxWidth : 700,
			cssMaxHeight : 500,
			usageStatistics : false
		});
		window.onresize = function() {
			imageEditor.ui.resizeEditor();
		}
	</script>
</body>
</html>