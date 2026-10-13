.class public final Lcom/google/android/gms/internal/ads/th;
.super Lcom/google/android/gms/internal/ads/jh;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/tf;)V
    .locals 0

    .line 1
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/jh;-><init>(Lcom/google/android/gms/internal/ads/tf;)V

    return-void
.end method


# virtual methods
.method public final a(Ljava/lang/String;)Z
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/jh;->g:Ljava/lang/ref/WeakReference;

    invoke-virtual {v0}, Ljava/lang/ref/WeakReference;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/tf;

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v1

    invoke-interface {v0, v1, p0}, Lcom/google/android/gms/internal/ads/tf;->zza(Ljava/lang/String;Lcom/google/android/gms/internal/ads/jh;)V

    :cond_0
    const-string v0, "VideoStreamNoopCache is doing nothing."

    .line 3
    invoke-static {v0}, Lcom/google/android/gms/internal/ads/qd;->d(Ljava/lang/String;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/google/android/gms/internal/ads/jh;->b(Ljava/lang/String;)Ljava/lang/String;

    move-result-object v0

    const-string v1, "noop"

    const-string v2, "Noop cache is a noop."

    invoke-virtual {p0, p1, v0, v1, v2}, Lcom/google/android/gms/internal/ads/jh;->a(Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;Ljava/lang/String;)V

    const/4 p1, 0x0

    return p1
.end method

.method public final b()V
    .locals 0

    return-void
.end method
