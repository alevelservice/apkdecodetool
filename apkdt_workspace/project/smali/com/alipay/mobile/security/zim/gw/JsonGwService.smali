.class public Lcom/alipay/mobile/security/zim/gw/JsonGwService;
.super Lcom/alipay/mobile/security/zim/gw/BaseGwService;
.source "JsonGwService.java"


# direct methods
.method public constructor <init>(Lcom/alipay/mobile/security/zim/gw/GwListener;)V
    .locals 1

    const-string v0, "zim-json-upload"

    .line 1
    invoke-direct {p0, p1, v0}, Lcom/alipay/mobile/security/zim/gw/BaseGwService;-><init>(Lcom/alipay/mobile/security/zim/gw/GwListener;Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/alipay/mobile/security/zim/gw/BaseGwService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {p1}, Landroid/os/HandlerThread;->start()V

    .line 3
    new-instance p1, Landroid/os/Handler;

    iget-object v0, p0, Lcom/alipay/mobile/security/zim/gw/BaseGwService;->mHandlerThread:Landroid/os/HandlerThread;

    invoke-virtual {v0}, Landroid/os/HandlerThread;->getLooper()Landroid/os/Looper;

    move-result-object v0

    invoke-direct {p1, v0}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    iput-object p1, p0, Lcom/alipay/mobile/security/zim/gw/BaseGwService;->mHandler:Landroid/os/Handler;

    return-void
.end method


# virtual methods
.method public convert(Ljava/lang/String;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;
    .locals 1

    .line 1
    const-class v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    invoke-static {p1, v0}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    return-object p1
.end method

.method public init(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/alipay/mobile/security/zim/gw/BaseGwService;->mHandler:Landroid/os/Handler;

    new-instance v1, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;

    invoke-direct {v1, p0, p1}, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;-><init>(Lcom/alipay/mobile/security/zim/gw/JsonGwService;Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V

    invoke-virtual {v0, v1}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    return-void
.end method
