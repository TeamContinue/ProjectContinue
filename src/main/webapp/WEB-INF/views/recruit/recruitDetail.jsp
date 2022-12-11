<%@ page import="javax.websocket.Session" %><%--
  Created by IntelliJ IDEA.
  User: Admin
  Date: 2022-12-04
  Time: 오후 2:17
  To change this template use File | Settings | File Templates.
--%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ include file="../header.jsp" %>

<style>

    .portfolio-item {
        margin-bottom: 30px;
    }

    .detail_profile {
        transition: 0.3s;
        position: relative;
        overflow: hidden;
        z-index: 1;
    }

    .detail_profile::before {
        content: "";
        background: rgba(167, 222, 255, 0.6);
        position: absolute;
        left: 30px;
        right: 30px;
        top: 30px;
        bottom: 30px;
        transition: all ease-in-out 0.3s;
        z-index: 2;
        opacity: 0;
    }

    .detail_profile .detail_profile_hover {
        opacity: 0;
        position: absolute;
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        text-align: center;
        z-index: 3;
        transition: all ease-in-out 0.3s;
        display: flex;
        flex-direction: column;
        justify-content: center;
        align-items: center;
    }

    .detail_profile .detail_profile_hover::before {
        display: block;
        content: "";
        width: 48px;
        height: 48px;
        position: absolute;
        top: 35px;
        left: 35px;
        border-top: 3px solid #fff;
        border-left: 3px solid #fff;
        transition: all 0.5s ease 0s;
        z-index: 9994;
    }

    .detail_profile .detail_profile_hover::after {
        display: block;
        content: "";
        width: 48px;
        height: 48px;
        position: absolute;
        bottom: 35px;
        right: 35px;
        border-bottom: 3px solid #fff;
        border-right: 3px solid #fff;
        transition: all 0.5s ease 0s;
        z-index: 9994;
    }

    .detail_profile .detail_profile_hover h4 {
        font-size: 20px;
        color: #fff;
        font-weight: 600;
    }

    .detail_profile .detail_profile_hover p {
        color: #ffffff;
        font-size: 14px;
        text-transform: uppercase;
        padding: 0;
        margin: 0;
    }

    .detail_profile:hover::before {
        top: 0;
        left: 0;
        right: 0;
        bottom: 0;
        opacity: 1;
    }

    .detail_profile:hover .detail_profile_hover {
        opacity: 1;
    }

    .detail_profile:hover .detail_profile_hover::before {
        top: 15px;
        left: 15px;
    }

    .detail_profile:hover .detail_profile_hover::after {
        bottom: 15px;
        right: 15px;
    }

    .product__item__pic__hover li span {
        font-size: 16px;
        color: #1c1c1c;
        height: 40px;
        width: 40px;
        line-height: 40px;
        text-align: center;
        border: 1px solid #ebebeb;
        background: #ffffff;
        display: block;
        border-radius: 50%;
        -webkit-transition: all, 0.5s;
        -moz-transition: all, 0.5s;
        -ms-transition: all, 0.5s;
        -o-transition: all, 0.5s;
        transition: all, 0.5s;
        cursor: pointer;
    }

</style>

<!-- 모집 게시판 배너 시작 -->
<section class="breadcrumb-section set-bg" data-setbg="/images/recruit_banner.png">
    <div class="container">
        <div class="row">
            <div class="col-lg-12 text-center">
                <div class="breadcrumb__text">
                    <h2>모집 게시판</h2>
                    <div class="breadcrumb__option">
                        <a href="/">Home</a>
                        <span>모집</span>
                    </div>
                </div>
            </div>
        </div>
    </div>
</section>
<!-- 모집 게시판 배너 끝 -->

