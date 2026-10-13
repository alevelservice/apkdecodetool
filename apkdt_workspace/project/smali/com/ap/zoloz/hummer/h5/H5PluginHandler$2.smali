.class Lcom/ap/zoloz/hummer/h5/H5PluginHandler$2;
.super Ljava/lang/Object;
.source "H5PluginHandler.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/rpc/IRpcCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/h5/H5PluginHandler;

.field final synthetic val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/h5/H5PluginHandler;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$2;->this$0:Lcom/ap/zoloz/hummer/h5/H5PluginHandler;

    iput-object p2, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$2;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ap/zoloz/hummer/rpc/RpcResponse;)V
    .locals 7

    .line 1
    invoke-static {}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getInstance()Lcom/ap/zoloz/hummer/api/EkycFacade;

    move-result-object v0

    invoke-virtual {v0}, Lcom/ap/zoloz/hummer/api/EkycFacade;->getHummerContext()Lcom/ap/zoloz/hummer/common/HummerContext;

    move-result-object v0

    const/4 v1, 0x0

    const-string v2, "success"

    if-eqz p1, :cond_4

    .line 2
    iget-object v3, p1, Lcom/ap/zoloz/hummer/rpc/RpcResponse;->exception:Ljava/lang/String;

    const-string v4, "network_exception"

    invoke-virtual {v4, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v3

    if-eqz v3, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    iget-object v3, p1, Lcom/ap/zoloz/hummer/rpc/RpcResponse;->factorNextResponse:Lcom/zoloz/zhub/common/factor/model/FactorNextResponse;

    iget-object v3, v3, Lcom/zoloz/zhub/common/factor/model/FactorNextResponse;->zStack:Ljava/util/List;

    invoke-virtual {v0, v3}, Lcom/ap/zoloz/hummer/common/HummerContext;->overwriteZStack(Ljava/util/List;)V

    .line 4
    iget-object p1, p1, Lcom/ap/zoloz/hummer/rpc/RpcResponse;->factorNextResponse:Lcom/zoloz/zhub/common/factor/model/FactorNextResponse;

    .line 5
    iget-object v3, p1, Lcom/zoloz/zhub/common/factor/model/FactorNextResponse;->versionToken:Ljava/lang/String;

    .line 6
    invoke-static {v3}, Lcom/alipay/mobile/security/bio/utils/StringUtil;->isNullorEmpty(Ljava/lang/String;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "versionToken"

    const-string v5, "context"

    .line 7
    invoke-virtual {v0, v4, v5, v3}, Lcom/ap/zoloz/hummer/common/HummerContext;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    .line 8
    :cond_1
    :goto_0
    iget-object v3, p1, Lcom/zoloz/zhub/common/factor/model/FactorNextResponse;->response:Ljava/util/List;

    invoke-interface {v3}, Ljava/util/List;->size()I

    move-result v3

    if-ge v1, v3, :cond_3

    .line 9
    iget-object v3, p1, Lcom/zoloz/zhub/common/factor/model/FactorNextResponse;->response:Ljava/util/List;

    invoke-interface {v3, v1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/zoloz/zhub/common/factor/model/FactorNextResponseInner;

    iget-object v3, v3, Lcom/zoloz/zhub/common/factor/model/FactorNextResponseInner;->outParams:Ljava/util/Map;

    invoke-interface {v3}, Ljava/util/Map;->entrySet()Ljava/util/Set;

    move-result-object v3

    invoke-interface {v3}, Ljava/util/Set;->iterator()Ljava/util/Iterator;

    move-result-object v3

    :goto_1
    invoke-interface {v3}, Ljava/util/Iterator;->hasNext()Z

    move-result v4

    if-eqz v4, :cond_2

    invoke-interface {v3}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Ljava/util/Map$Entry;

    .line 10
    invoke-interface {v4}, Ljava/util/Map$Entry;->getKey()Ljava/lang/Object;

    move-result-object v5

    check-cast v5, Ljava/lang/String;

    invoke-interface {v4}, Ljava/util/Map$Entry;->getValue()Ljava/lang/Object;

    move-result-object v4

    const-string v6, "serverResponse"

    invoke-virtual {v0, v5, v6, v4}, Lcom/ap/zoloz/hummer/common/HummerContext;->add(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Object;)V

    goto :goto_1

    :cond_2
    add-int/lit8 v1, v1, 0x1

    goto :goto_0

    .line 11
    :cond_3
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x1

    .line 12
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    const-string v1, "nextResponse"

    .line 13
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 14
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "H5PluginHandler sendBridgeResult "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;)V

    .line 15
    iget-object p1, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$2;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-interface {p1, v0}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    return-void

    .line 16
    :cond_4
    :goto_2
    new-instance p1, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {p1}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 17
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v0

    invoke-virtual {p1, v2, v0}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 18
    iget-object v0, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$2;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-interface {v0, p1}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
