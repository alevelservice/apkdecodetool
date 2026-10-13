.class public final Lcom/google/android/gms/internal/ads/yr0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gj0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gj0<",
        "Lcom/google/android/gms/internal/ads/r50;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Landroid/content/Context;

.field private final b:Ljava/util/concurrent/Executor;

.field private final c:Lcom/google/android/gms/internal/ads/mk;

.field private final d:Lcom/google/android/gms/internal/ads/ar0;

.field private final e:Lcom/google/android/gms/internal/ads/zq0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/zq0<",
            "Lcom/google/android/gms/internal/ads/y50;",
            "Lcom/google/android/gms/internal/ads/r50;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/us0;

.field private final g:Lcom/google/android/gms/internal/ads/ys0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private h:Lcom/google/android/gms/internal/ads/qz0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/r50;",
            ">;"
        }
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Ljava/util/concurrent/Executor;Lcom/google/android/gms/internal/ads/mk;Lcom/google/android/gms/internal/ads/zq0;Lcom/google/android/gms/internal/ads/ar0;Lcom/google/android/gms/internal/ads/ys0;Lcom/google/android/gms/internal/ads/us0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Landroid/content/Context;",
            "Ljava/util/concurrent/Executor;",
            "Lcom/google/android/gms/internal/ads/mk;",
            "Lcom/google/android/gms/internal/ads/zq0<",
            "Lcom/google/android/gms/internal/ads/y50;",
            "Lcom/google/android/gms/internal/ads/r50;",
            ">;",
            "Lcom/google/android/gms/internal/ads/ar0;",
            "Lcom/google/android/gms/internal/ads/ys0;",
            "Lcom/google/android/gms/internal/ads/us0;",
            ")V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr0;->a:Landroid/content/Context;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/yr0;->c:Lcom/google/android/gms/internal/ads/mk;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/yr0;->e:Lcom/google/android/gms/internal/ads/zq0;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    .line 7
    iput-object p6, p0, Lcom/google/android/gms/internal/ads/yr0;->g:Lcom/google/android/gms/internal/ads/ys0;

    .line 8
    iput-object p7, p0, Lcom/google/android/gms/internal/ads/yr0;->f:Lcom/google/android/gms/internal/ads/us0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/yr0;)Lcom/google/android/gms/internal/ads/ar0;
    .locals 0

    .line 32
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    return-object p0
.end method

.method static synthetic b(Lcom/google/android/gms/internal/ads/yr0;)Lcom/google/android/gms/internal/ads/zq0;
    .locals 0

    .line 1
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/yr0;->e:Lcom/google/android/gms/internal/ads/zq0;

    return-object p0
.end method