<section class="blog spad">
    <div class="container">
        <div class="row">
            <div class="col-lg-12">
                <div class="row">
                    <div class="col-lg-12" style="text-align: center">
                        <span style="font-size: 30px; font-weight: bold">파티장</span>
                        <br>
                        <br>
                    </div>
                    <div class="col-lg-1"></div>
                    <div class="col-lg-4 detail_profile">
                        <img alt="" id="profile0" src="/images/profilePicture.png" class="img-thumbnail img-fluid"
                             style="width: 100%; height: auto"/>
                        <div class="detail_profile_hover">
                            닉네임 : ${memDetail.mem_nick}<br>
                            등급 : ${memDetail.mem_grade}<br>
                            온도 : <br>
                            모집 횟수 : ${recruitCount}<br>
                        </div>
                    </div>
                    <div class="col-lg-6" style="text-align: left; padding: 5%; border: solid 1px #a8a4a3">
                        타이틀 : ${gameDetail.gm_name}
                        </h2></p>
                        <p>
                            최대 인원 : ${detail.rcrbrd_max}<br>
                            모집 지역 : ${detail.rcrbrd_adr}
                        </p>
                        <p>
                            종료일 : ${detail.rcrbrd_edate}
                        </p>
                        <hr>
                        <p>${memDetail.mem_nick} &nbsp;|&nbsp; ${memDetail.mem_grade}</p>
                        <p>온도</p>
                    </div>
                    <div class="col-lg-1"></div>
                </div>
                <hr>
                <div class="row">
                    <div class="col-lg-12" style="text-align: center;">
                        <span style="font-size: 30px; font-weight: bold">모집 내용</span>
                        <br>
                        <br>
                        <br>
                        <div id="rcrbrd_content" name="rcrbrd_content" style="min-height: 300px">
                            ${detail.rcrbrd_content}
                        </div>
                        <hr>
                    </div>
                    <c:forEach var="row" begin="1" end="${detail.rcrbrd_max}" step="1" varStatus="vs">
                        <div class="col-lg-3 col-md-4 col-sm-4">
                            <div class="product__item">
                                <div id="profile${vs.count}" class="product__item__pic set-bg"
                                     data-setbg="/images/profilePicture.png">
                                    <c:forEach var="pic" items="${memPic}" varStatus="vs4">
                                        <c:if test="${vs.count == vs4.count and pic != '' and pic != null}">
                                            <img src="/images/profile/${pic}"
                                                 style="height: 100%; overflow: hidden">
                                        </c:if>
                                    </c:forEach>
                                    <input type="hidden" id="recruitseat${vs.count}" name="recruitseat${vs.count}"
                                           value="${vs.count}">
                                    <ul class="product__item__pic__hover">
                                        <c:choose>
                                            <c:when test="${attendCount != 0 or detail.mem_id eq mem_id}">
                                                <li><span><i class="fa fa-heart"></i></span></li>
                                                <li><span>신고</span></li>
                                            </c:when>
                                            <c:otherwise>
                                                <li><span id="attendBtn${vs.count}"
                                                          onclick="attend(${vs.count}, '<%=(String)session.getAttribute("mem_id")%>')">참가</span>
                                                </li>
                                            </c:otherwise>
                                        </c:choose>
                                    </ul>
                                    <c:choose>
                                        <c:when test="${detail.mem_id eq sessionScope.mem_id}">
                                            <select id="roleSelect${vs.count}" name="roleSelect${vs.count}">
                                                <c:forEach var="role" items="${roleList}" varStatus="vs2">
                                                    <%-- 사용자가 선택한 옵션 출력 --%>
                                                    <option value="${role.rl_name}"
                                                            id="${vs.count}option${vs2.count}">${role.rl_name}
                                                    </option>
                                                </c:forEach>
                                            </select>
                                            <button type="button" id="roleBtn${vs.count}"
                                                    onclick="roleConfirm(${fn:length(roleList)}, $(this).attr('id'))"
                                                    class="btn btn-warning">확정
                                            </button>
                                        </c:when>
                                    </c:choose>
                                </div>
                                <div class="product__item__text">
                                    <h6 id="attendText${vs.count}" name="attendText${vs.count}">
                                        <c:forEach var="mem" items="${memName}" varStatus="vs4">
                                            <c:if test="${vs.count == mem.ri_seat}">
                                                ${memNick[mem.ri_seat-1]} (${mem.mem_id})
                                            </c:if>
                                        </c:forEach>
                                    </h6>
                                    <h5 id="roleText${vs.count}" name="roleText${vs.count}">
                                        <c:forEach var="role" items="${roleNameSeat}" varStatus="vs3">
                                            <%-- vs.count번째 자리에 vs.count와 자리 번호가 동일하면 역할 부여 --%>
                                            <c:if test="${vs.count == role.rs_seat}">
                                                ${role.rl_name.trim()}
                                            </c:if>
                                        </c:forEach>
                                    </h5>
                                </div>
                            </div>
                        </div>
                    </c:forEach>
                </div>
                <hr>
                <form>
                    <br>
                    <h3 style="text-align: center; font-weight: bold">댓글 작성</h3>
                    <br>
                    <div class="text-center">
                        <textarea placeholder="댓글 작성란..."
                                  style="width: 100%; height: 150px; font-size: 16px; color: #6f6f6f; padding-left: 20px; margin-bottom: 24px; border: 1px solid #ebebeb; border-radius: 4px; padding-top: 12px; resize: none;"></textarea>
                    </div>
                    <button type="submit" class="site-btn" style="float: right">댓글 작성</button>
                    <br><br><br>
                    <hr>
                </form>

            </div>
        </div>
    </div>
