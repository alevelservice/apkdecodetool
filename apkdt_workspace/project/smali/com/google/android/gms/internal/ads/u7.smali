.class final synthetic Lcom/google/android/gms/internal/ads/u7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pw0;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/r7;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/r7;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/u7;->a:Lcom/google/android/gms/internal/ads/r7;

    return-void
.end method


# virtual methods
.method public final apply(Ljava/lang/Object;)Ljava/lang/Object;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/u7;->a:Lcom/google/android/gms/internal/ads/r7;

    check-cast p1, Lorg/json/JSONObject;

    invoke-virtual {v0, p1}, Lcom/google/android/gms/internal/ads/r7;->a(Lorg/json/JSONObject;)Ljava/lang/Void;

    move-result-object p1

    return-object p1
.end method
