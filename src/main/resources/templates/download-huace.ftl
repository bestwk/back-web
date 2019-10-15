<!DOCTYPE html PUBLIC "-//W3C//DTD XHTML 1.0 Transitional//EN"
        "http://www.w3.org/TR/xhtml1/DTD/xhtml1-transitional.dtd">
<html xmlns="http://www.w3.org/1999/xhtml">
<head>
    <meta http-equiv="Content-Type" content="text/html; charset=utf-8"/>
    <meta http-equiv="Pragma" content="no-cache">
    <meta name="viewport" content="width=device-width, initial-scale=1.0, user-scalable=no">
    <meta name="format-detection" content="telephone=no">
    <meta name="apple-mobile-web-app-capable" content="yes"/>
    <title>卓高画册</title>
    <link rel="stylesheet" type="text/css" href="/css/publick.css"/>
    <style type="text/css">
        html, body {
            height: 100%;
        }

        body {
            background-image: url('/images/2.jpg');
            background-repeat: no-repeat;
            background-size: 100% 100%;
            height: 100%;
        }

        #cover {
            display: none;
            position: absolute;
            left: 0;
            top: 0;
            z-index: 18888;
            background-color: #000000;
            opacity: 0.7;
        }

        #guide {
            display: none;
            position: absolute;
            right: 18px;
            top: 5px;
            z-index: 19999;
        }

        #guide img {
            width: 260px;
            height: 180px;
        }
    </style>
</head>

<body>
<div class="download_img">
    <#--<#if inviteCode != 'empty'>-->
        <#--<p class="invitation">邀请码：<span id="t2">${inviteCode!""}</span></p>-->
        <#--<button class="btn3" data-clipboard-action="copy" data-clipboard-target="#t2">点击复制邀请码</button>-->
    <#--</#if>-->
    <a class="download-huace" href="javascript:;" data-clipboard-action="copy" data-clipboard-target="#t2" onclick="downloadit();">立即下载</a>
</div>
<div id="cover"></div>
<div id="guide">
    <img src="/images/guide.png">
</div>
<script src="/jquery/1.9.1/jquery.js"></script>
<script src="/js/clipboard.min.js"></script>
<script src="/layer_mobile/layer.js"></script>
<script type="text/javascript">
    function isWeiXin() {
        var ua = window.navigator.userAgent.toLowerCase();
        if (ua.match(/MicroMessenger/i) == 'micromessenger') {
            return true;
        } else {
            return false;
        }
    }

    function downloadit() {
        if (isWeiXin()) {
            _system._guide(true)
        } else {
            var clipboard3 = new Clipboard('.download-huace', {
                text: function(el) {
                    return "yqm-"+$("#t2").text();
                }
            });
            clipboard3.on('success', function(e) {
            });

            window.location.href = "https://pay-video.oss-cn-shenzhen.aliyuncs.com/zhuogaohuace/zhuogaohuace.apk";
        }
    }

    var _system = {
        $: function (id) {
            return document.getElementById(id);
        },
        _client: function () {
            return {
                w: document.documentElement.scrollWidth,
                h: document.documentElement.scrollHeight,
                bw: document.documentElement.clientWidth,
                bh: document.documentElement.clientHeight
            };
        },
        _scroll: function () {
            return {
                x: document.documentElement.scrollLeft ? document.documentElement.scrollLeft
                        : document.body.scrollLeft,
                y: document.documentElement.scrollTop ? document.documentElement.scrollTop
                        : document.body.scrollTop
            };
        },
        _cover: function (show) {
            if (show) {
                this.$("cover").style.display = "block";
                this.$("cover").style.width = (this._client().bw > this
                                ._client().w ? this._client().bw : this._client().w)
                        + "px";
                this.$("cover").style.height = (this._client().bh > this
                                ._client().h ? this._client().bh : this._client().h)
                        + "px";
            } else {
                this.$("cover").style.display = "none";
            }
        },
        _guide: function (click) {
            this._cover(true);
            this.$("guide").style.display = "block";
            this.$("guide").style.top = (_system._scroll().y + 5) + "px";
            window.onresize = function () {
                _system._cover(true);
                _system.$("guide").style.top = (_system._scroll().y + 5) + "px";
            };
            if (click) {
                _system.$("cover").onclick = function () {
                    _system._cover();
                    _system.$("guide").style.display = "none";
                    _system.$("cover").onclick = null;
                    window.onresize = null;
                };
            }
        },
        _zero: function (n) {
            return n < 0 ? 0 : n;
        }
    }

    $(document).ready(function(){
        var clipboard3 = new Clipboard('.btn3', {
            text: function(el) {
                return "yqm-"+$("#t2").text();
            }
        });
        clipboard3.on('success', function(e) {
            layer.open({
                content: '复制成功'
                ,skin: 'msg'
                ,time: 2 //2秒后自动关闭
            });
        });
        clipboard3.on('error', function(e) {
            layer.open({
                content: '复制失败，请手动复制'
                ,skin: 'msg'
                ,time: 2 //2秒后自动关闭
            });
        });
    })
</script>
</body>
</html>