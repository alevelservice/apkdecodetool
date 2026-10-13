.class public final Lcom/google/android/gms/internal/ads/de0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ad0<",
        "Lcom/google/android/gms/internal/ads/uo;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qp;

.field private final b:Lcom/google/android/gms/internal/ads/jd0;

.field private final c:Lcom/google/android/gms/internal/ads/tz0;

.field private final d:Lcom/google/android/gms/internal/ads/mt;

.field private final e:Ljava/util/concurrent/ScheduledExecutorService;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/qp;Lcom/google/android/gms/internal/ads/jd0;Lcom/google/android/gms/internal/ads/mt;Ljava/util/concurrent/ScheduledExecutorService;Lcom/google/android/gms/internal/ads/tz0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/de0;->a:Lcom/google/android/gms/internal/ads/qp;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/de0;->b:Lcom/google/android/gms/internal/ads/jd0;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/de0;->d:Lcom/google/android/gms/internal/ads/mt;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/de0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 6
    iput-object p5, p0, Lcom/google/android/gms/internal/ads/de0;->c:Lcom/google/android/gms/internal/ads/tz0;

    return-void
.end method

.method static synthetic a(Lcom/google/android/gms/internal/ads/de0;)Lcom/google/android/gms/internal/ads/mt;
    .locals 0

    .line 2
    iget-object p0, p0, Lcom/google/android/gms/internal/ads/de0;->d:Lcom/google/android/gms/internal/ads/mt;

    return-object p0
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/uo;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de0;->c:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/ge0;

    invoke-direct {v1, p0, p1, p2}, Lcom/google/android/gms/internal/ads/ge0;-><init>(Lcom/google/android/gms/internal/ads/de0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z
    .locals 1

    .line 1
    iget-object v0, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ws0;->a()Lcom/google/android/gms/internal/ads/zzack;

    move-result-object v0

    if-eqz v0, :cond_0

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de0;->b:Lcom/google/android/gms/internal/ads/jd0;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/jd0;->b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z

    move-result p1

    if-eqz p1, :cond_0

    const/4 p1, 0x1

    return p1

    :cond_0
    const/4 p1, 0x0

    return p1
.end method

.method final synthetic c(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/uo;
    .locals 5

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de0;->a:Lcom/google/android/gms/internal/ads/qp;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    new-instance v2, Lcom/google/android/gms/internal/ads/dq;

    iget-object v3, p1, Lcom/google/android/gms/internal/ads/vs0;->a:Lcom/google/android/gms/internal/ads/qs0;

    iget-object v3, v3, Lcom/google/android/gms/internal/ads/qs0;->a:Lcom/google/android/gms/internal/ads/ws0;

    .line 2
    invoke-virtual {v3}, Lcom/google/android/gms/internal/ads/ws0;->a()Lcom/google/android/gms/internal/ads/zzack;

    move-result-object v3

    new-instance v4, Lcom/google/android/gms/internal/ads/fe0;

    invoke-direct {v4, p0, p1, p2}, Lcom/google/android/gms/internal/ads/fe0;-><init>(Lcom/google/android/gms/internal/ads/de0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V

    invoke-direct {v2, v3, v4}, Lcom/google/android/gms/internal/ads/dq;-><init>(Lcom/google/android/gms/internal/ads/zzack;Ljava/lang/Runnable;)V

    .line 3
    invoke-virtual {v0, v1, v2}, Lcom/google/android/gms/internal/ads/qp;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/dq;)Lcom/google/android/gms/internal/ads/eq;

    move-result-object p1

    .line 4
    invoke-interface {p1}, Lcom/google/android/gms/internal/ads/eq;->a()Lcom/google/android/gms/internal/ads/uo;

    move-result-object p1

    return-object p1
.end method

.method final synthetic d(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de0;->b:Lcom/google/android/gms/internal/ads/jd0;

    .line 2
    invoke-virtual {v0, p1, p2}, Lcom/google/android/gms/internal/ads/jd0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    iget p2, p2, Lcom/google/android/gms/internal/ads/ns0;->I:I

    int-to-long v0, p2

    sget-object p2, Ljava/util/concurrent/TimeUnit;->SECONDS:Ljava/util/concurrent/TimeUnit;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/de0;->e:Ljava/util/concurrent/ScheduledExecutorService;

    .line 3
    invoke-static {p1, v0, v1, p2, v2}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;JLjava/util/concurrent/TimeUnit;Ljava/util/concurrent/ScheduledExecutorService;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/ie0;

    invoke-direct {p2, p0}, Lcom/google/android/gms/internal/ads/ie0;-><init>(Lcom/google/android/gms/internal/ads/de0;)V

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/de0;->c:Lcom/google/android/gms/internal/ads/tz0;

    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/hz0;Ljava/util/concurrent/Executor;)V

    return-void
.end method
