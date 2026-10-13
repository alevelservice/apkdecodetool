.class public Lcom/zoloz/webcontainer/c/a;
.super Ljava/lang/Object;
.source "BridgeData.java"


# instance fields
.field private a:Ljava/lang/String;

.field private b:Lcom/alibaba/fastjson/JSONObject;

.field private c:Lcom/zoloz/webcontainer/r/a;

.field private d:Z

.field private e:Landroid/app/Activity;

.field private f:Ljava/lang/String;


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a()Ljava/lang/String;
    .locals 1

    .line 2
    iget-object v0, p0, Lcom/zoloz/webcontainer/c/a;->a:Ljava/lang/String;

    return-object v0
.end method

.method public a(Landroid/app/Activity;)V
    .locals 0

    .line 6
    iput-object p1, p0, Lcom/zoloz/webcontainer/c/a;->e:Landroid/app/Activity;

    return-void
.end method

.method public a(Lcom/alibaba/fastjson/JSONObject;)V
    .locals 0

    .line 3
    iput-object p1, p0, Lcom/zoloz/webcontainer/c/a;->b:Lcom/alibaba/fastjson/JSONObject;

    return-void
.end method

.method public a(Lcom/zoloz/webcontainer/r/a;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/zoloz/webcontainer/c/a;->c:Lcom/zoloz/webcontainer/r/a;

    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/zoloz/webcontainer/c/a;->a:Ljava/lang/String;

    return-void
.end method

.method public a(Z)V
    .locals 0

    .line 5
    iput-boolean p1, p0, Lcom/zoloz/webcontainer/c/a;->d:Z

    return-void
.end method

.method public b()Lcom/alibaba/fastjson/JSONObject;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/c/a;->b:Lcom/alibaba/fastjson/JSONObject;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public c()Lcom/zoloz/webcontainer/r/a;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/c/a;->c:Lcom/zoloz/webcontainer/r/a;

    return-object v0
.end method

.method public c(Ljava/lang/String;)V
    .locals 0

    .line 2
    iput-object p1, p0, Lcom/zoloz/webcontainer/c/a;->f:Ljava/lang/String;

    return-void
.end method

.method public d()Z
    .locals 1

    .line 1
    iget-boolean v0, p0, Lcom/zoloz/webcontainer/c/a;->d:Z

    return v0
.end method

.method public e()Landroid/app/Activity;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/c/a;->e:Landroid/app/Activity;

    return-object v0
.end method

.method public f()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/zoloz/webcontainer/c/a;->f:Ljava/lang/String;

    return-object v0
.end method

.method public toString()Ljava/lang/String;
    .locals 2

    .line 1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "action = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoloz/webcontainer/c/a;->a:Ljava/lang/String;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, "; param = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoloz/webcontainer/c/a;->b:Lcom/alibaba/fastjson/JSONObject;

    invoke-virtual {v1}, Lcom/alibaba/fastjson/JSON;->toJSONString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v1, " \n target = "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/zoloz/webcontainer/c/a;->c:Lcom/zoloz/webcontainer/r/a;

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method
