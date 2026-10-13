.class final synthetic Lcom/google/android/gms/internal/ads/nb0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/qz0;

.field private final f:Lcom/google/android/gms/internal/ads/qz0;

.field private final g:Lcom/google/android/gms/internal/ads/qz0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/nb0;->e:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/nb0;->f:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/nb0;->g:Lcom/google/android/gms/internal/ads/qz0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 4

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/nb0;->e:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/nb0;->f:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/nb0;->g:Lcom/google/android/gms/internal/ads/qz0;

    .line 2
    new-instance v3, Lcom/google/android/gms/internal/ads/vb0;

    .line 3
    invoke-interface {v0}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/google/android/gms/internal/ads/yb0;

    invoke-interface {v1}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lorg/json/JSONObject;

    invoke-interface {v2}, Ljava/util/concurrent/Future;->get()Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lcom/google/android/gms/internal/ads/l7;

    invoke-direct {v3, v0, v1, v2}, Lcom/google/android/gms/internal/ads/vb0;-><init>(Lcom/google/android/gms/internal/ads/yb0;Lorg/json/JSONObject;Lcom/google/android/gms/internal/ads/l7;)V

    return-object v3
.end method
