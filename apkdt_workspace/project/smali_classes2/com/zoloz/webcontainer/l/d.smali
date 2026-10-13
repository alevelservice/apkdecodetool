.class public Lcom/zoloz/webcontainer/l/d;
.super Ljava/lang/Object;
.source "H5PluginManager.java"


# static fields
.field private static b:Lcom/zoloz/webcontainer/l/d;


# instance fields
.field private a:Ljava/util/HashMap;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/HashMap<",
            "Ljava/lang/String;",
            "Lcom/zoloz/webcontainer/n/d;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/HashMap;

    invoke-direct {v0}, Ljava/util/HashMap;-><init>()V

    iput-object v0, p0, Lcom/zoloz/webcontainer/l/d;->a:Ljava/util/HashMap;

    return-void
.end method

.method public static declared-synchronized a()Lcom/zoloz/webcontainer/l/d;
    .locals 2

    const-class v0, Lcom/zoloz/webcontainer/l/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Lcom/zoloz/webcontainer/l/d;->b:Lcom/zoloz/webcontainer/l/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Lcom/zoloz/webcontainer/l/d;

    invoke-direct {v1}, Lcom/zoloz/webcontainer/l/d;-><init>()V

    sput-object v1, Lcom/zoloz/webcontainer/l/d;->b:Lcom/zoloz/webcontainer/l/d;

    .line 3
    :cond_0
    sget-object v1, Lcom/zoloz/webcontainer/l/d;->b:Lcom/zoloz/webcontainer/l/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method

.method private a(Ljava/lang/String;)Z
    .locals 1

    const-string v0, "hideLoading"

    .line 11
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_1

    const-string v0, "showLoading"

    .line 12
    invoke-static {p1, v0}, Landroid/text/TextUtils;->equals(Ljava/lang/CharSequence;Ljava/lang/CharSequence;)Z

    move-result p1

    if-eqz p1, :cond_0

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    return p1

    :cond_1
    :goto_0
    const/4 p1, 0x1

    return p1
.end method


# virtual methods
.method public a(Lcom/zoloz/webcontainer/j/b;)V
    .locals 2

    .line 5
    iget-object v0, p1, Lcom/zoloz/webcontainer/j/b;->a:Lcom/zoloz/webcontainer/c/a;

    if-eqz v0, :cond_2

    .line 6
    iget-object v1, p0, Lcom/zoloz/webcontainer/l/d;->a:Ljava/util/HashMap;

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {v1, v0}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/zoloz/webcontainer/n/d;

    if-eqz v0, :cond_0

    .line 7
    iget-object v1, p1, Lcom/zoloz/webcontainer/j/b;->a:Lcom/zoloz/webcontainer/c/a;

    iget-object p1, p1, Lcom/zoloz/webcontainer/j/b;->b:Lcom/zoloz/webcontainer/a/b;

    invoke-interface {v0, v1, p1}, Lcom/zoloz/webcontainer/n/d;->handleBridgeEvent(Lcom/zoloz/webcontainer/c/a;Lcom/zoloz/webcontainer/a/b;)Z

    goto :goto_0

    .line 8
    :cond_0
    iget-object v0, p1, Lcom/zoloz/webcontainer/j/b;->a:Lcom/zoloz/webcontainer/c/a;

    invoke-virtual {v0}, Lcom/zoloz/webcontainer/c/a;->a()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p0, v0}, Lcom/zoloz/webcontainer/l/d;->a(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    invoke-static {}, Le/a/a/a/m;->a()Le/a/a/a/k;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/a/a/a/k;->c(Ljava/lang/Object;)V

    goto :goto_0

    .line 10
    :cond_1
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "runPlugin error "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object p1, p1, Lcom/zoloz/webcontainer/j/b;->a:Lcom/zoloz/webcontainer/c/a;

    invoke-virtual {p1}, Lcom/zoloz/webcontainer/c/a;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    const-string v0, "H5PluginManager"

    invoke-static {v0, p1}, Lcom/zoloz/webcontainer/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    return-void
.end method

.method public a(Lcom/zoloz/webcontainer/n/d;)V
    .locals 2
    .param p1    # Lcom/zoloz/webcontainer/n/d;
        .annotation runtime Lcom/alibaba/taffy/core/annotation/NotNullable;
        .end annotation
    .end param

    .line 4
    iget-object v0, p0, Lcom/zoloz/webcontainer/l/d;->a:Ljava/util/HashMap;

    invoke-interface {p1}, Lcom/zoloz/webcontainer/n/d;->getJSApiName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1, p1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    return-void
.end method
