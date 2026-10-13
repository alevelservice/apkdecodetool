.class final Lcom/google/android/gms/internal/ads/ye;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:I

.field private final synthetic f:I

.field private final synthetic g:Lcom/google/android/gms/internal/ads/zzaxr;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzaxr;II)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ye;->g:Lcom/google/android/gms/internal/ads/zzaxr;

    iput p2, p0, Lcom/google/android/gms/internal/ads/ye;->e:I

    iput p3, p0, Lcom/google/android/gms/internal/ads/ye;->f:I

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ye;->g:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzaxr;)Lcom/google/android/gms/internal/ads/cf;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ye;->g:Lcom/google/android/gms/internal/ads/zzaxr;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzaxr;->zza(Lcom/google/android/gms/internal/ads/zzaxr;)Lcom/google/android/gms/internal/ads/cf;

    move-result-object v0

    iget v1, p0, Lcom/google/android/gms/internal/ads/ye;->e:I

    iget v2, p0, Lcom/google/android/gms/internal/ads/ye;->f:I

    invoke-interface {v0, v1, v2}, Lcom/google/android/gms/internal/ads/cf;->zzj(II)V

    :cond_0
    return-void
.end method
