.class public final Lcom/google/android/gms/internal/ads/g6;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Z

.field private final b:Z

.field private final c:Z

.field private final d:Z

.field private final e:Z


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/i6;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i6;->a(Lcom/google/android/gms/internal/ads/i6;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/g6;->a:Z

    .line 3
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i6;->b(Lcom/google/android/gms/internal/ads/i6;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/g6;->b:Z

    .line 4
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i6;->c(Lcom/google/android/gms/internal/ads/i6;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/g6;->c:Z

    .line 5
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i6;->d(Lcom/google/android/gms/internal/ads/i6;)Z

    move-result v0

    iput-boolean v0, p0, Lcom/google/android/gms/internal/ads/g6;->d:Z

    .line 6
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/i6;->e(Lcom/google/android/gms/internal/ads/i6;)Z

    move-result p1

    iput-boolean p1, p0, Lcom/google/android/gms/internal/ads/g6;->e:Z

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/i6;Lcom/google/android/gms/internal/ads/j6;)V
    .locals 0

    .line 7
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/g6;-><init>(Lcom/google/android/gms/internal/ads/i6;)V

    return-void
.end method


# virtual methods
.method public final a()Lorg/json/JSONObject;
    .locals 3

    .line 1
    :try_start_0
    new-instance v0, Lorg/json/JSONObject;

    invoke-direct {v0}, Lorg/json/JSONObject;-><init>()V

    const-string v1, "sms"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/g6;->a:Z

    .line 2
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "tel"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/g6;->b:Z

    .line 3
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "calendar"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/g6;->c:Z

    .line 4
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "storePicture"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/g6;->d:Z

    .line 5
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0

    const-string v1, "inlineVideo"

    iget-boolean v2, p0, Lcom/google/android/gms/internal/ads/g6;->e:Z

    .line 6
    invoke-virtual {v0, v1, v2}, Lorg/json/JSONObject;->put(Ljava/lang/String;Z)Lorg/json/JSONObject;

    move-result-object v0
    :try_end_0
    .catch Lorg/json/JSONException; {:try_start_0 .. :try_end_0} :catch_0

    return-object v0

    :catch_0
    move-exception v0

    const-string v1, "Error occured while obtaining the MRAID capabilities."

    .line 7
    invoke-static {v1, v0}, Lcom/google/android/gms/internal/ads/qd;->b(Ljava/lang/String;Ljava/lang/Throwable;)V

    const/4 v0, 0x0

    return-object v0
.end method
