.class public Lcom/zoloz/webcontainer/n/a/b;
.super Lcom/zoloz/webcontainer/n/b;
.source "H5LoadingPlugin.java"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/zoloz/webcontainer/n/a/b$a;
    }
.end annotation


# instance fields
.field private a:Ljava/lang/Runnable;

.field private b:Landroid/os/Handler;

.field private c:Lcom/zoloz/webcontainer/n/a/b$a;


# direct methods
.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Lcom/zoloz/webcontainer/n/b;-><init>()V

    .line 2
    new-instance v0, Landroid/os/Handler;

    invoke-direct {v0}, Landroid/os/Handler;-><init>()V

    iput-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->b:Landroid/os/Handler;

    .line 3
    invoke-static {}, Le/a/a/a/m;->a()Le/a/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p0}, Le/a/a/a/k;->a(Ljava/lang/Object;)V

    return-void
.end method

.method static synthetic a(Lcom/zoloz/webcontainer/n/a/b;)Lcom/zoloz/webcontainer/n/a/b$a;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    return-object p0
.end method


# virtual methods
.method public a()V
    .locals 2

    .line 19
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->a:Ljava/lang/Runnable;

    if-eqz v0, :cond_0

    .line 20
    iget-object v1, p0, Lcom/zoloz/webcontainer/n/a/b;->b:Landroid/os/Handler;

    invoke-virtual {v1, v0}, Landroid/os/Handler;->removeCallbacks(Ljava/lang/Runnable;)V

    const/4 v0, 0x0

    .line 21
    iput-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->a:Ljava/lang/Runnable;

    .line 22
    :cond_0
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    if-eqz v0, :cond_1

    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_1

    const-string v0, "H5LoadingPlugin"

    const-string v1, "hideLoading"

    .line 23
    invoke-static {v0, v1}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 24
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    :cond_1
    return-void
.end method

.method public a(Lcom/alibaba/fastjson/JSONObject;Lcom/zoloz/webcontainer/r/a;)V
    .locals 4

    const-string v0, "H5LoadingPlugin"

    if-nez p1, :cond_0

    const-string p1, "showLoading NULL param"

    .line 2
    invoke-static {v0, p1}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    :cond_0
    const-string v1, "text"

    .line 3
    invoke-static {p1, v1}, Lcom/zoloz/webcontainer/p/b;->a(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    const-string v2, "delay"

    .line 4
    invoke-static {p1, v2}, Lcom/zoloz/webcontainer/p/b;->b(Lcom/alibaba/fastjson/JSONObject;Ljava/lang/String;)I

    move-result p1

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "showLoading [title] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, " [delay] "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, p1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-static {v0, v2}, Lcom/zoloz/webcontainer/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 6
    invoke-interface {p2}, Lcom/zoloz/webcontainer/r/a;->b()Landroid/app/Activity;

    move-result-object p2

    .line 7
    instance-of v0, p2, Landroid/app/Activity;

    if-eqz v0, :cond_4

    .line 8
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    if-nez v0, :cond_1

    .line 9
    new-instance v0, Lcom/zoloz/webcontainer/n/a/b$a;

    invoke-direct {v0, p0, p2}, Lcom/zoloz/webcontainer/n/a/b$a;-><init>(Lcom/zoloz/webcontainer/n/a/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    goto :goto_0

    .line 10
    :cond_1
    invoke-virtual {v0}, Landroid/app/AlertDialog;->isShowing()Z

    move-result v0

    if-eqz v0, :cond_2

    .line 11
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    invoke-virtual {v0}, Landroid/app/AlertDialog;->dismiss()V

    goto :goto_0

    .line 12
    :cond_2
    new-instance v0, Lcom/zoloz/webcontainer/n/a/b$a;

    invoke-direct {v0, p0, p2}, Lcom/zoloz/webcontainer/n/a/b$a;-><init>(Lcom/zoloz/webcontainer/n/a/b;Landroid/content/Context;)V

    iput-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    .line 13
    :goto_0
    invoke-virtual {p0}, Lcom/zoloz/webcontainer/n/a/b;->a()V

    .line 14
    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_3

    invoke-virtual {v1}, Ljava/lang/String;->length()I

    move-result v0

    const/16 v2, 0x14

    if-le v0, v2, :cond_3

    const/4 v0, 0x0

    .line 15
    invoke-virtual {v1, v0, v2}, Ljava/lang/String;->substring(II)Ljava/lang/String;

    move-result-object v1

    .line 16
    :cond_3
    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->c:Lcom/zoloz/webcontainer/n/a/b$a;

    invoke-virtual {v0, v1}, Lcom/zoloz/webcontainer/n/a/b$a;->a(Ljava/lang/String;)V

    .line 17
    new-instance v0, Lcom/zoloz/webcontainer/n/a/c;

    invoke-direct {v0, p0, p2}, Lcom/zoloz/webcontainer/n/a/c;-><init>(Lcom/zoloz/webcontainer/n/a/b;Landroid/app/Activity;)V

    iput-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->a:Ljava/lang/Runnable;

    .line 18
    iget-object p2, p0, Lcom/zoloz/webcontainer/n/a/b;->b:Landroid/os/Handler;

    iget-object v0, p0, Lcom/zoloz/webcontainer/n/a/b;->a:Ljava/lang/Runnable;

    int-to-long v1, p1

    invoke-virtual {p2, v0, v1, v2}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    :cond_4
    return-void
.end method

.method public getJSApiName()Ljava/lang/String;
    .locals 1

    const-string v0, "MultiLoading"

    return-object v0
.end method

.method public handleBridgeEvent(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)Z
    .locals 1

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->c()Lcom/zoloz/webcontainer/r/a;

    move-result-object p2

    .line 2
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 3
    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->b()Lcom/alibaba/fastjson/JSONObject;

    move-result-object p1

    invoke-virtual {p0, p1, p2}, Lcom/zoloz/webcontainer/n/a/b;->a(Lcom/alibaba/fastjson/JSONObject;Lcom/zoloz/webcontainer/r/a;)V

    :cond_0
    const/4 p1, 0x1

    return p1

    :cond_1
    const/4 p1, 0x0

    return p1
.end method
