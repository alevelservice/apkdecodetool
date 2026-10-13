.class public abstract Lcom/google/android/gms/internal/ads/mk;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wm;


# static fields
.field private static a:Lcom/google/android/gms/internal/ads/mk;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "AppComponent.class"
    .end annotation
.end field


# direct methods
.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/mk;
    .locals 4
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 3
    const-class v0, Lcom/google/android/gms/internal/ads/mk;

    monitor-enter v0

    .line 4
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/mk;

    if-eqz v1, :cond_0

    .line 5
    sget-object p0, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/mk;

    monitor-exit v0

    return-object p0

    .line 6
    :cond_0
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    .line 7
    new-instance v0, Lcom/google/android/gms/internal/ads/zzawv;

    const v1, 0xe975a0

    const/4 v2, 0x1

    const/4 v3, 0x0

    invoke-direct {v0, v1, p1, v2, v3}, Lcom/google/android/gms/internal/ads/zzawv;-><init>(IIZZ)V

    .line 8
    new-instance p1, Lcom/google/android/gms/internal/ads/cl;

    invoke-direct {p1}, Lcom/google/android/gms/internal/ads/cl;-><init>()V

    invoke-static {v0, p0, p1}, Lcom/google/android/gms/internal/ads/mk;->a(Lcom/google/android/gms/internal/ads/zzawv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cm$a;)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p0

    return-object p0

    :catchall_0
    move-exception p0

    .line 9
    :try_start_1
    monitor-exit v0
    :try_end_1
    .catchall {:try_start_1 .. :try_end_1} :catchall_0

    throw p0
.end method

.method public static a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzajd;I)Lcom/google/android/gms/internal/ads/mk;
    .locals 0

    .line 1
    invoke-static {p0, p2}, Lcom/google/android/gms/internal/ads/mk;->a(Landroid/content/Context;I)Lcom/google/android/gms/internal/ads/mk;

    move-result-object p0

    .line 2
    invoke-virtual {p0}, Lcom/google/android/gms/internal/ads/mk;->f()Lcom/google/android/gms/internal/ads/ke0;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/ke0;->a(Lcom/google/android/gms/internal/ads/zzajd;)V

    return-object p0
.end method

