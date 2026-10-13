.class public Le/b/b/a/a/b/h/d;
.super Ljava/lang/Object;
.source "SpmTrackIntegrator.java"


# static fields
.field private static final d:Ljava/lang/String; = "d"

.field private static e:Le/b/b/a/a/b/h/d;

.field private static f:Landroid/os/Handler;


# instance fields
.field private a:Ljava/util/Map;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Le/b/b/a/a/b/h/b;",
            ">;"
        }
    .end annotation
.end field

.field private b:Le/b/b/a/a/b/h/b;

.field public c:Ljava/lang/String;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    .line 1
    new-instance v0, Landroid/os/Handler;

    invoke-static {}, Landroid/os/Looper;->getMainLooper()Landroid/os/Looper;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/os/Handler;-><init>(Landroid/os/Looper;)V

    sput-object v0, Le/b/b/a/a/b/h/d;->f:Landroid/os/Handler;

    return-void
.end method

.method public constructor <init>()V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Ljava/util/concurrent/ConcurrentHashMap;

    invoke-direct {v0}, Ljava/util/concurrent/ConcurrentHashMap;-><init>()V

    iput-object v0, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    const-string v0, ""

    .line 3
    iput-object v0, p0, Le/b/b/a/a/b/h/d;->c:Ljava/lang/String;

    return-void
.end method

.method static synthetic a(Le/b/b/a/a/b/h/d;)Ljava/util/Map;
    .locals 0

    .line 1
    iget-object p0, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    return-object p0
.end method

.method private a(Le/b/b/a/a/b/h/b;Ljava/lang/String;)V
    .locals 1

    if-eqz p1, :cond_1

    .line 57
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto :goto_0

    .line 58
    :cond_0
    iput-object p2, p1, Le/b/b/a/a/b/h/b;->e:Ljava/lang/String;

    return-void

    .line 59
    :cond_1
    :goto_0
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object p2, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v0, "updateLastInfoSpm spm or lastInfo is null"

    invoke-interface {p1, p2, v0}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public static declared-synchronized c()Le/b/b/a/a/b/h/d;
    .locals 2

    const-class v0, Le/b/b/a/a/b/h/d;

    monitor-enter v0

    .line 1
    :try_start_0
    sget-object v1, Le/b/b/a/a/b/h/d;->e:Le/b/b/a/a/b/h/d;

    if-nez v1, :cond_0

    .line 2
    new-instance v1, Le/b/b/a/a/b/h/d;

    invoke-direct {v1}, Le/b/b/a/a/b/h/d;-><init>()V

    sput-object v1, Le/b/b/a/a/b/h/d;->e:Le/b/b/a/a/b/h/d;

    .line 3
    :cond_0
    sget-object v1, Le/b/b/a/a/b/h/d;->e:Le/b/b/a/a/b/h/d;
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    monitor-exit v0

    return-object v1

    :catchall_0
    move-exception v1

    monitor-exit v0

    throw v1
.end method


