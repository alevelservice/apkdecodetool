.class public final Lcom/google/android/gms/internal/ads/ip0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/ko0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/ko0<",
        "Lcom/google/android/gms/internal/ads/jp0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/m7;

.field private final b:Landroid/content/Context;

.field private final c:Ljava/lang/String;

.field private final d:Lcom/google/android/gms/internal/ads/tz0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/m7;Landroid/content/Context;Ljava/lang/String;Lcom/google/android/gms/internal/ads/tz0;)V
    .locals 0
    .param p1    # Lcom/google/android/gms/internal/ads/m7;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ip0;->a:Lcom/google/android/gms/internal/ads/m7;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ip0;->b:Landroid/content/Context;

    .line 4
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/ip0;->c:Ljava/lang/String;

    .line 5
    iput-object p4, p0, Lcom/google/android/gms/internal/ads/ip0;->d:Lcom/google/android/gms/internal/ads/tz0;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/qz0;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/qz0<",
            "Lcom/google/android/gms/internal/ads/jp0;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ip0;->d:Lcom/google/android/gms/internal/ads/tz0;

    new-instance v1, Lcom/google/android/gms/internal/ads/mp0;

    invoke-direct {v1, p0}, Lcom/google/android/gms/internal/ads/mp0;-><init>(Lcom/google/android/gms/internal/ads/ip0;)V

    invoke-interface {v0, v1}, Lcom/google/android/gms/internal/ads/tz0;->a(Ljava/util/concurrent/Callable;)Lcom/google/android/gms/internal/ads/qz0;

    move-result-object v0

    return-object v0
.end method

.method final synthetic b()Lcom/google/android/gms/internal/ads/jp0;
    .locals 4

    .line 1
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    .line 2
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/ip0;->a:Lcom/google/android/gms/internal/ads/m7;

    if-eqz v1, :cond_0

    .line 3
    iget-object v2, p0, Lcom/google/android/gms/internal/ads/ip0;->b:Landroid/content/Context;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/ip0;->c:Ljava/lang/String;

    invoke-interface {v1, v2, v3, v0}, Lcom/google/android/gms/internal/ads/m7;->a(Landroid/content/Context;Ljava/lang/String;Lorg/json/JSONObject;)V

    .line 4
    :cond_0
    new-instance v1, Lcom/google/android/gms/internal/ads/jp0;

    invoke-direct {v1, v0}, Lcom/google/android/gms/internal/ads/jp0;-><init>(Lorg/json/JSONObject;)V

    return-object v1
.end method
