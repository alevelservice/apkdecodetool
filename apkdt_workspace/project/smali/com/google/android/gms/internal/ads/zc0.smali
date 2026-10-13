.class public final Lcom/google/android/gms/internal/ads/zc0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ad0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "<DelegateT:",
        "Ljava/lang/Object;",
        "AdapterT:",
        "Ljava/lang/Object;",
        ">",
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ad0<",
        "TAdapterT;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ad0;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/ad0<",
            "TDelegateT;>;"
        }
    .end annotation
.end field

.field private final b:Lcom/google/android/gms/internal/ads/pw0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/pw0<",
            "TDelegateT;TAdapterT;>;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ad0;Lcom/google/android/gms/internal/ads/pw0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/ad0<",
            "TDelegateT;>;",
            "Lcom/google/android/gms/internal/ads/pw0<",
            "TDelegateT;TAdapterT;>;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zc0;->a:Lcom/google/android/gms/internal/ads/ad0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zc0;->b:Lcom/google/android/gms/internal/ads/pw0;

    return-void
.end method


# virtual methods
.method public final a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/vs0;",
            "Lcom/google/android/gms/internal/ads/ns0;",
            ")",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "TAdapterT;>;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zc0;->a:Lcom/google/android/gms/internal/ads/ad0;

    .line 2
    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ad0;->a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    iget-object p2, p0, Lcom/google/android/gms/internal/ads/zc0;->b:Lcom/google/android/gms/internal/ads/pw0;

    sget-object v0, Lcom/google/android/gms/internal/ads/yd;->a:Lcom/google/android/gms/internal/ads/tz0;

    .line 3
    invoke-static {p1, p2, v0}, Lcom/google/android/gms/internal/ads/gz0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/pw0;Ljava/util/concurrent/Executor;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object p1

    return-object p1
.end method

.method public final b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zc0;->a:Lcom/google/android/gms/internal/ads/ad0;

    invoke-interface {v0, p1, p2}, Lcom/google/android/gms/internal/ads/ad0;->b(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;)Z

    move-result p1

    return p1
.end method
