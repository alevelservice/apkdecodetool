.class final Lcom/google/android/gms/internal/ads/xj;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/overlay/m;


# instance fields
.field private e:Lcom/google/android/gms/internal/ads/fi;

.field private f:Lcom/google/android/gms/ads/internal/overlay/m;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/ads/internal/overlay/m;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xj;->e:Lcom/google/android/gms/internal/ads/fi;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/xj;->f:Lcom/google/android/gms/ads/internal/overlay/m;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xj;->f:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->a()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xj;->e:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyr()V

    return-void
.end method

.method public final b()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xj;->f:Lcom/google/android/gms/ads/internal/overlay/m;

    invoke-interface {v0}, Lcom/google/android/gms/ads/internal/overlay/m;->b()V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xj;->e:Lcom/google/android/gms/internal/ads/fi;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzsq()V

    return-void
.end method

.method public final onPause()V
    .locals 0

    return-void
.end method

.method public final onResume()V
    .locals 0

    return-void
.end method
