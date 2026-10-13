.class final Lcom/google/android/gms/internal/ads/pj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/hz0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/hz0<",
        "Lcom/google/android/gms/internal/ads/ak0;",
        ">;"
    }
.end annotation


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzasn;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcmh;Lcom/google/android/gms/internal/ads/zzasn;)V
    .locals 0

    .line 1
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/pj0;->a:Lcom/google/android/gms/internal/ads/zzasn;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final synthetic a(Ljava/lang/Object;)V
    .locals 2
    .param p1    # Ljava/lang/Object;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 3
    check-cast p1, Lcom/google/android/gms/internal/ads/ak0;

    .line 4
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/pj0;->a:Lcom/google/android/gms/internal/ads/zzasn;

    iget-object v1, p1, Lcom/google/android/gms/internal/ads/ak0;->a:Ljava/lang/String;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/ak0;->b:Ljava/lang/String;

    invoke-interface {v0, v1, p1}, Lcom/google/android/gms/internal/ads/zzasn;->zzm(Ljava/lang/String;Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 5
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method

.method public final a(Ljava/lang/Throwable;)V
    .locals 1

    .line 1
    :try_start_0
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/pj0;->a:Lcom/google/android/gms/internal/ads/zzasn;

    const-string v0, "Internal error."

    invoke-interface {p1, v0}, Lcom/google/android/gms/internal/ads/zzasn;->onError(Ljava/lang/String;)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, ""

    .line 2
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    return-void
.end method
