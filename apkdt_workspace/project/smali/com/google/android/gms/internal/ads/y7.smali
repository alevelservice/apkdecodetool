.class public final Lcom/google/android/gms/internal/ads/y7;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/j7;


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/t3;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/t3<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 3

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->p()Lcom/google/android/gms/internal/ads/w3;

    move-result-object v0

    .line 3
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawv;->j()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/w3;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/c4;

    move-result-object v0

    sget-object v1, Lcom/google/android/gms/internal/ads/b4;->b:Lcom/google/android/gms/internal/ads/x3;

    const-string v2, "google.afma.request.getAdDictionary"

    .line 4
    invoke-virtual {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/c4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;

    .line 5
    invoke-static {}, Lcom/google/android/gms/ads/internal/n;->p()Lcom/google/android/gms/internal/ads/w3;

    move-result-object v0

    .line 6
    invoke-static {}, Lcom/google/android/gms/internal/ads/zzawv;->j()Lcom/google/android/gms/internal/ads/zzawv;

    move-result-object v1

    invoke-virtual {v0, p1, v1}, Lcom/google/android/gms/internal/ads/w3;->a(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;)Lcom/google/android/gms/internal/ads/c4;

    move-result-object p1

    sget-object v0, Lcom/google/android/gms/internal/ads/b4;->b:Lcom/google/android/gms/internal/ads/x3;

    const-string v1, "google.afma.sdkConstants.getSdkConstants"

    .line 7
    invoke-virtual {p1, v1, v0, v0}, Lcom/google/android/gms/internal/ads/c4;->a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/y7;->a:Lcom/google/android/gms/internal/ads/t3;

    return-void
.end method


# virtual methods
.method public final e()Lcom/google/android/gms/internal/ads/t3;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()",
            "Lcom/google/android/gms/internal/ads/t3<",
            "Lorg/json/JSONObject;",
            "Lorg/json/JSONObject;",
            ">;"
        }
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/y7;->a:Lcom/google/android/gms/internal/ads/t3;

    return-object v0
.end method
