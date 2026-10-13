.class public final Lcom/google/android/gms/internal/ads/c90;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/doubleclick/a;
.implements Lcom/google/android/gms/internal/ads/jt;
.implements Lcom/google/android/gms/internal/ads/ot;
.implements Lcom/google/android/gms/internal/ads/vt;
.implements Lcom/google/android/gms/internal/ads/wt;
.implements Lcom/google/android/gms/internal/ads/qu;
.implements Lcom/google/android/gms/internal/ads/sv;
.implements Lcom/google/android/gms/internal/ads/fv0;
.implements Lcom/google/android/gms/internal/ads/st1;


# instance fields
.field private final e:Ljava/util/List;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Ljava/util/List<",
            "Ljava/lang/Object;",
            ">;"
        }
    .end annotation
.end field

.field private final f:Lcom/google/android/gms/internal/ads/q80;

.field private g:J


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/q80;Lcom/google/android/gms/internal/ads/mk;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c90;->f:Lcom/google/android/gms/internal/ads/q80;

    .line 3
    invoke-static {p2}, Ljava/util/Collections;->singletonList(Ljava/lang/Object;)Ljava/util/List;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/c90;->e:Ljava/util/List;

    return-void
.end method

.method private final varargs a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/lang/Class<",
            "*>;",
            "Ljava/lang/String;",
            "[",
            "Ljava/lang/Object;",
            ")V"
        }
    .end annotation

    .line 5
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/c90;->f:Lcom/google/android/gms/internal/ads/q80;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c90;->e:Ljava/util/List;

    invoke-virtual {p1}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p1

    invoke-static {p1}, Ljava/lang/String;->valueOf(Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p1}, Ljava/lang/String;->length()I

    move-result v2

    const-string v3, "Event-"

    if-eqz v2, :cond_0

    invoke-virtual {v3, p1}, Ljava/lang/String;->concat(Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    goto :goto_0

    :cond_0
    new-instance p1, Ljava/lang/String;

    invoke-direct {p1, v3}, Ljava/lang/String;-><init>(Ljava/lang/String;)V

    :goto_0
    invoke-virtual {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/q80;->a(Ljava/util/List;Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method


# virtual methods
.method public final a(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/vt;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onResume"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/vs0;)V
    .locals 0

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/wu0;Ljava/lang/String;)V
    .locals 2

    .line 4
    const-class p1, Lcom/google/android/gms/internal/ads/xu0;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onTaskSucceeded"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/wu0;Ljava/lang/String;Ljava/lang/Throwable;)V
    .locals 2

    .line 3
    const-class p1, Lcom/google/android/gms/internal/ads/xu0;

    const/4 v0, 0x2

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    invoke-virtual {p3}, Ljava/lang/Object;->getClass()Ljava/lang/Class;

    move-result-object p2

    invoke-virtual {p2}, Ljava/lang/Class;->getSimpleName()Ljava/lang/String;

    move-result-object p2

    const/4 p3, 0x1

    aput-object p2, v0, p3

    const-string p2, "onTaskFailed"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzaok;)V
    .locals 2

    .line 6
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object p1

    invoke-interface {p1}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v0

    iput-wide v0, p0, Lcom/google/android/gms/internal/ads/c90;->g:J

    .line 7
    const-class p1, Lcom/google/android/gms/internal/ads/sv;

    const/4 v0, 0x0

    new-array v0, v0, [Ljava/lang/Object;

    const-string v1, "onAdRequest"

    invoke-direct {p0, p1, v1, v0}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/zzape;Ljava/lang/String;Ljava/lang/String;)V
    .locals 3
    .annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
    .end annotation

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/jt;

    const/4 v1, 0x3

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const/4 p1, 0x2

    aput-object p3, v1, p1

    const-string p1, "onRewarded"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/vt;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onPause"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final b(Lcom/google/android/gms/internal/ads/wu0;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-class p1, Lcom/google/android/gms/internal/ads/xu0;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onTaskStarted"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Landroid/content/Context;)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/vt;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onDestroy"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final c(Lcom/google/android/gms/internal/ads/wu0;Ljava/lang/String;)V
    .locals 2

    .line 2
    const-class p1, Lcom/google/android/gms/internal/ads/xu0;

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    const/4 v1, 0x0

    aput-object p2, v0, v1

    const-string p2, "onTaskCreated"

    invoke-direct {p0, p1, p2, v0}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdClicked()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/st1;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdClicked"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdClosed()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/jt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdClosed"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdFailedToLoad(I)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/ot;

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "onAdFailedToLoad"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdImpression()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/wt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdImpression"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdLeftApplication()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/jt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdLeftApplication"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdLoaded()V
    .locals 4

    .line 1
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->j()Lcom/google/android/gms/common/util/e;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/common/util/e;->c()J

    move-result-wide v0

    iget-wide v2, p0, Lcom/google/android/gms/internal/ads/c90;->g:J

    sub-long/2addr v0, v2

    new-instance v2, Ljava/lang/StringBuilder;

    const/16 v3, 0x29

    invoke-direct {v2, v3}, Ljava/lang/StringBuilder;-><init>(I)V

    const-string v3, "Ad Request Latency : "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v0, v1}, Ljava/lang/StringBuilder;->append(J)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/na;->e(Ljava/lang/String;)V

    .line 2
    const-class v0, Lcom/google/android/gms/internal/ads/qu;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdLoaded"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAdOpened()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/jt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onAdOpened"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onAppEvent(Ljava/lang/String;Ljava/lang/String;)V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/ads/doubleclick/a;

    const/4 v1, 0x2

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const/4 p1, 0x1

    aput-object p2, v1, p1

    const-string p1, "onAppEvent"

    invoke-direct {p0, v0, p1, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRewardedVideoCompleted()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/jt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRewardedVideoCompleted"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method

.method public final onRewardedVideoStarted()V
    .locals 3

    .line 1
    const-class v0, Lcom/google/android/gms/internal/ads/jt;

    const/4 v1, 0x0

    new-array v1, v1, [Ljava/lang/Object;

    const-string v2, "onRewardedVideoStarted"

    invoke-direct {p0, v0, v2, v1}, Lcom/google/android/gms/internal/ads/c90;->a(Ljava/lang/Class;Ljava/lang/String;[Ljava/lang/Object;)V

    return-void
.end method
