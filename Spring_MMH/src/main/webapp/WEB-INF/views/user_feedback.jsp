<%@ taglib prefix="c" uri="http://java.sun.com/jsp/jstl/core"%>
<%@ page language="java" contentType="text/html; charset=UTF-8"
	pageEncoding="UTF-8"%>
<!DOCTYPE html>
<html>
    <head profile="http://www.w3.org/2005/10/profile">
     
        <meta charset="UTF-8">
        <title>1. Basic</title>
        <link type="text/css" href="https://uicdn.toast.com/tui-color-picker/v2.2.3/tui-color-picker.css"
            rel="stylesheet">
        <link type="text/css" href="resources/nhnimg/css/service-basic.css?ver=1" rel="stylesheet">
        <link href="resources/nhnimg/js/theme/white-theme.js">
    <!-- Failed to load resource: the server responded with a status of 404 () 해결 위해서 아래 링크추가, head태크에 profile추가 -->
        <link rel="icon" type="image/png" href="http://example.com/myicon.png"> 
    </head>
    <body>
        <div class="body-container">
            <div class="tui-image-editor-controls">
                <div class="header">
<!--                     <img class="logo" src="img/TOAST UI Component.png"> -->
                    <span class="name"> 회의록 전결</span>
                    <ul class="menu">
                        <li class="menu-item border input-wrapper">
                            Load
                            <input type="file" accept="image/*" id="input-image-file">
                        </li>
                        <li class="menu-item border" id="btn-download">Download</li>
                    </ul>
                </div>
                <ul class="menu">
                    <li class="menu-item disabled" id="btn-undo">이전작업</li>
                    <li class="menu-item disabled" id="btn-redo">다음작업</li>
                    <li class="menu-item" id="btn-clear-objects">작업지우기</li>
                    <li class="menu-item" id="btn-remove-active-object">동적 오브젝트 제거</li>
                    <li class="menu-item" id="btn-crop">자르기</li>
                    <li class="menu-item" id="btn-flip">반전</li>
                    <li class="menu-item" id="btn-rotation">기울기</li>
                    <li class="menu-item" id="btn-draw-line">드로잉</li>
                    <li class="menu-item" id="btn-draw-shape">도형</li>
                    <li class="menu-item" id="btn-add-icon">아이콘</li>
                    <li class="menu-item" id="btn-text">텍스트상자</li>
                    <li class="menu-item" id="btn-mask-filter">마스킹</li>
                    <li class="menu-item" id="btn-image-filter">필터</li>
                </ul>
                <div class="sub-menu-container" id="crop-sub-menu">
                    <ul class="menu">
                        <li class="menu-item" id="btn-apply-crop">적용</li>
                        <li class="menu-item" id="btn-cancel-crop">취소</li>
                    </ul>
                </div>
                <div class="sub-menu-container" id="flip-sub-menu">
                    <ul class="menu">
                        <li class="menu-item" id="btn-flip-x">X축 반전</li>
                        <li class="menu-item" id="btn-flip-y">Y축 반전</li>
                        <li class="menu-item" id="btn-reset-flip">초기화</li>
                        <li class="menu-item close">종료</li>
                    </ul>
                </div>
                <div class="sub-menu-container" id="rotation-sub-menu">
                    <ul class="menu">
                        <li class="menu-item" id="btn-rotate-clockwise">시계방향(30)</li>
                        <li class="menu-item" id="btn-rotate-counter-clockwise">역시계방향(-30)</li>
                        <li class="menu-item no-pointer"><label>임의 기울기<input id="input-rotation-range" type="range" min="-360" value="0" max="360"></label></li>
                        <li class="menu-item close">종료</li>
                    </ul>
                </div>
                <div class="sub-menu-container menu" id="draw-line-sub-menu">
                    <ul class="menu">
                        <li class="menu-item">
                            <label><input type="radio" name="select-line-type" value="freeDrawing" checked="checked"> 자유형 그리기</label>
                            <label><input type="radio" name="select-line-type" value="lineDrawing"> 직선 그리기</label>
                        </li>
                        <li class="menu-item">
                            <div id="tui-brush-color-picker">펜 색깔</div>
                        </li>
                        <li class="menu-item"><label class="menu-item no-pointer">펜 두께<input id="input-brush-width-range" type="range" min="5" max="30" value="12"></label></li>
                        <li class="menu-item close">종료</li>
                    </ul>
                </div>
                <div class="sub-menu-container" id="draw-shape-sub-menu">
                    <ul class="menu">
                        <li class="menu-item">
                            <label><input type="radio" name="select-shape-type" value="rect" checked="checked">사각형</label>
                            <label><input type="radio" name="select-shape-type" value="circle">원</label>
                            <label><input type="radio" name="select-shape-type" value="triangle">삼각형</label>
                        </li>
                        <li class="menu-item">
                            <select name="select-color-type">
                                <option value="fill">채우기</option>
                                <option value="stroke">선</option>
                            </select>
                            <label><input type="checkbox" id="input-check-transparent">transparent</label>
                            <div id="tui-shape-color-picker"></div>
                        </li>
                        <li class="menu-item"><label class="menu-item no-pointer">선두께<input id="input-stroke-width-range" type="range" min="0" max="300" value="12"></label></li>
                        <li class="menu-item close">종료</li>
                    </ul>
                </div>
                <div class="sub-menu-container" id="icon-sub-menu">
                    <ul class="menu">
                        <li class="menu-item">
                            <div id="tui-icon-color-picker">아이콘 색깔</div>
                        </li>
                        <li class="menu-item border" id="btn-register-icon">아이콘 사용</li>
                        <li class="menu-item icon-text" data-icon-type="arrow">➡</li>
                        <li class="menu-item icon-text" data-icon-type="cancel">✖</li>
                        <li class="menu-item close">종료</li>
                    </ul>
                </div>
                <div class="sub-menu-container" id="text-sub-menu">
                    <ul class="menu">
                        <li class="menu-item">
                            <div>
                                <button class="btn-text-style" data-style-type="b">Bold</button>
                                <button class="btn-text-style" data-style-type="i">Italic</button>
                                <button class="btn-text-style" data-style-type="u">Underline</button>
                            </div>
                            <div>
                                <button class="btn-text-style" data-style-type="l">좌측정렬</button>
                                <button class="btn-text-style" data-style-type="c">중앙정렬</button>
                                <button class="btn-text-style" data-style-type="r">우측정렬</button>
                            </div>
                        </li>
                        <li class="menu-item"><label class="no-pointer"><input id="input-font-size-range" type="range" min="10" max="100" value="10"></label></li>
                        <li class="menu-item">
                            <div id="tui-text-color-picker">글자 색</div>
                        </li>
                        <li class="menu-item close">종료</li>
                    </ul>
                </div>
                <div class="sub-menu-container" id="filter-sub-menu">
                    <ul class="menu">
                        <li class="menu-item border input-wrapper">
                            	사진 화장시키기
                            <input type="file" accept="image/*" id="input-mask-image-file">
                        </li>
                        <li class="menu-item" id="btn-apply-mask">사진에 화장필터 적용</li>
                        <li class="menu-item close">종료</li>
                    </ul>
                </div>
                <div class="sub-menu-container" id="image-filter-sub-menu">
                    <ul class="menu">
                        <li class="menu-item align-left-top">
                            <table>
                                <tbody>
                                    <tr>
                                        <td><label><input type="checkbox" id="input-check-grayscale">흑백톤</label></td>
                                        <td><label><input type="checkbox" id="input-check-invert">명암반전</label></td>
                                        <td><label><input type="checkbox" id="input-check-sepia">세피아톤1</label></td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" id="input-check-sepia2">세피아톤2</label></td>
                                        <td><label><input type="checkbox" id="input-check-blur">흐리게하기</label></td>
                                        <td><label><input type="checkbox" id="input-check-sharpen">예리한질감</label></td>
                                    </tr>
                                    <tr>
                                        <td><label><input type="checkbox" id="input-check-emboss">양각질감</label></td>
                                    </tr>
                                </tbody>
                            </table>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-remove-white">RemoveWhite</label><br>
                                <label>Threshold<input class="range-narrow" id="input-range-remove-white-threshold" type="range" min="0" value="60" max="255"></label><br>
                                <label>Distance<input class="range-narrow" id="input-range-remove-white-distance" type="range" min="0" value="10" max="255"></label>
                            </p>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-brightness">Brightness</label><br>
                                <label>Value<input class="range-narrow" id="input-range-brightness-value" type="range" min="-255" value="100" max="255"></label>
                            </p>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-noise">Noise</label><br>
                                <label>Value<input class="range-narrow" id="input-range-noise-value" type="range" min="0" value="100" max="1000"></label>
                            </p>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-color-filter">ColorFilter</label><br>
                                <label>Threshold<input class="range-narrow" id="input-range-color-filter-value"
                                    type="range" min="0" value="45" max="255"></label>
                            </p>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-pixelate">Pixelate</label><br>
                                <label>Value<input class="range-narrow" id="input-range-pixelate-value" type="range" min="2" value="4" max="20"></label>
                            </p>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-tint">Tint</label><br>
                                <div id="tui-tint-color-picker"></div>
                                <label>Opacity<input class="range-narrow" id="input-range-tint-opacity-value" type="range" min="0" value="1" max="1" step="0.1"></label>
                            </p>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-multiply">Multiply</label>
                                <div id="tui-multiply-color-picker"></div>
                            </p>
                        </li>
                        <li class="menu-item align-left-top">
                            <p>
                                <label><input type="checkbox" id="input-check-blend">Blend</label>
                                <div id="tui-blend-color-picker"></div>
                                <select name="select-blend-type">
                                    <option value="add" selected>Add</option>
                                    <option value="diff">Diff</option>
                                    <option value="diff">Subtract</option>
                                    <option value="multiply">Multiply</option>
                                    <option value="screen">Screen</option>
                                    <option value="lighten">Lighten</option>
                                    <option value="darken">Darken</option>
                                </select>
                            </p>
                        </li>
                        <li class="menu-item close">Close</li>
                    </ul>
                </div>
            </div>
            <div class="tui-image-editor">

            </div>
        </div>
        
        <script src="https://cdnjs.cloudflare.com/ajax/libs/fabric.js/3.6.0/fabric.js"></script>
        <script src="https://uicdn.toast.com/tui.code-snippet/v1.5.0/tui-code-snippet.min.js"></script>
        <script src="https://uicdn.toast.com/tui-color-picker/v2.2.3/tui-color-picker.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/jquery/1.8.3/jquery.min.js"></script>
        <script src="https://cdnjs.cloudflare.com/ajax/libs/FileSaver.js/1.3.3/FileSaver.min.js"></script>
        <script src="https://uicdn.toast.com/tui-image-editor/latest/tui-image-editor.js"></script>
        <script src="resources/nhnimg/js/service-basic.js"></script>
    </body>
</html>