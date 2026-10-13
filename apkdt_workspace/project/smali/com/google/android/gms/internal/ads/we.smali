.class final Lcom/google/android/gms/internal/ads/we;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Ljava/lang/String;

.field private final synthetic f:Ljava/lang/String;

.field private final synthetic g:Lcom/google/android/gms/internal/ads/zzaxr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaxr;Ljava/lang/String;Ljava/lang/String;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/we;->g:Lcom/google/android/gms/internal/ads/zzaxr;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/we;->e:Ljava/lang/String;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/we;->f:Ljava/lang/String;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we;->g:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzaxr;)Lcom/google/android/gms/internal/ads/cf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/we;->g:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzaxr;)Lcom/google/android/gms/internal/ads/cf;

    move-result-object v0

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/we;->e:Ljava/lang/String;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/we;->f:Ljava/lang/String;

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cf;->zzn(Ljava/lang/String;Ljava/lang/String;)V

    :cond_0
    return-void
.end method