# virtual methods
.method public a(Ljava/lang/Object;)Le/b/b/a/a/b/h/b;
    .locals 3

    const/4 v0, 0x0

    if-nez p1, :cond_0

    .line 60
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object v1, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v2, "getPageInfoByView is null or spm is null"

    invoke-interface {p1, v1, v2}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 61
    :cond_0
    invoke-static {p1}, Le/b/b/a/a/b/h/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    .line 62
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 63
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object v1, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v2, "getPageInfoByView() is null"

    invoke-interface {p1, v1, v2}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 64
    :cond_1
    iget-object v1, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    invoke-interface {v1, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Le/b/b/a/a/b/h/b;

    if-nez p1, :cond_2

    .line 65
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object v1, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v2, "getPageInfoByView view is null"

    invoke-interface {p1, v1, v2}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    :cond_2
    return-object p1
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;Ljava/lang/String;Ljava/util/Map;)Le/b/b/a/a/b/h/b;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/String;",
            "Ljava/lang/Object;",
            "Ljava/lang/String;",
            "Ljava/util/Map<",
            "Ljava/lang/String;",
            "Ljava/lang/String;",
            ">;)",
            "Le/b/b/a/a/b/h/b;"
        }
    .end annotation

    const/4 v0, 0x0

    if-eqz p2, :cond_4

    .line 34
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    goto :goto_0

    .line 35
    :cond_0
    invoke-static {p2}, Le/b/b/a/a/b/h/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p2

    .line 36
    invoke-static {p2}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 37
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object p2, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string p3, "End_view.toString() is null"

    invoke-interface {p1, p2, p3}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 38
    :cond_1
    iget-object v1, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    invoke-interface {v1, p2}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p2

    check-cast p2, Le/b/b/a/a/b/h/b;

    if-nez p2, :cond_2

    .line 39
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object p2, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string p3, "End_pageInfo is null"

    invoke-interface {p1, p2, p3}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0

    .line 40
    :cond_2
    iget-boolean v0, p2, Le/b/b/a/a/b/h/b;->g:Z

    if-eqz v0, :cond_3

    .line 41
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object p3, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string p4, "is already call pageEnd"

    invoke-interface {p1, p3, p4}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object p2

    :cond_3
    const/4 v0, 0x1

    .line 42
    iput-boolean v0, p2, Le/b/b/a/a/b/h/b;->g:Z

    .line 43
    new-instance v0, Le/b/b/a/a/b/c/f;

    invoke-direct {v0, p1}, Le/b/b/a/a/b/c/f;-><init>(Ljava/lang/String;)V

    .line 44
    invoke-virtual {v0, p3}, Le/b/b/a/a/b/c/f;->d(Ljava/lang/String;)V

    .line 45
    invoke-virtual {p2}, Le/b/b/a/a/b/h/b;->a()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/f;->e(Ljava/lang/String;)V

    .line 46
    invoke-virtual {v0, p4}, Le/b/b/a/a/b/b;->a(Ljava/util/Map;)V

    .line 47
    iget-object p1, p2, Le/b/b/a/a/b/h/b;->c:Ljava/lang/String;

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/f;->f(Ljava/lang/String;)V

    .line 48
    iget-wide p3, p2, Le/b/b/a/a/b/h/b;->a:J

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/f;->c(Ljava/lang/String;)V

    .line 49
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide p3

    invoke-static {p3, p4}, Ljava/lang/String;->valueOf(J)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {v0, p1}, Le/b/b/a/a/b/c/f;->b(Ljava/lang/String;)V

    .line 50
    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object p1

    invoke-interface {p1, v0}, Le/b/b/a/a/a/d;->a(Le/b/b/a/a/b/b;)V

    return-object p2

    .line 51
    :cond_4
    :goto_0
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object p2, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string p3, "End_View is null or spm is null"

    invoke-interface {p1, p2, p3}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-object v0
.end method

.method public a()Ljava/lang/String;
    .locals 3

    .line 55
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v0

    sget-object v1, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v2, "getLastClickViewSpm"

    invoke-interface {v0, v1, v2}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/String;)V

    .line 56
    iget-object v0, p0, Le/b/b/a/a/b/h/d;->c:Ljava/lang/String;

    return-object v0
.end method

.method public a(Ljava/lang/String;)V
    .locals 1

    .line 52
    iput-object p1, p0, Le/b/b/a/a/b/h/d;->c:Ljava/lang/String;

    .line 53
    iget-object v0, p0, Le/b/b/a/a/b/h/d;->b:Le/b/b/a/a/b/h/b;

    if-eqz v0, :cond_0

    .line 54
    iput-object p1, v0, Le/b/b/a/a/b/h/b;->n:Ljava/lang/String;

    :cond_0
    return-void
.end method

