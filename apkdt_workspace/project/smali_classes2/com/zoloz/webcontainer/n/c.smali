.class public Lcom/zoloz/webcontainer/n/c;
.super Lcom/zoloz/webcontainer/n/b;
.source "H5PopToPlugin.java"


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

    const-string v0, "popTo"

    return-object v0
.end method

.method public handleBridgeEvent(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)Z
    .locals 3

    if-eqz p1, :cond_2

    .line 1
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p2

    if-eqz p2, :cond_1

    .line 2
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v1, "index"

    invoke-virtual {v0, v1}, Lcom/alibaba/fastjson/JSONObject;->getIntValue(Ljava/lang/String;)I

    move-result v0

    if-eqz p2, :cond_0

    .line 3
    invoke-virtual {p2, v1}, Lcom/alibaba/fastjson/JSONObject;->containsKey(Ljava/lang/Object;)Z

    move-result v2

    if-eqz v2, :cond_0

    .line 4
    invoke-static {p2, v1, v0}, Lcom/zoloz/webcontainer/p/b;->a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;I)I

    move-result v0

    .line 5
    :cond_0
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->c()Lcom/zoloz/webcontainer/r/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/zoloz/webcontainer/r/a;->f()Ljava/lang/String;

    move-result-object p1

    .line 6
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object p2

    invoke-virtual {p2}, Lcom/zoloz/webcontainer/q;->c()Lcom/zoloz/webcontainer/l/e;

    move-result-object p2

    invoke-virtual {p2, p1, v0}, Lcom/zoloz/webcontainer/l/e;->a(Ljava/lang/String;I)V

    :cond_1
    const/4 p1, 0x1

    return p1

    :cond_2
    const/4 p1, 0x0

    return p1
.end method
