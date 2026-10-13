.class Lcom/ap/zoloz/hummer/h5/H5PluginHandler$3;
.super Ljava/lang/Object;
.source "H5PluginHandler.java"

# interfaces
.implements Lcom/ap/zoloz/hummer/common/IAlertCallback;


# instance fields
.field final synthetic this$0:Lcom/ap/zoloz/hummer/h5/H5PluginHandler;

.field final synthetic val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;


# direct methods
.method constructor <init>(Lcom/ap/zoloz/hummer/h5/H5PluginHandler;Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$3;->this$0:Lcom/ap/zoloz/hummer/h5/H5PluginHandler;

    iput-object p2, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$3;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public onNegative()V
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x0

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "positive"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$3;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-interface {v1, v0}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method

.method public onPositive()V
    .locals 3

    .line 1
    new-instance v0, Lcom/alibaba/fastjson/JSONObject;

    invoke-direct {v0}, Lcom/alibaba/fastjson/JSONObject;-><init>()V

    const/4 v1, 0x1

    .line 2
    invoke-static {v1}, Ljava/lang/Boolean;->valueOf(Z)Ljava/lang/Boolean;

    move-result-object v1

    const-string v2, "positive"

    invoke-virtual {v0, v2, v1}, Lcom/alibaba/fastjson/JSONObject;->put(Ljava/lang/String;Ljava/lang/Object;)Ljava/lang/Object;

    .line 3
    iget-object v1, p0, Lcom/ap/zoloz/hummer/h5/H5PluginHandler$3;->val$h5HandlerCallback:Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;

    invoke-interface {v1, v0}, Lcom/ap/zoloz/hummer/h5/IH5HandlerCallback;->onCompletion(Lcom/alibaba/fastjson/JSONObject;)V

    return-void
.end method
