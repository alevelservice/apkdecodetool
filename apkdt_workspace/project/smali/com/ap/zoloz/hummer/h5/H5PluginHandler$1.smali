.class Lcom/ap/zoloz/hummer/h5/H5PluginHandler$1;
.super Ljava/lang/Object;
.source "H5PluginHandler.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/api/IEkycCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/h5/H5PluginHandler;

.field final synthetic val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/h5/H5PluginHandler;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$1;->this$0:Lcom/ap/zoloz/hummer/h5/H5PluginHandler;

    iput-object p2, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$1;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onCompletion(Lcom/ap/zoloz/hummer/api/EkycResponse;)V
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    .line 2
    iget v1, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->code:I

    invoke-static {v1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object v1

    const-string v2, "code"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->subCode:Ljava/lang/String;

    const-string v2, "subCode"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 4
    iget-object v1, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->result:Ljava/lang/String;

    const-string v2, "result"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 5
    iget-object p1, p1, Lcom/ap/zoloz/hummer/api/EkycResponse;->extInfo:Ljava/util/Map;

    if-eqz p1, :cond_0

    const-string v1, "extInfo"

    .line 6
    invoke-virtual {v0, v1, p1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 7
    :cond_0
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, " Ekyc response "

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Lcom/alibaba/fastjson/JSON;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v1, "H5PluginHandler"

    invoke-static {v1, p1}, Lcom/ap/zoloz/hummer/biz/HummerLogger;->i(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object p1, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$1;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-interface {p1, v0}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
