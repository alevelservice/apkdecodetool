.class public Lcom/zoloz/webcontainer/a/a/a;
.super Ljava/lang/Object;
.source "BridgeCallbackImpl.java"

# interfaces
.implements Lcom/zoloz/webcontainer/a/b;


# instance fields
.field private final a:Lcom/zoloz/webcontainer/a/c;


# direct methods
.method public constructor <init>(Lcom/zoloz/webcontainer/a/c;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/zoloz/webcontainer/a/a/a;->a:Lcom/zoloz/webcontainer/a/c;

    return-void
.end method


# virtual methods
.method public a(Lcom/alibaba/fastjson/JSONObject;)Z
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "sendBridgeResult "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p1}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    const-string v1, "BridgeCallbackImpl"

    invoke-static {v1, v0}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/a/a/a;->a:Lcom/zoloz/webcontainer/a/c;

    if-eqz v0, :cond_0

    .line 3
    new-instance v0, Lcom/zoloz/webcontainer/j/b;

    invoke-direct {v0}, Lcom/zoloz/webcontainer/j/b;-><init>()V

    .line 4
    new-instance v1, Lcom/zoloz/webcontainer/c/a;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/c/a;-><init>()V

    iput-object v1, v0, Lcom/zoloz/webcontainer/j/b;->a:Lcom/zoloz/webcontainer/c/a;

    .line 5
    iget-object v0, p0, Lcom/zoloz/webcontainer/a/a/a;->a:Lcom/zoloz/webcontainer/a/c;

    invoke-interface {v0, p0, p1}, Lcom/zoloz/webcontainer/a/c;->a(Lcom/zoloz/webcontainer/a/a/a;Lcom/alibaba/fastjson/JSONObject;)V

    :cond_0
    const/4 p1, 0x0

    return p1
.end method
