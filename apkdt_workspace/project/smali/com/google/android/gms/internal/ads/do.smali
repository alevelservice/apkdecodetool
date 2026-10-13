.class final synthetic Lcom/google/android/gms/internal/ads/do;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/lang/Runnable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/ao;

.field private final f:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ao;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/do;->e:Lcom/google/android/gms/internal/ads/ao;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/do;->f:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final run()V
    .locals 2

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/do;->e:Lcom/google/android/gms/internal/ads/ao;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/do;->f:Lorg/json/JSONObject;

    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/ao;->a(Lorg/json/JSONObject;)V

    return-void
.end method
