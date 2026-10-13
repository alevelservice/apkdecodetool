.class public final Lcom/google/android/gms/internal/ads/rs0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/sc;


# instance fields
.field public final a:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final b:Ljava/lang/String;
    .annotation build Landroidx/annotation/Nullable;
    .end annotation
.end field

.field public final c:Lorg/json/JSONObject;

.field private final d:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Landroid/util/JsonReader;)V
    .locals 2

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    invoke-static {p1}, Lcom/google/android/gms/internal/ads/nc;->c(Landroid/util/JsonReader;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rs0;->d:Lorg/json/JSONObject;

    .line 3
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rs0;->d:Lorg/json/JSONObject;

    const/4 v0, 0x0

    const-string v1, "ad_html"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rs0;->a:Ljava/lang/String;

    .line 4
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rs0;->d:Lorg/json/JSONObject;

    const-string v1, "ad_base_url"

    invoke-virtual {p1, v1, v0}, Lorg/json/JSONObject;->optString(Ljava/lang/String;Ljava/lang/String;)Ljava/lang/String;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rs0;->b:Ljava/lang/String;

    .line 5
    iget-object p1, p0, Lcom/google/android/gms/internal/ads/rs0;->d:Lorg/json/JSONObject;

    const-string v0, "ad_json"

    invoke-virtual {p1, v0}, Lorg/json/JSONObject;->optJSONObject(Ljava/lang/String;)Lorg/json/JSONObject;

    move-result-object p1

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/rs0;->c:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final a(Landroid/util/JsonWriter;)V
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/rs0;->d:Lorg/json/JSONObject;

    invoke-static {p1, v0}, Lcom/google/android/gms/internal/ads/nc;->a(Landroid/util/JsonWriter;Lorg/json/JSONObject;)V

    return-void
.end method