.method public a(Ljava/lang/String;Ljava/lang/Object;)V
    .locals 5

    if-eqz p2, :cond_6

    .line 2
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    if-eqz v0, :cond_0

    goto/16 :goto_2

    .line 3
    :cond_0
    invoke-static {p2}, Le/b/b/a/a/b/h/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object v0

    .line 4
    invoke-static {v0}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_1

    .line 5
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object p2, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v0, "Start_view.toString() is null"

    invoke-interface {p1, p2, v0}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void

    .line 6
    :cond_1
    sget-object v1, Le/b/b/a/a/b/h/h;->instance:Le/b/b/a/a/b/h/h;

    invoke-virtual {v1, p2}, Le/b/b/a/a/b/h/h;->checkIsPageBack(Ljava/lang/Object;)Z

    move-result v1

    .line 7
    iget-object v2, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/b/a/a/b/h/b;

    if-eqz v2, :cond_2

    .line 8
    iget-boolean v3, v2, Le/b/b/a/a/b/h/b;->g:Z

    if-nez v3, :cond_2

    .line 9
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p2

    sget-object v0, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v1, "Start_not call end,and start twice,update spm"

    invoke-interface {p2, v0, v1}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 10
    invoke-direct {p0, v2, p1}, Le/b/b/a/a/b/h/d;->a(Le/b/b/a/a/b/h/b;Ljava/lang/String;)V

    return-void

    .line 11
    :cond_2
    iget-object v2, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    invoke-interface {v2, v0}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Le/b/b/a/a/b/h/b;

    if-nez v2, :cond_3

    .line 12
    new-instance v2, Le/b/b/a/a/b/h/b;

    invoke-direct {v2}, Le/b/b/a/a/b/h/b;-><init>()V

    .line 13
    iget-object v3, p0, Le/b/b/a/a/b/h/d;->b:Le/b/b/a/a/b/h/b;

    if-eqz v3, :cond_3

    .line 14
    invoke-static {v3}, Le/b/b/a/a/b/h/b;->a(Le/b/b/a/a/b/h/b;)Le/b/b/a/a/b/h/b;

    move-result-object v3

    iput-object v3, v2, Le/b/b/a/a/b/h/b;->u:Le/b/b/a/a/b/h/b;

    .line 15
    :cond_3
    iget-object v3, p0, Le/b/b/a/a/b/h/d;->b:Le/b/b/a/a/b/h/b;

    const/4 v4, 0x0

    if-ne v2, v3, :cond_4

    const/4 v3, 0x1

    goto :goto_0

    :cond_4
    const/4 v3, 0x0

    :goto_0
    iput-boolean v3, v2, Le/b/b/a/a/b/h/b;->s:Z

    .line 16
    iput-boolean v1, v2, Le/b/b/a/a/b/h/b;->t:Z

    .line 17
    iput-boolean v4, v2, Le/b/b/a/a/b/h/b;->g:Z

    .line 18
    invoke-static {}, Ljava/lang/System;->currentTimeMillis()J

    move-result-wide v3

    iput-wide v3, v2, Le/b/b/a/a/b/h/b;->a:J

    .line 19
    iget-wide v3, v2, Le/b/b/a/a/b/h/b;->a:J

    invoke-static {v3, v4}, Le/b/b/a/a/b/h/g;->a(J)Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Le/b/b/a/a/b/h/b;->b:Ljava/lang/String;

    .line 20
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v3, "__"

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-static {}, Le/b/b/a/a/d/i;->a()Le/b/b/a/a/a/d;

    move-result-object v4

    invoke-interface {v4}, Le/b/b/a/a/a/d;->f()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v4, v2, Le/b/b/a/a/b/h/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, "_"

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Le/b/b/a/a/b/h/b;->c:Ljava/lang/String;

    .line 21
    iput-object p1, v2, Le/b/b/a/a/b/h/b;->e:Ljava/lang/String;

    .line 22
    new-instance v1, Ljava/lang/StringBuilder;

    invoke-direct {v1}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v1, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, v2, Le/b/b/a/a/b/h/b;->b:Ljava/lang/String;

    invoke-virtual {v1, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v1}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Le/b/b/a/a/b/h/b;->i:Ljava/lang/String;

    .line 23
    invoke-virtual {p0}, Le/b/b/a/a/b/h/d;->a()Ljava/lang/String;

    move-result-object v1

    iput-object v1, v2, Le/b/b/a/a/b/h/b;->k:Ljava/lang/String;

    .line 24
    iget-object v1, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    invoke-interface {v1, v0, v2}, Ljava/util/Map;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    .line 25
    iput-object v2, p0, Le/b/b/a/a/b/h/d;->b:Le/b/b/a/a/b/h/b;

    .line 26
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object v1

    sget-object v2, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    const-string v4, "page start "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " name = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    .line 27
    invoke-virtual {p2}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object v4

    invoke-virtual {v4}, Ljava/lang/Class;->getName()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    const-string v4, " spm = "

    invoke-virtual {v3, v4}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, p1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object p1

    .line 28
    invoke-interface {v1, v2, p1}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    .line 29
    :try_start_0
    instance-of p1, p2, Landroid/view/View;

    if-eqz p1, :cond_5

    .line 30
    move-object p1, p2

    check-cast p1, Landroid/view/View;

    new-instance v1, Le/b/b/a/a/b/h/e;

    invoke-direct {v1, p0, v0, p2}, Le/b/b/a/a/b/h/e;-><init>(Le/b/b/a/a/b/h/d;Ljava/lang/String;Ljava/lang/Object;)V

    .line 31
    invoke-virtual {p1, v1}, Landroid/view/View;->addOnAttachStateChangeListener(Landroid/view/View$OnAttachStateChangeListener;)V
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    goto :goto_1

    :catchall_0
    move-exception p1

    .line 32
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p2

    sget-object v0, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    invoke-interface {p2, v0, p1}, Le/b/b/a/a/d/d/b;->a(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_5
    :goto_1
    return-void

    .line 33
    :cond_6
    :goto_2
    invoke-static {}, Le/b/b/a/a/d/i;->c()Le/b/b/a/a/d/d/b;

    move-result-object p1

    sget-object p2, Le/b/b/a/a/b/h/d;->d:Ljava/lang/String;

    const-string v0, "Start_view is null or spm is null"

    invoke-interface {p1, p2, v0}, Le/b/b/a/a/d/d/b;->e(Ljava/lang/String;Ljava/lang/String;)V

    return-void
.end method

.method public b()Le/b/b/a/a/b/h/b;
    .locals 1

    .line 1
    iget-object v0, p0, Le/b/b/a/a/b/h/d;->b:Le/b/b/a/a/b/h/b;

    return-object v0
.end method

.method public b(Ljava/lang/Object;)V
    .locals 4

    .line 2
    invoke-static {p1}, Le/b/b/a/a/b/h/g;->a(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    if-nez p1, :cond_0

    return-void

    .line 3
    :cond_0
    iget-object v0, p0, Le/b/b/a/a/b/h/d;->a:Ljava/util/Map;

    invoke-interface {v0, p1}, Ljava/util/Map;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Le/b/b/a/a/b/h/b;

    if-nez v0, :cond_1

    return-void

    .line 4
    :cond_1
    sget-object v0, Le/b/b/a/a/b/h/d;->f:Landroid/os/Handler;

    new-instance v1, Le/b/b/a/a/b/h/f;

    invoke-direct {v1, p0, p1}, Le/b/b/a/a/b/h/f;-><init>(Le/b/b/a/a/b/h/d;Ljava/lang/String;)V

    const-wide/16 v2, 0x3e8

    invoke-virtual {v0, v1, v2, v3}, Landroid/os/Handler;->postDelayed(Ljava/lang/Runnable;J)Z

    return-void
.end method