</section>

<script>

    // 참가에 대한 내용
    function attend(num, mem_id) {

        $.ajax({
            url: "/recruit/attend",
            type: "post",
            data: {
                "rcrbrd_num": "${detail.rcrbrd_num}",
                "mem_id": mem_id,
                "ri_seat": num
            },
            success: function (data) {
                if (mem_id != '${detail.mem_id}' || 0 == ${attendCount}) {
                    for (let i = 1; i <= ${detail.rcrbrd_max}; i++) {
                        $("#attendBtn" + i).attr('onclick', '').unbind('click');
                        $("#attendBtn" + i).css("cursor", "default");
                        $("#attendBtn" + i).css("background-color", "lightgray");
                        $("#attendBtn" + i).css("border", "solid 2px gray");
                    }

                    alert(mem_id + "님, 참가 신청이 완료되었습니다.");
                } else {
                    alert("참가 신청에 실패하였습니다.");
                }
            },
            error: function (error) {
                console.log("에러 발생 : " + error);
            }
        });

    } // attend() end

    // 역할을 선택하고 확정하는 내용
    function roleConfirm(x, id) {
        let num = id.substring(id.length - 1, id.length);
        let role = $('#roleSelect' + num + ' option:selected').val();
        //let role = $('#roleSelect' + num +' option:selected').val();

        // 여기서 disabled 하는 이유는 모집장이 역할을 선택하고 나서 disabled를 해야 다른 역할을 선택할 수 없기 때문
        for (let i = 1; i <= x; i++) {
            for (let j = 1; j <= x; j++) {
                if ($('#' + j + 'option' + i).val() == role) {
                    $('#roleSelect' + num).attr('disabled', true).niceSelect('update');
                    $('#' + id).hide();
                }
            }

        }

        $.ajax({
            url: "/recruit/roleConfirm",
            type: "post",
            data: {
                "rl_name": role,
                "rcrbrd_num": ${detail.rcrbrd_num},
                "rs_seat": num
            },
            success: function (data) {
                alert("역할이 확정되었습니다");
            },
            error: function (error) {
                console.log("에러 발생 : " + error);
            }
        });

    } // roleConfirm() end

    // 실시간 갱신에 대한 내용
    /*
    $(document).ready(function roleName() {
        $.ajax({
            url: "/recruit/roleName",
            type: "post",
            data: {
                "rcrbrd_num": ${detail.rcrbrd_num}
            },
            success: function (data) {
                for (let i = 0; i < data.length; i++) {
                    // $('#roleText' + data[i].rs_seat).text(data[i].rl_name);
                    // console.log(i+"번째 좌석 : " + data[i].rs_seat);
                    // console.log(i+"번째 이름 : " + data[i].rl_name);

                    console.log(data);
                }
            },
            error: function (request,status,error) {
                console.log("code:"+request.status+"\n"+"message:"+request.responseText+"\n"+"error:"+error);
            }
        });

        let timer = setTimeout(function () {
            roleName();
        }, 500);
    });
    */

    $(document).ready(function () {
        for (let i = 1; i <= ${detail.rcrbrd_max}; i++) {
            $.ajax({
                url: "/recruit/roleSeatCheck",
                type: "post",
                data: {
                    "rcrbrd_num": ${detail.rcrbrd_num},
                    "rs_seat": i
                },
                success: function (data) {
                    if (data != 0) {

                        $('#roleSelect' + i).val($('#roleText' + i).text().trim());
                        // console.log($('#roleSelect'+i).val()); 해당 select box id의 value값
                        // console.log($('#roleText'+i).text().trim()); 선택된 값

                        // 여기서 disabled 하는 이유는 모집장이 새로고침 후에도 해당 좌석은 역할 선택을 할 수 없게 해야하기 때문
                        $('#roleSelect' + i).attr('disabled', true).niceSelect('update');
                        $('#roleBtn' + i).hide();
                    }
                },
                error: function (request, status, error) {
                    console.log("code:" + request.status + "\n" + "message:" + request.responseText + "\n" + "error:" + error);
                }
            })

            // 만약 역할 추가를 안 했다면 select box와 버튼이 안 보이게 처리
            if ($('#roleSelect' + i).val() == null) {
                $('.nice-select').css('display', 'none').niceSelect('update');
                $('#roleBtn' + i).hide();
            }
        }

    });

</script>

<%@ include file="../footer.jsp" %>
