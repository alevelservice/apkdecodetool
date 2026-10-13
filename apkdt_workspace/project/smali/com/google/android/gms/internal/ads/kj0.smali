.class public final Lcom/google/android/gms/internal/ads/kj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/gj0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/gj0<",
        "Lcom/google/android/gms/internal/ads/sq;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ys0;
    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/mk;

.field private final c:Landroid/content/Context;

.field private final d:Lcom/google/android/gms/internal/ads/dj0;

.field private e:Lcom/google/android/gms/internal/ads/cr;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .annotation build Ljavax/annotation/concurrent/GuardedBy;
        value = "this"
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/mk;Landroid/content/Context;Lcom/google/android/gms/internal/ads/dj0;Lcom/google/android/gms/internal/ads/ys0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kj0;->c:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/kj0;->a:Lcom/google/android/gms/internal/ads/ys0;

    return-void
.end method


# virtual methods
.method final synthetic a()V
    .locals 2

    .line 29
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 30
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/dj0;->d()Lcom/google/android/gms/internal/ads/ot;

    move-result-object v0

    const/4 v1, 0x1

    .line 31
    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/ot;->onAdFailedToLoad(I)V

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
            "Lcom/google/android/gms/internal/ads/sq;",
            ">;)Z"
        }
    .end annotation

    if-nez p2, :cond_0

    const-string p1, "Ad unit ID should not be null for NativeAdLoader."

    .line 1
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;)V

    .line 2
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object p1

    new-instance p2, Lcom/google/android/gms/internal/ads/jj0;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/jj0;-><init>(Lcom/google/android/gms/internal/ads/kj0;)V

    .line 3
    invoke-interface {p1, p2}, Ljava/util/concurrent/Executor;->execute(Ljava/lang/Runnable;)V

    const/4 p1, 0x0

    return p1

    .line 4
    :cond_0
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kj0;->c:Landroid/content/Context;

    iget-boolean v0, p1, Lcom/google/android/gms/internal/ads/zztp;->j:Z

    invoke-static {p2, v0}, Lcom/google/android/gms/internal/ads/ct0;->a(Landroid/content/Context;Z)V

    .line 5
    instance-of p2, p3, Lcom/google/android/gms/internal/ads/hj0;

    const/4 v0, 0x1

    if-eqz p2, :cond_1

    .line 6
    check-cast p3, Lcom/google/android/gms/internal/ads/hj0;

    iget p2, p3, Lcom/google/android/gms/internal/ads/hj0;->a:I

    goto :goto_0

    :cond_1
    const/4 p2, 0x1

    .line 7
    :goto_0
    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kj0;->a:Lcom/google/android/gms/internal/ads/ys0;

    .line 8
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/ys0;->a(Lcom/google/android/gms/internal/ads/zztp;)Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p3, p2}, Lcom/google/android/gms/internal/ads/ys0;->a(I)Lcom/google/android/gms/internal/ads/ys0;

    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ys0;->c()Lcom/google/android/gms/internal/ads/ws0;

    move-result-object p1

    .line 9
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {p2}, Lcom/google/android/gms/internal/ads/mk;->k()Lcom/google/android/gms/internal/ads/i00;

    move-result-object p2

    new-instance p3, Lcom/google/android/gms/internal/ads/ws$a;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/ws$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->c:Landroid/content/Context;

    .line 10
    invoke-virtual {p3, v1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 11
    invoke-virtual {p3, p1}, Lcom/google/android/gms/internal/ads/ws$a;->a(Lcom/google/android/gms/internal/ads/ws0;)Lcom/google/android/gms/internal/ads/ws$a;

    .line 12
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/ws$a;->a()Lcom/google/android/gms/internal/ads/ws;

    move-result-object p3

    .line 13
    invoke-interface {p2, p3}, Lcom/google/android/gms/internal/ads/i00;->d(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/i00;

    new-instance p3, Lcom/google/android/gms/internal/ads/hw$a;

    invoke-direct {p3}, Lcom/google/android/gms/internal/ads/hw$a;-><init>()V

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 14
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dj0;->c()Lcom/google/android/gms/internal/ads/qu;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/qu;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 15
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dj0;->d()Lcom/google/android/gms/internal/ads/ot;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    .line 16
    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/ot;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 17
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dj0;->e()Lcom/google/android/gms/internal/ads/wt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/wt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 18
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dj0;->f()Lcom/google/android/gms/internal/ads/st1;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/st1;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 19
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/dj0;->b()Lcom/google/android/gms/internal/ads/jt;

    move-result-object v1

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v2

    invoke-virtual {p3, v1, v2}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/jt;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ws0;->m:Lcom/google/android/gms/internal/ads/zzvm;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    .line 20
    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mk;->a()Ljava/util/concurrent/Executor;

    move-result-object v1

    invoke-virtual {p3, p1, v1}, Lcom/google/android/gms/internal/ads/hw$a;->a(Lcom/google/android/gms/internal/ads/zzvm;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/hw$a;

    .line 21
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/hw$a;->a()Lcom/google/android/gms/internal/ads/hw;

    move-result-object p1

    .line 22
    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/i00;->b(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/i00;

    iget-object p1, p0, Lcom/google/android/gms/internal/ads/kj0;->d:Lcom/google/android/gms/internal/ads/dj0;

    .line 23
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/dj0;->a()Lcom/google/android/gms/internal/ads/b00;

    move-result-object p1

    invoke-interface {p2, p1}, Lcom/google/android/gms/internal/ads/i00;->b(Lcom/google/android/gms/internal/ads/b00;)Lcom/google/android/gms/internal/ads/i00;

    .line 24
    invoke-interface {p2}, Lcom/google/android/gms/internal/ads/i00;->d()Lcom/google/android/gms/internal/ads/f00;

    move-result-object p1

    .line 25
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f00;->c()Lcom/google/android/gms/internal/ads/ft0;

    move-result-object p2

    invoke-virtual {p2, v0}, Lcom/google/android/gms/internal/ads/ft0;->a(I)V

    .line 26
    new-instance p2, Lcom/google/android/gms/internal/ads/cr;

    iget-object p3, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    .line 27
    invoke-virtual {p3}, Lcom/google/android/gms/internal/ads/mk;->c()Ljava/util/concurrent/Executor;

    move-result-object p3

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/kj0;->b:Lcom/google/android/gms/internal/ads/mk;

    invoke-virtual {v1}, Lcom/google/android/gms/internal/ads/mk;->b()Ljava/util/concurrent/ScheduledExecutorService;

    move-result-object v1

    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/f00;->a()Lcom/google/android/gms/internal/ads/rr;

    move-result-object v2

    invoke-virtual {v2}, Lcom/google/android/gms/internal/ads/rr;->a()Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v2

    invoke-direct {p2, p3, v1, v2}, Lcom/google/android/gms/internal/ads/cr;-><init>(Ljava/util/concurrent/Executor;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/qz0;)V

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/kj0;->e:Lcom/google/android/gms/internal/ads/cr;

    .line 28
    iget-object p2, p0, Lcom/google/android/gms/internal/ads/kj0;->e:Lcom/google/android/gms/internal/ads/cr;

    new-instance p3, Lcom/google/android/gms/internal/ads/mj0;

    invoke-direct {p3, p0, p4, p1}, Lcom/google/android/gms/internal/ads/mj0;-><init>(Lcom/google/android/gms/internal/ads/kj0;Lcom/google/android/gms/internal/ads/ij0;Lcom/google/android/gms/internal/ads/f00;)V

    invoke-virtual {p2, p3}, Lcom/google/android/gms/internal/ads/cr;->a(Lcom/google/android/gms/internal/ads/hz0;)V

    return v0
.end method

.method public final isLoading()Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/kj0;->e:Lcom/google/android/gms/internal/ads/cr;

    if-eqz v0, :cond_0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/cr;->a()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x1

    return v0

    :cond_0
    const/4 v0, 0x0

    return v0
.end method
