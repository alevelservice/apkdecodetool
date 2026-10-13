.class public Lcom/zoloz/webcontainer/n/a/e;
.super Lcom/zoloz/webcontainer/n/b;
.source "H5PushPlugin.java"


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

    const-string v0, "pushWindow"

    return-object v0
.end method

.method public handleBridgeEvent(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)Z
    .locals 6

    const/4 p2, 0x0

    if-eqz p1, :cond_4

    .line 1
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const/4 v1, 0x1

    if-eqz v0, :cond_3

    .line 2
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    const-string v2, "url"

    invoke-virtual {v0, v2}, Lcom/alibaba/fastjson/JSONObject;->getString(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    .line 3
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    const-string v3, "param"

    invoke-virtual {v2, v3}, Lcom/alibaba/fastjson/JSONObject;->getJSONObject(Ljava/lang/String;)Lcom/alibaba/fastjson/JSONObject;

    move-result-object v2

    .line 4
    invoke-virtual {v2}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v2

    const-class v3, Landroid/os/Bundle;

    invoke-static {v2, v3}, Lcom/alibaba/fastjson/JSON;->parseObject(Ljava/lang/String;Ljava/lang/Class;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Landroid/os/Bundle;

    .line 5
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->c()Lcom/zoloz/webcontainer/r/a;

    move-result-object v3

    invoke-interface {v3}, Lcom/zoloz/webcontainer/r/a;->e()Ljava/lang/String;

    move-result-object v3

    const-string v4, "http"

    .line 6
    invoke-virtual {v0, v4}, Ljava/lang/String;->startsWith(Ljava/lang/String;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    if-eqz v3, :cond_2

    const-string v4, "/"

    .line 7
    invoke-virtual {v3, v4}, Ljava/lang/String;->lastIndexOf(Ljava/lang/String;)I

    move-result v5

    invoke-virtual {v3, p2, v5}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object p2

    .line 8
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    :goto_0
    if-nez v2, :cond_1

    .line 9
    new-instance v2, Landroid/os/Bundle;

    invoke-direct {v2}, Landroid/os/Bundle;-><init>()V

    .line 10
    :cond_1
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->c()Lcom/zoloz/webcontainer/r/a;

    move-result-object p1

    invoke-interface {p1}, Lcom/zoloz/webcontainer/r/a;->f()Ljava/lang/String;

    move-result-object p1

    const-string p2, "sessionId"

    invoke-virtual {v2, p2, p1}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    invoke-static {}, Lcom/zoloz/webcontainer/q;->i()Lcom/zoloz/webcontainer/q;

    move-result-object p1

    invoke-virtual {p1, v0, v2}, Lcom/zoloz/webcontainer/q;->a(Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_1

    .line 12
    :cond_2
    new-instance p1, Ljava/lang/StringBuilder;

    invoke-direct {p1}, Ljava/lang/StringBuilder;-><init>()V

    const-string p2, "push window error url "

    invoke-virtual {p1, p2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string p2, "H5PushPlugin"

    invoke-static {p2, p1}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    :goto_1
    return v1

    :cond_4
    return p2
.end method
