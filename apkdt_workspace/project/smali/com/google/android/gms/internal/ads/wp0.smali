.class public final Lcom/google/android/gms/internal/ads/wp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/tp0;",
        ">;"
    }
.end annotation


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/t9;

.field private b:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/t9;Lcom/google/android/gms/internal/ads/tz0;Ljava/lang/String;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wp0;->a:Lcom/google/android/gms/internal/ads/t9;

    .line 3
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/wp0;->b:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 4
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/tp0;",
            ">;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/he;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/he;-><init>()V

    const/4 v0, 0x0

    .line 2
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Ljava/lang/Object;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 3
    sget-object v1, Lcom/google/android/gms/internal/ads/aw1;->k3:Lcom/google/android/gms/internal/ads/pv1;

    .line 4
    invoke-static {}, Lcom/google/android/gms/internal/ads/mu1;->e()Lcom/google/android/gms/internal/ads/wv1;

    move-result-object v2

    invoke-virtual {v2, v1}, Lcom/google/android/gms/internal/ads/wv1;->a(Lcom/google/android/gms/internal/ads/pv1;)Ljava/lang/Object;

    move-result-object v1

    .line 5
    check-cast v1, Ljava/lang/Boolean;

    invoke-virtual {v1}, Ljava/lang/Boolean;->booleanValue()Z

    move-result v1

    if-eqz v1, :cond_0

    .line 6
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wp0;->a:Lcom/google/android/gms/internal/ads/t9;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wp0;->b:Ljava/lang/String;

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/t9;->a(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    .line 7
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/wp0;->a:Lcom/google/android/gms/internal/ads/t9;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/wp0;->b:Ljava/lang/String;

    .line 8
    invoke-interface {v1, v2}, Lcom/google/android/gms/internal/ads/t9;->b(Ljava/lang/String;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v1

    const/4 v2, 0x2

    new-array v2, v2, [Lcom/google/android/gms/internal/ads/qz0;

    const/4 v3, 0x0

    aput-object v0, v2, v3

    const/4 v3, 0x1

    aput-object v1, v2, v3

    .line 9
    invoke-static {v2}, Lcom/google/android/gms/internal/ads/gz0;->a([Lcom/google/android/gms/internal/ads/qz0;)Lcom/google/android/gms/internal/ads/lz0;

    move-result-object v2

    new-instance v3, Lcom/google/android/gms/internal/ads/vp0;

    invoke-direct {v3, v0, v1}, Lcom/google/android/gms/internal/ads/vp0;-><init>(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;)V

    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/tz0;

    .line 10
    invoke-virtual {v2, v3, v0}, Lcom/google/android/gms/internal/ads/lz0;->a(Ljava/util/concurrent/Callable;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method
