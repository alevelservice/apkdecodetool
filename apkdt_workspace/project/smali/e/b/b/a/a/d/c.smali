.class public Le/b/b/a/a/d/c;
.super Ljava/lang/Object;
.source "LogContextImpl.java"

# interfaces
.implements Le/b/b/a/a/a/d;


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Le/b/b/a/a/d/c$a;
    }
.end annotation


# instance fields
.field private a:Landroid/content/Context;

.field private b:Le/b/b/a/a/d/a/c;

.field private c:Le/b/b/a/a/d/h/f;

.field private d:Le/b/b/a/a/a/e;

.field private e:Lcom/alipay/iap/android/aplog/core/filter/g;

.field private f:Lcom/alipay/iap/android/aplog/core/filter/b;

.field private g:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private h:Lcom/alipay/iap/android/aplog/core/filter/a;

.field private i:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private j:Le/b/b/a/a/a/g;

.field private k:J

.field private l:Ljava/lang/String;

.field private m:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private n:Ljava/util/LinkedList;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation
.end field

.field private o:Ljava/lang/String;

.field private p:Ljava/lang/String;

.field private q:Ljava/lang/String;

.field private r:Ljava/lang/String;

.field private s:Ljava/lang/String;

.field private t:Ljava/lang/String;

.field private u:Le/b/b/a/a/d/b;

.field private v:Z

.field private volatile w:Le/b/b/a/a/d/c$a;

.field private final x:Ljava/util/concurrent/ArrayBlockingQueue;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Le/b/b/a/a/b/b;",
            ">;"
        }
    .end annotation
.end field

.field private y:Le/b/b/a/a/a/a/a;

