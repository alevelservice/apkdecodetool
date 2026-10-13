.class final synthetic Lcom/google/android/gms/internal/ads/cj0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ot;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/zi0;

.field private final f:Lcom/google/android/gms/internal/ads/zzafp;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zi0;Lcom/google/android/gms/internal/ads/zzafp;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cj0;->e:Lcom/google/android/gms/internal/ads/zi0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/cj0;->f:Lcom/google/android/gms/internal/ads/zzafp;

    return-void
.end method


# virtual methods
.method public final onAdFailedToLoad(I)V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cj0;->e:Lcom/google/android/gms/internal/ads/zi0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cj0;->f:Lcom/google/android/gms/internal/ads/zzafp;

    .line 2
    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/zi0;->onAdFailedToLoad(I)V

    if-eqz v1, :cond_0

    .line 3
    :try_start_0
    invoke-interface {v1, p1}, Lcom/google/android/gms/internal/ads/zzafp;->zzcl(I)V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception p1

    const-string v0, "#007 Could not call remote method."

    .line 4
    invoke-static {v0, p1}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
