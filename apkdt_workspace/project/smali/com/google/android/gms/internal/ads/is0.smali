.class final Lcom/google/android/gms/internal/ads/is0;
.super Lcom/google/android/gms/ads/o/a;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final synthetic a:Lcom/google/android/gms/internal/ads/zzvh;

.field private final synthetic b:Lcom/google/android/gms/internal/ads/zzcuv;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzcuv;Lcom/google/android/gms/internal/ads/zzvh;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/is0;->b:Lcom/google/android/gms/internal/ads/zzcuv;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/is0;->a:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-direct {p0}, Lcom/google/android/gms/ads/o/a;-><init>()V

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is0;->b:Lcom/google/android/gms/internal/ads/zzcuv;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzcuv;->zza(Lcom/google/android/gms/internal/ads/zzcuv;)Lcom/google/android/gms/internal/ads/r50;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    :try_start_0
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/is0;->a:Lcom/google/android/gms/internal/ads/zzvh;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzvh;->onAdMetadataChanged()V
    :try_end_0
    .catch Landroid/os/RemoteException; {:try_start_0 .. :try_end_0} :catch_0

    return-void

    :catch_0
    move-exception v0

    const-string v1, "#007 Could not call remote method."

    .line 3
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;Ljava/lang/Throwable;)V

    :cond_0
    return-void
.end method