# virtual methods
.method final synthetic a()V
    .locals 2

    .line 31
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    const/4 v1, 0x1

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ar0;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;Lcom/google/android/gms/internal/ads/ej0;Lcom/google/android/gms/internal/ads/ij0;)Z
    .locals 3
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/zztp;",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/ej0;",
            "Lcom/google/android/gms/internal/ads/ij0<",
            "-",
            "Lcom/google/android/gms/internal/ads/r50;",
            ">;)Z"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zzapu;

    invoke-direct {v0, p1, p2}, Lcom/google/android/gms/internal/ads/zzapu;-><init>(Lcom/google/android/gms/internal/ads/zztp;Ljava/lang/String;)V

    .line 2
    instance-of p1, p3, Lcom/google/android/gms/internal/ads/vr0;

    if-eqz p1, :cond_0

    .line 3
    check-cast p3, Lcom/google/android/gms/internal/ads/vr0;

    iget-object p1, p3, Lcom/google/android/gms/internal/ads/vr0;->a:Ljava/lang/String;

    goto :goto_0

    :cond_0
    const/4 p1, 0x0

    .line 4
    :goto_0
    iget-object p2, v0, Lcom/google/android/gms/internal/ads/zzapu;->f:Ljava/lang/String;

    const/4 p3, 0x0

    if-nez p2, :cond_1

    const-string p1, "Ad unit ID should not be null for rewarded video ad."

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    .line 6
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    new-instance p2, Lcom/google/android/gms/internal/ads/xr0;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/xr0;-><init>(Lcom/google/android/gms/internal/ads/yr0;)V

    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    return p3

    .line 7
    :cond_1
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr0;->h:Lcom/google/android/gms/internal/ads/qz0;

    if-eqz p2, :cond_2

    invoke-interface {p2}, Ljava/util/concurrent/Future;->isDone()Z

    move-result p2

    if-nez p2, :cond_2

    return p3

    .line 8
    :cond_2
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr0;->a:Landroid/content/Context;

    iget-object p3, v0, Lcom/google/android/gms/internal/ads/zzapu;->e:Lcom/google/android/gms/internal/ads/zztp;

    iget-boolean p3, p3, Lcom/google/android/gms/internal/ads/zztp;->j:Z

    invoke-static {p2, p3}, Lcom/google/android/gms/internal/ads/ct0;->a(Landroid/content/Context;Z)V

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr0;->g:Lcom/google/android/gms/internal/ads/ys0;

    iget-object p3, v0, Lcom/google/android/gms/internal/ads/zzapu;->f:Ljava/lang/String;

    .line 10
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/ys0;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ys0;

    .line 11
    invoke-static {}, Lcom/google/android/gms/internal/ads/zztw;->j()Lcom/google/android/gms/internal/ads/zztw;

    move-result-object p3

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztw;)Lcom/google/android/gms/internal/ads/ys0;

    iget-object p3, v0, Lcom/google/android/gms/internal/ads/zzapu;->e:Lcom/google/android/gms/internal/ads/zztp;

    .line 12
    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztp;)Lcom/google/android/gms/internal/ads/ys0;

    .line 13
    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/ys0;->c()Lcom/google/android/gms/internal/ads/ws0;

    move-result-object p2

    .line 14
    new-instance p3, Lcom/google/android/gms/internal/ads/hw$a;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/hw$a;-><init>()V

    .line 15
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/jt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 16
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/qu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 17
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/ot;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 18
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/ads/o/a;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 19
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->d:Lcom/google/android/gms/internal/ads/ar0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    invoke-virtual {p3, v0, v1}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/st;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 20
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->c:Lcom/google/android/gms/internal/ads/mk;

    .line 21
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/mk;->l()Lcom/google/android/gms/internal/ads/x50;

    move-result-object v0

    new-instance v1, Lcom/google/android/gms/internal/ads/ws$a;

    invoke-direct {v1}, Lcom/google/android/gms/internal/ads/ws$a;-><init>()V

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/yr0;->a:Landroid/content/Context;

    .line 22
    invoke-virtual {v1, v2}, Lcom/google/android/gms/internal/ads/ws$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 23
    invoke-virtual {v1, p2}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 24
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/ws$a;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr0;->f:Lcom/google/android/gms/internal/ads/us0;

    .line 25
    invoke-virtual {v1, p1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/us0;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 26
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/ws$a;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object p1

    .line 27
    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/x50;->e(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/x50;

    .line 28
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/hw$a;->a()Lcom/google/android/gms/internal/ads/hw;

    move-result-object p1

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/x50;->c(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/x50;

    .line 29
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr0;->e:Lcom/google/android/gms/internal/ads/zq0;

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    invoke-interface {p1, v0, p2}, Lcom/google/android/gms/internal/ads/zq0;->a(Lcom/google/android/gms/internal/ads/ts;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/yr0;->h:Lcom/google/android/gms/internal/ads/qz0;

    .line 30
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/yr0;->h:Lcom/google/android/gms/internal/ads/qz0;

    new-instance p2, Lcom/google/android/gms/internal/ads/as0;

    invoke-direct {p2, p0, p4}, Lcom/google/android/gms/internal/ads/as0;-><init>(Lcom/google/android/gms/internal/ads/yr0;Lcom/google/android/gms/internal/ads/ij0;)V

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/yr0;->b:Ljava/util/concurrent/Executor;

    invoke-static {p1, p2, p3}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    const/4 p1, 0x1

    return p1
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/yr0;->h:Lcom/google/android/gms/internal/ads/qz0;

    if-eqz v0, :cond_0

    invoke-interface {v0}, Ljava/util/concurrent/Future;->isDone()Z

    move-result v0

    if-nez v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
