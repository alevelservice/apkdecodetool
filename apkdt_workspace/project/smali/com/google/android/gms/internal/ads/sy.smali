.class final synthetic Lcom/google/android/gms/internal/ads/sy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/wv;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/fi;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/fi;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/sy;->e:Lcom/google/android/gms/internal/ads/fi;

    return-void
.end method


# virtual methods
.method public final c()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/sy;->e:Lcom/google/android/gms/internal/ads/fi;

    .line 2
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyu()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v1

    if-eqz v1, :cond_0

    .line 3
    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->zzyu()Lcom/google/android/gms/ads/internal/overlay/zze;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/ads/internal/overlay/zze;->close()V

    :cond_0
    return-void
.end method
