.class final Lcom/google/android/gms/internal/ads/g60;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/ads/internal/i;


# instance fields
.field private final synthetic e:Lcom/google/android/gms/internal/ads/d60;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/d60;)V
    .locals 0

    .line 1
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/g60;->e:Lcom/google/android/gms/internal/ads/d60;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public final zzju()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g60;->e:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/d60;)Lcom/google/android/gms/internal/ads/kv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kv;->onPause()V

    return-void
.end method

.method public final zzjv()V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/g60;->e:Lcom/google/android/gms/internal/ads/d60;

    invoke-static {v0}, Lcom/google/android/gms/internal/ads/d60;->a(Lcom/google/android/gms/internal/ads/d60;)Lcom/google/android/gms/internal/ads/kv;

    move-result-object v0

    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/kv;->onResume()V

    return-void
.end method