.method private static a(Lcom/google/android/gms/internal/ads/zzawv;Landroid/content/Context;Lcom/google/android/gms/internal/ads/cm$a;)Lcom/google/android/gms/internal/ads/mk;
    .locals 5
    .annotation runtime Ljava/lang/Deprecated;
    .end annotation

    .line 10
    const-class v0, Lcom/google/android/gms/internal/ads/mk;

    monitor-enter v0

    .line 11
    :try_start_0
    sget-object v1, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/mk;

    if-nez v1, :cond_0

    .line 12
    new-instance v1, Lcom/google/android/gms/internal/ads/pl;

    const/4 v2, 0x0

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/pl;-><init>(Lcom/google/android/gms/internal/ads/el;)V

    .line 13
    new-instance v3, Lcom/google/android/gms/internal/ads/lk$a;

    invoke-direct {v3}, Lcom/google/android/gms/internal/ads/lk$a;-><init>()V

    .line 14
    invoke-virtual {v3, p0}, Lcom/google/android/gms/internal/ads/lk$a;->a(Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/lk$a;

    invoke-virtual {v3, p1}, Lcom/google/android/gms/internal/ads/lk$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/lk$a;

    .line 15
    new-instance v4, Lcom/google/android/gms/internal/ads/lk;

    invoke-direct {v4, v3, v2}, Lcom/google/android/gms/internal/ads/lk;-><init>(Lcom/google/android/gms/internal/ads/lk$a;Lcom/google/android/gms/internal/ads/nk;)V

    .line 16
    invoke-virtual {v1, v4}, Lcom/google/android/gms/internal/ads/pl;->a(Lcom/google/android/gms/internal/ads/lk;)Lcom/google/android/gms/internal/ads/pl;

    new-instance v2, Lcom/google/android/gms/internal/ads/cm;

    invoke-direct {v2, p2}, Lcom/google/android/gms/internal/ads/cm;-><init>(Lcom/google/android/gms/internal/ads/cm$a;)V

    .line 17
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/pl;->a(Lcom/google/android/gms/internal/ads/cm;)Lcom/google/android/gms/internal/ads/pl;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/pl;->a()Lcom/google/android/gms/internal/ads/mk;

    move-result-object p2

    sput-object p2, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/mk;

    .line 19
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/aw1;->a(Landroid/content/Context;)V

    .line 20
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->g()Lcom/google/android/gms/internal/ads/ca;

    move-result-object p2

    invoke-virtual {p2, p1, p0}, Lcom/google/android/gms/internal/ads/ca;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)V

    .line 21
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->i()Lcom/google/android/gms/internal/ads/sr1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/sr1;->a(Landroid/content/Context;)V

    .line 22
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/wa;->a(Landroid/content/Context;)Z

    .line 23
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->c()Lcom/google/android/gms/internal/ads/wa;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/wa;->b(Landroid/content/Context;)Z

    .line 24
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/la;->a(Landroid/content/Context;)V

    .line 25
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->f()Lcom/google/android/gms/internal/ads/rq1;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/rq1;->a(Landroid/content/Context;)V

    .line 26
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->x()Lcom/google/android/gms/internal/ads/cd;

    move-result-object p2

    invoke-virtual {p2, p1}, Lcom/google/android/gms/internal/ads/cd;->a(Landroid/content/Context;)V

    .line 27
    sget-object p2, Lcom/google/android/gms/internal/ads/aw1;->D3:Lcom/google/android/gms/internal/ads/pv1;

    .line 28
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v1

    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object p2

    .line 29
    check-cast p2, Ljava/lang/Boolean;

    invoke-virtual {p2}, Ljava/lang/Boolean;->booleanValue()Z

    move-result p2

    if-eqz p2, :cond_0

    .line 30
    new-instance p2, Lcom/google/android/gms/internal/ads/wc0;

    new-instance v1, Lcom/google/android/gms/internal/ads/ks1;

    new-instance v2, Lcom/google/android/gms/internal/ads/ps1;

    invoke-direct {v2, p1}, Lcom/google/android/gms/internal/ads/ps1;-><init>(Landroid/content/Context;)V

    invoke-direct {v1, v2}, Lcom/google/android/gms/internal/ads/ks1;-><init>(Lcom/google/android/gms/internal/ads/ps1;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/ec0;

    new-instance v3, Lcom/google/android/gms/internal/ads/cc0;

    invoke-direct {v3, p1}, Lcom/google/android/gms/internal/ads/cc0;-><init>(Landroid/content/Context;)V

    sget-object v4, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/mk;

    .line 31
    invoke-virtual {v4}, Lcom/google/android/gms/internal/ads/mk;->d()Lcom/google/android/gms/internal/ads/tz0;

    move-result-object v4

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/ec0;-><init>(Lcom/google/android/gms/internal/ads/cc0;Lcom/google/android/gms/internal/ads/tz0;)V

    invoke-direct {p2, p1, p0, v1, v2}, Lcom/google/android/gms/internal/ads/wc0;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Lcom/google/android/gms/internal/ads/ks1;Lcom/google/android/gms/internal/ads/ec0;)V

    .line 32
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/wc0;->a()V

    .line 33
    :cond_0
    sget-object p0, Lcom/google/android/gms/internal/ads/mk;->a:Lcom/google/android/gms/internal/ads/mk;

    monitor-exit v0

    return-object p0

    :catchall_0
    move-exception p0

    .line 34
    monitor-exit v0
    :try_end_0
    .catchall {:try_start_0 .. :try_end_0} :catchall_0

    throw p0
.end method


# virtual methods
.method protected abstract a(Lcom/google/android/gms/internal/ads/kq0;)Lcom/google/android/gms/internal/ads/cp0;
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaok;)Lcom/google/android/gms/internal/ads/cp0;
    .locals 1

    .line 35
    new-instance v0, Lcom/google/android/gms/internal/ads/kq0;

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/kq0;-><init>(Lcom/google/android/gms/internal/ads/zzaok;)V

    invoke-virtual {p0, v0}, Lcom/google/android/gms/internal/ads/mk;->a(Lcom/google/android/gms/internal/ads/kq0;)Lcom/google/android/gms/internal/ads/cp0;

    move-result-object p1

    return-object p1
.end method

.method public abstract a()Ljava/util/concurrent/Executor;
.end method

.method public abstract b()Ljava/util/concurrent/ScheduledExecutorService;
.end method

.method public abstract c()Ljava/util/concurrent/Executor;
.end method

.method public abstract d()Lcom/google/android/gms/internal/ads/tz0;
.end method

.method public abstract e()Lcom/google/android/gms/internal/ads/kv;
.end method

.method public abstract f()Lcom/google/android/gms/internal/ads/ke0;
.end method

.method public abstract g()Lcom/google/android/gms/internal/ads/zzbfk;
.end method

.method public abstract h()Lcom/google/android/gms/internal/ads/tp;
.end method

.method public abstract i()Lcom/google/android/gms/internal/ads/ko;
.end method

.method public abstract j()Lcom/google/android/gms/internal/ads/kz;
.end method

.method public abstract k()Lcom/google/android/gms/internal/ads/i00;
.end method

.method public abstract l()Lcom/google/android/gms/internal/ads/x50;
.end method

.method public abstract m()Lcom/google/android/gms/internal/ads/es0;
.end method

.method public abstract n()Lcom/google/android/gms/internal/ads/nj0;
.end method
