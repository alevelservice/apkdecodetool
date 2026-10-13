.class final synthetic Lcom/google/android/gms/internal/ads/qp0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/np0;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/np0;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/qp0;->e:Lcom/google/android/gms/internal/ads/np0;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/qp0;->e:Lcom/google/android/gms/internal/ads/np0;

    .line 2
    new-instance v1, Lcom/google/android/gms/internal/ads/op0;

    iget-object v2, v0, Lcom/google/android/gms/internal/ads/np0;->a:Lcom/google/android/gms/internal/ads/zr1;

    iget-object v0, v0, Lcom/google/android/gms/internal/ads/np0;->c:Landroid/content/Context;

    invoke-interface {v2, v0}, Lcom/google/android/gms/internal/ads/zr1;->a(Landroid/content/Context;)Lorg/json/JSONObject;

    move-result-object v0

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/op0;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
