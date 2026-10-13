.class Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;
.super Ljava/lang/Object;
.source "JsonGwService.java"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field final synthetic this$0:Lcom/alipay/mobile/security/zim/gw/JsonGwService;

.field final synthetic val$request:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;


# direct methods
.method constructor <init>(Lcom/alipay/mobile/security/zim/gw/JsonGwService;Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;->this$0:Lcom/alipay/mobile/security/zim/gw/JsonGwService;

    iput-object p2, p0, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;->val$request:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public run()V
    .locals 9

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, ""

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v2, p0, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;->val$request:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-virtual {v0, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 2
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v2

    .line 3
    invoke-static {}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getCurrentInstance()Lcom/alipay/mobile/security/bio/service/BioServiceManager;

    move-result-object v0

    const-class v4, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/service/BioServiceManager;->getBioService(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;

    .line 4
    const-class v4, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    invoke-virtual {v0, v4}, Lcom/alipay/mobile/security/bio/service/local/rpc/BioRPCService;->getRpcProxy(Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;

    const/16 v4, 0x3e9

    .line 5
    :try_start_0
    iget-object v5, p0, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;->val$request:Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;

    invoke-interface {v0, v5}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimDispatchJsonGwFacade;->initStandard(Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwRequest;)Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    move-result-object v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception v0

    .line 6
    new-instance v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    invoke-direct {v5}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;-><init>()V

    .line 7
    instance-of v6, v0, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;

    if-eqz v6, :cond_0

    const/16 v6, 0x7d2

    .line 8
    iput v6, v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    .line 9
    new-instance v6, Ljava/util/HashMap;

    invoke-direct {v6}, Ljava/util/HashMap;-><init>()V

    .line 10
    check-cast v0, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;

    invoke-interface {v0}, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;->getCode()I

    move-result v7

    invoke-static {v7}, Ljava/lang/Integer;->toString(I)Ljava/lang/String;

    move-result-object v7

    const-string v8, "rpcResultCode"

    invoke-virtual {v6, v8, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 11
    invoke-interface {v0}, Lcom/alipay/mobile/security/bio/service/local/rpc/IRpcException;->getMsg()Ljava/lang/String;

    move-result-object v0

    const-string v7, "rpcResultMsg"

    invoke-virtual {v6, v7, v0}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v0, "action"

    const-string v7, "init"

    .line 12
    invoke-virtual {v6, v0, v7}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 13
    invoke-static {}, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->getInstance()Lcom/alipay/mobile/security/zim/biz/RecordProcessor;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 14
    invoke-static {}, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->getInstance()Lcom/alipay/mobile/security/zim/biz/RecordProcessor;

    move-result-object v0

    sget-object v7, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->KEY_ZTECH_RPC_ERROR:Ljava/lang/String;

    invoke-virtual {v0, v7, v6}, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->record(Ljava/lang/String;Ljava/util/Map;)Z

    goto :goto_0

    .line 15
    :cond_0
    iput v4, v5, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    :cond_1
    :goto_0
    move-object v0, v5

    :goto_1
    if-nez v0, :cond_2

    .line 16
    new-instance v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;

    invoke-direct {v0}, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;-><init>()V

    .line 17
    iput v4, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    .line 18
    :cond_2
    new-instance v5, Ljava/lang/StringBuilder;

    invoke-direct {v5}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v5, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v5, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v5}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    .line 19
    new-instance v5, Ljava/util/HashMap;

    invoke-direct {v5}, Ljava/util/HashMap;-><init>()V

    .line 20
    iget v6, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    const-string v7, "result"

    if-eq v6, v4, :cond_4

    const/16 v4, 0xc8

    if-ne v6, v4, :cond_3

    goto :goto_2

    .line 21
    :cond_3
    sget-object v4, Lcom/alipay/mobile/security/zim/biz/ZimPlatform;->RESULT_TRUE:Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_3

    .line 22
    :cond_4
    :goto_2
    sget-object v4, Lcom/alipay/mobile/security/zim/biz/ZimPlatform;->RESULT_FALSE:Ljava/lang/String;

    invoke-interface {v5, v7, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 23
    :goto_3
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget v6, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCode:I

    invoke-virtual {v4, v6}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v4

    const-string v6, "retCode"

    invoke-interface {v5, v6, v4}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 24
    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->message:Ljava/lang/String;

    invoke-virtual {v4, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v4, "message"

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iget-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retCodeSub:Ljava/lang/String;

    const-string v4, "subCode"

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 26
    iget-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->retMessageSub:Ljava/lang/String;

    const-string v4, "subMsg"

    invoke-interface {v5, v4, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 27
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v6

    sub-long/2addr v6, v2

    invoke-static {v6, v7}, Ljava/lang/Long;->toString(J)Ljava/lang/String;

    move-result-object v1

    const-string v2, "uploadTime"

    invoke-interface {v5, v2, v1}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 28
    iget-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->extParams:Ljava/util/Map;

    if-eqz v1, :cond_5

    invoke-interface {v1}, Ljava/util/Map;->isEmpty()Z

    move-result v1

    if-nez v1, :cond_5

    .line 29
    iget-object v1, v0, Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;->extParams:Ljava/util/Map;

    invoke-interface {v5, v1}, Ljava/util/Map;->putAll(Ljava/util/Map;)V

    .line 30
    :cond_5
    invoke-static {}, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->getInstance()Lcom/alipay/mobile/security/zim/biz/RecordProcessor;

    move-result-object v1

    sget-object v2, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->KEY_INITPROD_RESPONSE:Ljava/lang/String;

    invoke-virtual {v1, v2, v5}, Lcom/alipay/mobile/security/zim/biz/RecordProcessor;->record(Ljava/lang/String;Ljava/util/Map;)Z

    .line 31
    iget-object v1, p0, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;->this$0:Lcom/alipay/mobile/security/zim/gw/JsonGwService;

    iget-object v1, v1, Lcom/alipay/mobile/security/zim/gw/BaseGwService;->mMainHandler:Landroid/os/Handler;

    if-eqz v1, :cond_6

    .line 32
    new-instance v2, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1$1;

    invoke-direct {v2, p0, v0}, Lcom/alipay/mobile/security/zim/gw/JsonGwService$1$1;-><init>(Lcom/alipay/mobile/security/zim/gw/JsonGwService$1;Lcom/alipay/bis/common/service/facade/gw/zim/ZimInitGwResponse;)V

    invoke-virtual {v1, v2}, Landroid/os/Handler;->post(Ljava/lang/Runnable;)Z

    :cond_6
    return-void
.end method
