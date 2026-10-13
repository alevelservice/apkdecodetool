.class final Lcom/google/android/gms/internal/ads/ti;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/zzbbo;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/zzbbo;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ti;->e:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ti;->e:Lcom/google/android/gms/internal/ads/zzbbo;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/zzbbo;->zza(Lcom/google/android/gms/internal/ads/zzbbo;)Lcom/google/android/gms/internal/ads/fi;

    move-result-object v0

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/fi;->destroy()V

    return-void
.end method
