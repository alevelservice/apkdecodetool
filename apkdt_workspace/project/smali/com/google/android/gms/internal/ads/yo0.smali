.class public final Lcom/google/android/gms/internal/ads/yo0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/zo0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/x9;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/util/concurrent/ScheduledExecutorService;

.field private final d:Ljava/util/concurrent/Executor;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/x9;Landroid/content/Context;Ljava/util/concurrent/ScheduledExecutorService;Ljava/util/concurrent/Executor;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yo0;->a:Lcom/google/android/gms/internal/ads/x9;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yo0;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yo0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yo0;->d:Ljava/util/concurrent/Executor;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 6
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/zo0;",
            ">;"
        }
    .end annotation

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/aw1;->L0:Lcom/google/android/gms/internal/ads/pv1;

    .line 2
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, v0}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v0

    .line 3
    check-cast v0, Ljava/lang/Boolean;

    invoke-virtual {v0}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v0

    if-eqz v0, :cond_0

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    .line 5
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yo0;->a:Lcom/google/android/gms/internal/ads/x9;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yo0;->b:Landroid/content/Context;

    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/x9;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/google/android/gms/internal/ads/bp0;

    invoke-direct {v2, p0, v1, v0}, Lcom/google/android/gms/internal/ads/bp0;-><init>(Lcom/google/android/gms/internal/ads/yo0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/he;)V

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yo0;->d:Ljava/util/concurrent/Executor;

    invoke-interface {v1, v2, v3}, Lcom/google/android/gms/internal/ads/qz0;->a(Ljava/lang/Runnable;Ljava/util/concurrent/Executor;)V

    .line 7
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yo0;->c:Ljava/util/concurrent/ScheduledExecutorService;

    new-instance v3, Lcom/google/android/gms/internal/ads/ap0;

    invoke-direct {v3, v1}, Lcom/google/android/gms/internal/ads/ap0;-><init>(Lcom/google/android/gms/internal/ads/qz0;)V

    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->M0:Lcom/google/android/gms/internal/ads/pv1;

    .line 8
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v4

    invoke-virtual {v4, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 9
    check-cast v1, Ljava/lang/Long;

    invoke-virtual {v1}, Ljava/lang/Long;->longValue()J

    move-result-wide v4

    sget-object v1, Ljava/util/concurrent/TimeUnit;->MILLISECONDS:Ljava/util/concurrent/TimeUnit;

    .line 10
    invoke-interface {v2, v3, v4, v5, v1}, Ljava/util/concurrent/ScheduledExecutorService;->schedule(Ljava/lang/Runnable;JLjava/util/concurrent/TimeUnit;)Ljava/util/concurrent/ScheduledFuture;

    return-object v0

    .line 11
    :cond_0
    new-instance v0, Ljava/lang/Exception;

    const-string v1, "Did not ad Ad ID into query param."

    invoke-direct {v0, v1}, Ljava/lang/Exception;-><init>(Ljava/lang/String;)V

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Throwable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/he;)V
    .locals 4

    const/4 v0, 0x0

    .line 12
    :try_start_0
    invoke-interface {p1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object p1

    check-cast p1, Lcom/google/android/gms/ads/l/a$a;

    if-eqz p1, :cond_0

    .line 13
    invoke-virtual {p1}, Lcom/google/android/gms/ads/l/a$a;->a()Ljava/lang/String;

    move-result-object v1

    invoke-static {v1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v1

    if-eqz v1, :cond_0

    .line 14
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yo0;->b:Landroid/content/Context;

    invoke-static {v1}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object v1

    goto :goto_0

    :cond_0
    move-object v1, v0

    .line 15
    :goto_0
    new-instance v2, Lcom/google/android/gms/internal/ads/zo0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/yo0;->b:Landroid/content/Context;

    invoke-direct {v2, p1, v3, v1}, Lcom/google/android/gms/internal/ads/zo0;-><init>(Lcom/google/android/gms/ads/l/a$a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v2}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z
    :try_end_0
    .catch Ljava/util/concurrent/ExecutionException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/lang/InterruptedException; {:try_start_0 .. :try_end_0} :catch_0
    .catch Ljava/util/concurrent/CancellationException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    .line 16
    :catch_0
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->a()Lcom/google/android/gms/internal/ads/gd;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yo0;->b:Landroid/content/Context;

    invoke-static {p1}, Lcom/google/android/gms/internal/ads/gd;->b(Landroid/content/Context;)Ljava/lang/String;

    move-result-object p1

    .line 17
    new-instance v1, Lcom/google/android/gms/internal/ads/zo0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yo0;->b:Landroid/content/Context;

    invoke-direct {v1, v0, v2, p1}, Lcom/google/android/gms/internal/ads/zo0;-><init>(Lcom/google/android/gms/ads/l/a$a;Landroid/content/Context;Ljava/lang/String;)V

    invoke-virtual {p2, v1}, Lcom/google/android/gms/internal/ads/he;->b(Ljava/lang/Object;)Z

    return-void
.end method