.field private z:Le/b/b/a/a/a/b;


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c;->g:Ljava/util/Map;

    .line 3
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c;->i:Ljava/util/LinkedList;

    const-wide/32 v0, 0x1b7740

    .line 4
    iput-wide v0, p0, Le/b/b/a/a/d/c;->k:J

    .line 5
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    const-string v0, "MAS"

    .line 7
    iput-object v0, p0, Le/b/b/a/a/d/c;->t:Ljava/lang/String;

    .line 8
    sget-object v0, Le/b/b/a/a/b/h/c;->INTANCE:Le/b/b/a/a/b/h/c;

    const/4 v0, 0x1

    .line 9
    iput-boolean v0, p0, Le/b/b/a/a/d/c;->v:Z

    .line 10
    new-instance v0, Le/b/b/a/a/d/k;

    invoke-direct {v0}, Le/b/b/a/a/d/k;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c;->z:Le/b/b/a/a/a/b;

    .line 11
    iput-object p1, p0, Le/b/b/a/a/d/c;->a:Landroid/content/Context;

    .line 12
    new-instance v0, Le/b/b/a/a/d/b;

    invoke-direct {v0, p1}, Le/b/b/a/a/d/b;-><init>(Landroid/content/Context;)V

    iput-object v0, p0, Le/b/b/a/a/d/c;->u:Le/b/b/a/a/d/b;

    .line 13
    invoke-static {p0}, Le/b/b/a/a/d/a/c;->a(Le/b/b/a/a/a/d;)Le/b/b/a/a/d/a/c;

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/d/c;->b:Le/b/b/a/a/d/a/c;

    .line 14
    invoke-static {p1}, Le/b/b/a/a/d/h/f;->a(Landroid/content/Context;)Le/b/b/a/a/d/h/f;

    .line 15
    invoke-static {}, Le/b/b/a/a/d/h/f;->b()Le/b/b/a/a/d/h/f;

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/d/c;->c:Le/b/b/a/a/d/h/f;

    .line 16
    invoke-static {p1}, Lcom/alipay/iap/android/aplog/core/filter/g;->a(Landroid/content/Context;)Lcom/alipay/iap/android/aplog/core/filter/g;

    .line 17
    invoke-static {}, Lcom/alipay/iap/android/aplog/core/filter/g;->b()Lcom/alipay/iap/android/aplog/core/filter/g;

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/d/c;->e:Lcom/alipay/iap/android/aplog/core/filter/g;

    .line 18
    iget-object v0, p0, Le/b/b/a/a/d/c;->e:Lcom/alipay/iap/android/aplog/core/filter/g;

    invoke-virtual {p0, v0}, Le/b/b/a/a/d/c;->a(Lcom/alipay/iap/android/aplog/core/filter/a;)V

    .line 19
    invoke-static {p1}, Lcom/alipay/iap/android/aplog/network/NetWorkProvider;->b(Landroid/content/Context;)Lcom/alipay/iap/android/aplog/network/NetWorkProvider;

    .line 20
    invoke-direct {p0}, Le/b/b/a/a/d/c;->x()V

    .line 21
    invoke-direct {p0}, Le/b/b/a/a/d/c;->y()V

    .line 22
    invoke-virtual {p0}, Le/b/b/a/a/d/c;->u()V

    .line 23
    new-instance p1, Ljava/util/concurrent/ArrayBlockingQueue;

    const/16 v0, 0x800

    invoke-direct {p1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;-><init>(I)V

    iput-object p1, p0, Le/b/b/a/a/d/c;->x:Ljava/util/concurrent/ArrayBlockingQueue;

    return-void
.end method

.method private a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 6

    const-string v0, "LogContextImpl"

    if-nez p1, :cond_0

    return-void

    .line 15
    :cond_0
    :try_start_0
    iget-object v1, p0, Le/b/b/a/a/d/c;->a:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setPackage(Ljava/lang/String;)Landroid/content/Intent;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v1

    .line 16
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v2

    invoke-interface {v2, v0, v1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    .line 17
    :goto_0
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    iget-object v2, p0, Le/b/b/a/a/d/c;->a:Landroid/content/Context;

    invoke-virtual {v2}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, ".UPLOAD_LOG"

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p1, v1}, Landroid/content/Intent;->setAction(Ljava/lang/String;)Landroid/content/Intent;

    if-eqz p4, :cond_1

    .line 18
    invoke-virtual {p1, p4}, Landroid/content/Intent;->putExtras(Landroid/os/Bundle;)Landroid/content/Intent;

    :cond_1
    const-string v1, "logCategory"

    .line 19
    invoke-virtual {p1, v1, p2}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const-string v1, "uploadUrl"

    .line 20
    invoke-virtual {p1, v1, p3}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    .line 21
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v1

    invoke-interface {v1}, Le/b/b/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v1

    const-string v3, "invokerProcessAlias"

    invoke-virtual {p1, v3, v1}, Landroid/content/Intent;->putExtra(Ljava/lang/String;Ljava/lang/String;)Landroid/content/Intent;

    const/4 v1, 0x0

    .line 22
    :try_start_1
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v3

    new-instance v4, Ljava/lang/StringBuilder;

    invoke-direct {v4}, Ljava/lang/StringBuilder;-><init>()V

    const-string v5, "uploadCoreByStartService start, action: "

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v5, p0, Le/b/b/a/a/d/c;->a:Landroid/content/Context;

    .line 23
    invoke-virtual {v5}, Landroid/content/Context;->getPackageName()Ljava/lang/String;

    move-result-object v5

    invoke-virtual {v4, v5}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v4}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 24
    invoke-interface {v3, v0, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 25
    iget-object v2, p0, Le/b/b/a/a/d/c;->a:Landroid/content/Context;

    invoke-static {v2, p1}, Le/b/b/a/a/e/o;->a(Landroid/content/Context;Landroid/content/Intent;)V

    const/4 v1, 0x1

    .line 26
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object p1

    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "uploadCoreByStartService: "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Z)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-interface {p1, v0, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_1

    :catchall_1
    move-exception p1

    .line 27
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v2

    const-string v3, "uploadCoreByStartService"

    invoke-interface {v2, v0, v3, p1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    if-eqz v1, :cond_2

    return-void

    .line 28
    :cond_2
    invoke-direct {p0, p2, p3, p4}, Le/b/b/a/a/d/c;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method private declared-synchronized a(Le/b/b/a/a/d/c$a;)V
    .locals 0

    monitor-enter p0

    .line 62
    :try_start_0
    iput-object p1, p0, Le/b/b/a/a/d/c;->w:Le/b/b/a/a/d/c$a;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 63
    monitor-exit p0

    return-void

    :catchall_0
    move-exception p1

    monitor-exit p0

    throw p1
.end method

.method static synthetic a(Le/b/b/a/a/d/c;Le/b/b/a/a/b/b;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Le/b/b/a/a/d/c;->b(Le/b/b/a/a/b/b;)V

    return-void
.end method

.method static synthetic a(Le/b/b/a/a/d/c;Le/b/b/a/a/d/c$a;)V
    .locals 0

    .line 2
    invoke-direct {p0, p1}, Le/b/b/a/a/d/c;->a(Le/b/b/a/a/d/c$a;)V

    return-void
.end method

.method static synthetic a(Le/b/b/a/a/d/c;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2, p3}, Le/b/b/a/a/d/c;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    return-void
.end method

.method static synthetic a(Le/b/b/a/a/d/c;Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0

    .line 4
    invoke-direct {p0, p1}, Le/b/b/a/a/d/c;->a(Ljava/util/concurrent/ArrayBlockingQueue;)V

    return-void
.end method

.method private a(Ljava/util/concurrent/ArrayBlockingQueue;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/concurrent/ArrayBlockingQueue<",
            "Le/b/b/a/a/b/b;",
            ">;)V"
        }
    .end annotation

    if-nez p1, :cond_0

    return-void

    .line 59
    :cond_0
    invoke-virtual {p1}, Ljava/util/concurrent/ArrayBlockingQueue;->take()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/b/a/a/b/b;

    .line 60
    invoke-direct {p0, p1}, Le/b/b/a/a/d/c;->b(Le/b/b/a/a/b/b;)V

    const/4 p1, 0x1

    .line 61
    iput-boolean p1, p0, Le/b/b/a/a/d/c;->v:Z

    return-void
.end method

.method static synthetic a(Le/b/b/a/a/d/c;)Z
    .locals 0

    .line 5
    iget-boolean p0, p0, Le/b/b/a/a/d/c;->v:Z

    return p0
.end method

.method static synthetic b(Le/b/b/a/a/d/c;)Ljava/util/concurrent/ArrayBlockingQueue;
    .locals 0

    .line 1
    iget-object p0, p0, Le/b/b/a/a/d/c;->x:Ljava/util/concurrent/ArrayBlockingQueue;

    return-object p0
.end method

.method private b(Le/b/b/a/a/b/b;)V
    .locals 2
    .param p1    # Le/b/b/a/a/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    .line 7
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "crash"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-static {}, Le/b/b/a/a/d/c;->w()Z

    move-result v0

    if-nez v0, :cond_0

    return-void

    .line 8
    :cond_0
    invoke-virtual {p1}, Le/b/b/a/a/b/b;->a()Ljava/lang/String;

    move-result-object v0

    const-string v1, "flush"

    invoke-virtual {v0, v1}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    .line 9
    :try_start_0
    iget-object v0, p0, Le/b/b/a/a/d/c;->b:Le/b/b/a/a/d/a/c;

    check-cast p1, Le/b/b/a/a/b/d;

    invoke-virtual {v0, p1}, Le/b/b/a/a/d/a/c;->a(Le/b/b/a/a/b/d;)V
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception p1

    .line 10
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    invoke-virtual {p1}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object p1

    const-string v1, "LogContextImpl"

    invoke-interface {v0, v1, p1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :goto_0
    return-void

    .line 11
    :cond_1
    invoke-static {}, Le/b/b/a/a/d/c$d;->b()Le/b/b/a/a/d/c$d;

    move-result-object v0

    invoke-virtual {p0}, Le/b/b/a/a/d/c;->v()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Le/b/b/a/a/d/c$d;->a(Le/b/b/a/a/b/b;Ljava/lang/String;)Le/b/b/a/a/d/c$c;

    move-result-object p1

    if-eqz p1, :cond_2

    .line 12
    invoke-static {}, Le/b/b/a/a/d/a/c;->c()Le/b/b/a/a/d/a/c;

    move-result-object v0

    invoke-virtual {v0, p1}, Le/b/b/a/a/d/a/c;->a(Le/b/b/a/a/d/c$c;)V

    :cond_2
    return-void
.end method

.method private c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "LogContextImpl"

    const-string v2, "asyncUploadCoreByCategoryDirectly: begin"

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Le/b/b/a/a/d/h/c;->a()Ljava/util/concurrent/ExecutorService;

    move-result-object v0

    new-instance v1, Le/b/b/a/a/d/e;

    invoke-direct {v1, p0, p1, p2, p3}, Le/b/b/a/a/d/e;-><init>(Le/b/b/a/a/d/c;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    const-string p1, "LogContextImpl.upload"

    invoke-interface {v0, v1, p1}, Ljava/util/concurrent/ExecutorService;->submit(Ljava/lang/Runnable;Ljava/lang/Object;)Ljava/util/concurrent/Future;

    return-void
.end method

.method private d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 5

    .line 1
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v2

    invoke-interface {v2}, Le/b/b/a/a/a/f;->d()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v2, " syncUploadCoreByCategoryDirectly: "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogContextImpl"

    invoke-interface {v0, v2, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    const/4 v0, 0x1

    const/4 v1, 0x0

    if-eqz p3, :cond_0

    const-string v3, "syncAllLog"

    .line 2
    invoke-virtual {p3, v3}, Landroid/os/Bundle;->getBoolean(Ljava/lang/String;)Z

    move-result v3

    if-eqz v3, :cond_0

    const/4 v3, 0x1

    goto :goto_0

    :cond_0
    const/4 v3, 0x0

    .line 3
    :goto_0
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v4

    invoke-interface {v4}, Le/b/b/a/a/a/f;->a()Z

    move-result v4

    if-nez v4, :cond_1

    if-nez p1, :cond_1

    goto :goto_1

    :cond_1
    const/4 v0, 0x0

    :goto_1
    if-nez v0, :cond_2

    if-eqz v3, :cond_3

    .line 4
    :cond_2
    :try_start_0
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "sync all log to upload dir..."

    invoke-interface {v0, v2, v1}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 5
    iget-object v0, p0, Le/b/b/a/a/d/c;->c:Le/b/b/a/a/d/h/f;

    invoke-virtual {v0}, Le/b/b/a/a/d/h/f;->a()V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_2

    :catchall_0
    move-exception v0

    .line 6
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v1

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "syncUploadCoreByCategoryDirectly, syncLog: "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v2, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 7
    :cond_3
    :goto_2
    :try_start_1
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "uploadManager.uploadLog"

    invoke-interface {v0, v2, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 8
    iget-object v0, p0, Le/b/b/a/a/d/c;->c:Le/b/b/a/a/d/h/f;

    invoke-virtual {v0, p1, p2, p3}, Le/b/b/a/a/d/h/f;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    goto :goto_3

    :catchall_1
    move-exception p1

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object p2

    new-instance p3, Ljava/lang/StringBuilder;

    invoke-direct {p3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v0, "syncUploadCoreByCategoryDirectly, uploadLog: "

    invoke-virtual {p3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/Object;)Ljava/lang/StringBuilder;

    invoke-virtual {p3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p3

    invoke-interface {p2, v2, p3, p1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_3
    return-void
.end method

.method public static w()Z
    .locals 10

    .line 1
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v0

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v2

    invoke-interface {v2}, Le/b/b/a/a/a/d;->a()Landroid/content/Context;

    move-result-object v2

    const/4 v3, 0x0

    const-string v4, "time"

    invoke-virtual {v2, v4, v3}, Landroid/content/Context;->getSharedPreferences(Ljava/lang/String;I)Landroid/content/SharedPreferences;

    move-result-object v2

    const-string v4, "lastCrashTime"

    const-wide/16 v5, 0x0

    .line 3
    invoke-interface {v2, v4, v5, v6}, Landroid/content/SharedPreferences;->getLong(Ljava/lang/String;J)J

    move-result-wide v5

    sub-long v5, v0, v5

    const-wide/16 v7, 0xbb8

    cmp-long v9, v5, v7

    if-lez v9, :cond_0

    .line 4
    invoke-interface {v2}, Landroid/content/SharedPreferences;->edit()Landroid/content/SharedPreferences$Editor;

    move-result-object v2

    .line 5
    invoke-interface {v2, v4, v0, v1}, Landroid/content/SharedPreferences$Editor;->putLong(Ljava/lang/String;J)Landroid/content/SharedPreferences$Editor;

    .line 6
    invoke-interface {v2}, Landroid/content/SharedPreferences$Editor;->apply()V

    const/4 v0, 0x1

    return v0

    :cond_0
    return v3
.end method

.method private x()V
    .locals 3

    :try_start_0
    const-string v0, "TimeZone"

    .line 1
    invoke-static {}, Ljava/util/TimeZone;->getDefault()Ljava/util/TimeZone;

    move-result-object v1

    invoke-virtual {v1}, Ljava/util/TimeZone;->getID()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v0, v1}, Le/b/b/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_0

    :catchall_0
    move-exception v0

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v1

    const-string v2, "LogContextImpl"

    invoke-interface {v1, v2, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_0
    return-void
.end method

.method private y()V
    .locals 13

    .line 1
    invoke-static {}, Le/b/b/a/a/e/d;->c()Ljava/lang/String;

    move-result-object v0

    .line 2
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-nez v1, :cond_0

    const-string v1, "brand"

    .line 3
    invoke-virtual {p0, v1, v0}, Le/b/b/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    :cond_0
    invoke-virtual {p0}, Le/b/b/a/a/d/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "android.permission.ACCESS_FINE_LOCATION"

    invoke-static {v0, v1}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v0

    .line 5
    invoke-virtual {p0}, Le/b/b/a/a/d/c;->a()Landroid/content/Context;

    move-result-object v1

    const-string v2, "android.permission.ACCESS_COARSE_LOCATION"

    invoke-static {v1, v2}, Landroidx/core/content/a;->a(Landroid/content/Context;Ljava/lang/String;)I

    move-result v1

    if-nez v0, :cond_3

    if-nez v1, :cond_3

    .line 6
    invoke-virtual {p0}, Le/b/b/a/a/d/c;->a()Landroid/content/Context;

    move-result-object v0

    const-string v1, "location"

    invoke-virtual {v0, v1}, Landroid/content/Context;->getSystemService(Ljava/lang/String;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Landroid/location/LocationManager;

    const-string v1, "gps"

    .line 7
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->isProviderEnabled(Ljava/lang/String;)Z

    move-result v2

    const-string v7, "longitude"

    const-string v8, "latitude"

    const-string v9, "LogContextImpl"

    const-string v10, ""

    if-eqz v2, :cond_1

    .line 8
    invoke-virtual {v0, v1}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v2

    const-string v3, "location not null"

    invoke-interface {v2, v9, v3}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLatitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {p0, v8, v2}, Le/b/b/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 11
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1}, Landroid/location/Location;->getLongitude()D

    move-result-wide v3

    invoke-virtual {v2, v3, v4}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {p0, v7, v1}, Le/b/b/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 12
    :cond_1
    new-instance v6, Le/b/b/a/a/d/g;

    invoke-direct {v6, p0}, Le/b/b/a/a/d/g;-><init>(Le/b/b/a/a/d/c;)V

    const/4 v11, 0x0

    .line 13
    invoke-virtual {v0}, Landroid/location/LocationManager;->getAllProviders()Ljava/util/List;

    move-result-object v1

    const-string v12, "network"

    invoke-interface {v1, v12}, Ljava/util/List;->contains(Ljava/lang/Object;)Z

    move-result v1

    if-eqz v1, :cond_2

    :try_start_0
    const-string v2, "network"

    const-wide/16 v3, 0x3e8

    const/4 v5, 0x0

    move-object v1, v0

    .line 14
    invoke-virtual/range {v1 .. v6}, Landroid/location/LocationManager;->requestLocationUpdates(Ljava/lang/String;JFLandroid/location/LocationListener;)V

    .line 15
    invoke-virtual {v0, v12}, Landroid/location/LocationManager;->getLastKnownLocation(Ljava/lang/String;)Landroid/location/Location;

    move-result-object v11
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 16
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v1

    invoke-virtual {v0}, Ljava/lang/Exception;->getMessage()Ljava/lang/String;

    move-result-object v0

    invoke-interface {v1, v9, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_2
    :goto_0
    if-eqz v11, :cond_3

    .line 17
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/location/Location;->getLatitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v8, v0}, Le/b/b/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 18
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v11}, Landroid/location/Location;->getLongitude()D

    move-result-wide v1

    invoke-virtual {v0, v1, v2}, Ljava/lang/StringBuilder;->append(D)Ljava/lang/StringBuilder;

    invoke-virtual {v0, v10}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p0, v7, v0}, Le/b/b/a/a/d/c;->a(Ljava/lang/String;Ljava/lang/String;)V

    :cond_3
    return-void
.end method


# virtual methods
.method public a()Landroid/content/Context;
    .locals 1

    .line 6
    iget-object v0, p0, Le/b/b/a/a/d/c;->a:Landroid/content/Context;

    return-object v0
.end method

.method public a(I)V
    .locals 1

    .line 8
    iget-object v0, p0, Le/b/b/a/a/d/c;->c:Le/b/b/a/a/d/h/f;

    invoke-virtual {v0, p1}, Le/b/b/a/a/d/h/f;->a(I)V

    return-void
.end method

.method public a(J)V
    .locals 1

    .line 30
    invoke-static {}, Lcom/alipay/iap/android/aplog/core/filter/g;->b()Lcom/alipay/iap/android/aplog/core/filter/g;

    move-result-object v0

    invoke-virtual {v0, p1, p2}, Lcom/alipay/iap/android/aplog/core/filter/g;->a(J)V

    return-void
.end method

.method public a(Lcom/alipay/iap/android/aplog/core/filter/a;)V
    .locals 0

    .line 45
    iput-object p1, p0, Le/b/b/a/a/d/c;->h:Lcom/alipay/iap/android/aplog/core/filter/a;

    return-void
.end method

.method public a(Lcom/alipay/iap/android/aplog/core/filter/b;)V
    .locals 0

    .line 7
    iput-object p1, p0, Le/b/b/a/a/d/c;->f:Lcom/alipay/iap/android/aplog/core/filter/b;

    return-void
.end method

.method public a(Le/b/b/a/a/a/b;)V
    .locals 0

    if-eqz p1, :cond_0

    .line 64
    iput-object p1, p0, Le/b/b/a/a/d/c;->z:Le/b/b/a/a/a/b;

    :cond_0
    return-void
.end method

.method public a(Le/b/b/a/a/b/b;)V
    .locals 3
    .param p1    # Le/b/b/a/a/b/b;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-nez p1, :cond_0

    return-void

    .line 31
    :cond_0
    iget-object v0, p0, Le/b/b/a/a/d/c;->w:Le/b/b/a/a/d/c$a;

    if-nez v0, :cond_2

    .line 32
    monitor-enter p0

    .line 33
    :try_start_0
    iget-object v0, p0, Le/b/b/a/a/d/c;->w:Le/b/b/a/a/d/c$a;

    if-nez v0, :cond_1

    .line 34
    new-instance v0, Le/b/b/a/a/d/c$a;

    invoke-direct {v0, p0}, Le/b/b/a/a/d/c$a;-><init>(Le/b/b/a/a/d/c;)V

    const/4 v1, 0x1

    .line 35
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setDaemon(Z)V

    const-string v1, "LogAppendWorker"

    .line 36
    invoke-virtual {v0, v1}, Ljava/lang/Thread;->setName(Ljava/lang/String;)V

    .line 37
    invoke-virtual {v0}, Ljava/lang/Thread;->start()V

    .line 38
    invoke-direct {p0, v0}, Le/b/b/a/a/d/c;->a(Le/b/b/a/a/d/c$a;)V

    .line 39
    :cond_1
    monitor-exit p0

    goto :goto_0

    :catchall_0
    move-exception p1

    monitor-exit p0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p1

    .line 40
    :cond_2
    :goto_0
    :try_start_1
    iget-object v0, p0, Le/b/b/a/a/d/c;->x:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v0, p1}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_3

    goto :goto_1

    .line 41
    :cond_3
    new-instance p1, Ljava/lang/RuntimeException;

    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const-string v1, "add log event to queue fail, current size: "

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v1, p0, Le/b/b/a/a/d/c;->x:Ljava/util/concurrent/ArrayBlockingQueue;

    .line 42
    invoke-virtual {v1}, Ljava/util/concurrent/ArrayBlockingQueue;->size()I

    move-result v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/lang/RuntimeException;-><init>(Ljava/lang/String;)V

    throw p1
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_1

    :catchall_1
    move-exception p1

    .line 43
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    const-string v1, "LogContextImpl"

    const-string v2, "appendLogEvent"

    invoke-interface {v0, v1, v2, p1}, Le/b/b/a/a/d/d/b;->b(Ljava/lang/String;Ljava/lang/String;Ljava/lang/Throwable;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;)V
    .locals 0

    .line 29
    iput-object p1, p0, Le/b/b/a/a/d/c;->q:Ljava/lang/String;

    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 3

    if-nez p1, :cond_0

    return-void

    :cond_0
    const/4 p2, -0x1

    .line 46
    invoke-virtual {p1}, Ljava/lang/String;->hashCode()I

    move-result v0

    const v1, 0x7e1e92f1

    const-string v2, "gotoBackground"

    if-eq v0, v1, :cond_1

    goto :goto_0

    :cond_1
    invoke-virtual {p1, v2}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_2

    const/4 p2, 0x0

    :cond_2
    :goto_0
    if-eqz p2, :cond_3

    goto :goto_1

    .line 47
    :cond_3
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1}, Le/b/b/a/a/a/d;->c()V

    .line 48
    new-instance p1, Landroid/os/Bundle;

    invoke-direct {p1}, Landroid/os/Bundle;-><init>()V

    const-string p2, "event"

    .line 49
    invoke-virtual {p1, p2, v2}, Landroid/os/Bundle;->putString(Ljava/lang/String;Ljava/lang/String;)V

    .line 50
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const/4 v0, 0x0

    const-string v1, "crash"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 51
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "userbehavor"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 52
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "autouserbehavor"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 53
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "alivereport"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 54
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "pageMonitor"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 55
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "bizHighAvail"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 56
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "apm"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 57
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "exception"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    .line 58
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p2

    const-string v1, "performance"

    invoke-interface {p2, v1, v0, p1}, Le/b/b/a/a/a/d;->a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_1
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_0

    if-eqz p2, :cond_0

    .line 44
    iget-object v0, p0, Le/b/b/a/a/d/c;->g:Ljava/util/Map;

    invoke-interface {v0, p1, p2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v0

    invoke-interface {v0}, Le/b/b/a/a/a/f;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 10
    new-instance v0, Landroid/content/Intent;

    invoke-direct {v0}, Landroid/content/Intent;-><init>()V

    .line 11
    iget-object v1, p0, Le/b/b/a/a/d/c;->a:Landroid/content/Context;

    const-string v2, "com.alipay.iap.android.aplog.service.LogServiceInToolsProcess"

    invoke-virtual {v0, v1, v2}, Landroid/content/Intent;->setClassName(Landroid/content/Context;Ljava/lang/String;)Landroid/content/Intent;

    .line 12
    invoke-direct {p0, v0, p1, p2, p3}, Le/b/b/a/a/d/c;->a(Landroid/content/Intent;Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 13
    :cond_0
    invoke-static {}, Le/b/b/a/a/d/i;->b()Le/b/b/a/a/a/f;

    move-result-object v0

    invoke-interface {v0}, Le/b/b/a/a/a/f;->b()Z

    move-result v0

    if-eqz v0, :cond_1

    .line 14
    invoke-virtual {p0, p1, p2, p3}, Le/b/b/a/a/d/c;->b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :cond_1
    :goto_0
    return-void
.end method

.method public b()Lcom/alipay/iap/android/aplog/core/filter/b;
    .locals 1

    .line 2
    iget-object v0, p0, Le/b/b/a/a/d/c;->f:Lcom/alipay/iap/android/aplog/core/filter/b;

    return-object v0
.end method

.method public b(Ljava/lang/String;)V
    .locals 0

    .line 13
    iput-object p1, p0, Le/b/b/a/a/d/c;->o:Ljava/lang/String;

    return-void
.end method

.method public b(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V
    .locals 3

    .line 3
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v0

    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    const-string v2, "adjustUploadCoreByCategoryDirectly "

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v2

    invoke-virtual {v2}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v2

    invoke-virtual {v1, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    const-string v2, "LogContextImpl"

    invoke-interface {v0, v2, v1}, Le/b/b/a/a/d/d/b;->c(Ljava/lang/String;Ljava/lang/String;)V

    .line 4
    invoke-static {}, Ljava/lang/Thread;->currentThread()Ljava/lang/Thread;

    move-result-object v0

    invoke-virtual {v0}, Ljava/lang/Thread;->getName()Ljava/lang/String;

    move-result-object v0

    const-string v1, "main"

    invoke-virtual {v1, v0}, Ljava/lang/String;->equalsIgnoreCase(Ljava/lang/String;)Z

    move-result v0

    if-eqz v0, :cond_0

    .line 5
    invoke-direct {p0, p1, p2, p3}, Le/b/b/a/a/d/c;->c(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    goto :goto_0

    .line 6
    :cond_0
    invoke-direct {p0, p1, p2, p3}, Le/b/b/a/a/d/c;->d(Ljava/lang/String;Ljava/lang/String;Landroid/os/Bundle;)V

    :goto_0
    return-void
.end method

.method public c()V
    .locals 2

    .line 1
    new-instance v0, Le/b/b/a/a/b/d;

    const-string v1, "flush"

    invoke-direct {v0, v1}, Le/b/b/a/a/b/d;-><init>(Ljava/lang/String;)V

    .line 2
    iget-object v1, p0, Le/b/b/a/a/d/c;->x:Ljava/util/concurrent/ArrayBlockingQueue;

    invoke-virtual {v1, v0}, Ljava/util/concurrent/ArrayBlockingQueue;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public c(Ljava/lang/String;)V
    .locals 2

    .line 5
    iget-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 6
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    .line 7
    :cond_0
    iget-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 8
    iget-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 9
    :cond_1
    iget-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public d()Ljava/lang/String;
    .locals 1

    .line 10
    iget-object v0, p0, Le/b/b/a/a/d/c;->q:Ljava/lang/String;

    return-object v0
.end method

.method public d(Ljava/lang/String;)V
    .locals 2

    .line 11
    iget-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    if-nez v0, :cond_0

    .line 12
    new-instance v0, Ljava/util/LinkedList;

    invoke-direct {v0}, Ljava/util/LinkedList;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    .line 13
    :cond_0
    iget-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    const/16 v1, 0x14

    if-lt v0, v1, :cond_1

    .line 14
    iget-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->removeFirst()Ljava/lang/Object;

    .line 15
    :cond_1
    iget-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    invoke-virtual {v0, p1}, Ljava/util/LinkedList;->add(Ljava/lang/Object;)Z

    return-void
.end method

.method public e()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->p:Ljava/lang/String;

    return-object v0
.end method

.method public e(Ljava/lang/String;)V
    .locals 0

    return-void
.end method

.method public f()Ljava/lang/String;
    .locals 3

    .line 1
    :try_start_0
    iget-object v0, p0, Le/b/b/a/a/d/c;->z:Le/b/b/a/a/a/b;

    invoke-interface {v0}, Le/b/b/a/a/a/b;->getDeviceId()Ljava/lang/String;

    move-result-object v0
    :try_end_0
    .catch Ljava/lang/Exception; {:try_start_0 .. :try_end_0} :catch_0

    goto :goto_0

    :catch_0
    move-exception v0

    .line 2
    invoke-static {}, Le/b/b/a/a/d/i;->d()Le/b/b/a/a/d/d/b;

    move-result-object v1

    const-string v2, "LogContextImpl"

    invoke-interface {v1, v2, v0}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    const-string v0, " "

    :goto_0
    return-object v0
.end method

.method public g()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->r:Ljava/lang/String;

    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/b/a/a/d/c;->r:Ljava/lang/String;

    return-object v0

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/b/a/a/d/c;->u:Le/b/b/a/a/d/b;

    invoke-virtual {v0}, Le/b/b/a/a/d/b;->a()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public h()J
    .locals 2

    .line 1
    iget-wide v0, p0, Le/b/b/a/a/d/c;->k:J

    return-wide v0
.end method

.method public i()Le/b/b/a/a/a/e;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->d:Le/b/b/a/a/a/e;

    return-object v0
.end method

.method public j()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->o:Ljava/lang/String;

    return-object v0
.end method

.method public k()Ljava/util/Map;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->g:Ljava/util/Map;

    return-object v0
.end method

.method public l()Ljava/lang/String;
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/Locale;->getDefault()Ljava/util/Locale;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/Locale;->toString()Ljava/lang/String;

    move-result-object v0

    return-object v0
.end method

.method public m()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/b/a/a/d/c;->m:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public n()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Ljava/util/LinkedList;->size()I

    move-result v0

    if-lez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/b/a/a/d/c;->n:Ljava/util/LinkedList;

    invoke-virtual {v0}, Ljava/util/LinkedList;->getLast()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    return-object v0

    :cond_0
    const/4 v0, 0x0

    return-object v0
.end method

.method public o()Le/b/b/a/a/a/a/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->y:Le/b/b/a/a/a/a/a;

    return-object v0
.end method

.method public p()Lcom/alipay/iap/android/aplog/core/filter/a;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->h:Lcom/alipay/iap/android/aplog/core/filter/a;

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Le/b/b/a/a/d/c;->e:Lcom/alipay/iap/android/aplog/core/filter/g;

    :cond_0
    return-object v0
.end method

.method public q()Ljava/util/LinkedList;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Ljava/util/LinkedList<",
            "Ljava/lang/String;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->i:Ljava/util/LinkedList;

    return-object v0
.end method

.method public r()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->s:Ljava/lang/String;

    return-object v0
.end method

.method public s()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->l:Ljava/lang/String;

    return-object v0
.end method

.method public t()Le/b/b/a/a/a/g;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->j:Le/b/b/a/a/a/g;

    return-object v0
.end method

.method public u()V
    .locals 1

    .line 1
    invoke-static {}, Ljava/util/UUID;->randomUUID()Ljava/util/UUID;

    move-result-object v0

    invoke-virtual {v0}, Ljava/util/UUID;->toString()Ljava/lang/String;

    move-result-object v0

    iput-object v0, p0, Le/b/b/a/a/d/c;->s:Ljava/lang/String;

    return-void
.end method

.method public v()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/d/c;->t:Ljava/lang/String;

    return-object v0
.end method
