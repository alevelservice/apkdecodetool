.class final Lcom/google/android/gms/internal/ads/zzchm;
.super Lcom/google/android/gms/internal/ads/zzalb;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/bd0;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/bd0<",
            "Lcom/google/android/gms/internal/ads/zzalj;",
            "Lcom/google/android/gms/internal/ads/zzcgu;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/we0;Lcom/google/android/gms/internal/ads/bd0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/bd0<",
            "Lcom/google/android/gms/internal/ads/zzalj;",
            "Lcom/google/android/gms/internal/ads/zzcgu;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Lcom/google/android/gms/internal/ads/zzalb;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/zzchm;->e:Lcom/google/android/gms/internal/ads/bd0;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/we0;Lcom/google/android/gms/internal/ads/bd0;Lcom/google/android/gms/internal/ads/ye0;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1, p2}, Lcom/google/android/gms/internal/ads/zzchm;-><init>(Lcom/google/android/gms/internal/ads/we0;Lcom/google/android/gms/internal/ads/bd0;)V

    return-void
.end method


# virtual methods
.method public final zzdg(Ljava/lang/String;)V
    .locals 1

    .line 1
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/zzchm;->e:Lcom/google/android/gms/internal/ads/bd0;

    iget-object p1, p1, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast p1, Lcom/google/android/gms/internal/ads/zzcgu;

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Lcom/google/android/gms/internal/ads/zzcgu;->onAdFailedToLoad(I)V

    return-void
.end method

.method public final zzsb()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zzchm;->e:Lcom/google/android/gms/internal/ads/bd0;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/bd0;->c:Lcom/google/android/gms/internal/ads/nu;

    check-cast v0, Lcom/google/android/gms/internal/ads/zzcgu;

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/zzcgu;->onAdLoaded()V

    return-void
.end method
