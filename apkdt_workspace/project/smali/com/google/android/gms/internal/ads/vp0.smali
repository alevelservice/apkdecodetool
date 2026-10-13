.class final synthetic Lcom/google/android/gms/internal/ads/vp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/qz0;

.field private final f:Lcom/google/android/gms/internal/ads/qz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vp0;->e:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/vp0;->f:Lcom/google/android/gms/internal/ads/qz0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vp0;->e:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/vp0;->f:Lcom/google/android/gms/internal/ads/qz0;

    .line 2
    new-instance v2, Lcom/google/android/gms/internal/ads/tp0;

    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Ljava/lang/String;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Ljava/lang/String;

    invoke-direct {v2, v0, v1}, Lcom/google/android/gms/internal/ads/tp0;-><init>(Ljava/lang/String;Ljava/lang/String;)V

    return-object v2
.end method
