.class public Lcom/zoloz/webcontainer/n/a/d;
.super Lcom/zoloz/webcontainer/n/b;
.source "H5PopupPlugin.java"


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Lcom/zoloz/webcontainer/n/b;-><init>()V

    return-void
.end method


# virtual methods
.method public getJSApiName()Ljava/lang/String;
    .locals 1

    const-string v0, "popWindow"

    return-object v0
.end method

.method public handleBridgeEvent(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_0

    .line 2
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->c()Lcom/zoloz/webcontainer/r/a;

    move-result-object p2

    invoke-interface {p2}, Lcom/zoloz/webcontainer/r/a;->e()Ljava/lang/String;

    move-result-object p2

    .line 3
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object v0

    invoke-virtual {v0, p2}, Lcom/zoloz/webcontainer/q;->b(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object p1

    .line 5
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoloz/webcontainer/q;->g()Ljava/util/HashMap;

    move-result-object p2

    sget-object v0, Lcom/zoloz/webcontainer/m;->a:Ljava/lang/Object;

    invoke-virtual {p2, v0, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
