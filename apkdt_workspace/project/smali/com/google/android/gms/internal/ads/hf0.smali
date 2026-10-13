.class final synthetic Lcom/google/android/gms/internal/ads/hf0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Ljava/util/concurrent/Callable;


# instance fields
.field private final e:Lcom/google/android/gms/internal/ads/ef0;

.field private final f:Lcom/google/android/gms/internal/ads/qz0;

.field private final g:Lcom/google/android/gms/internal/ads/qz0;

.field private final h:Lcom/google/android/gms/internal/ads/vs0;

.field private final i:Lcom/google/android/gms/internal/ads/ns0;

.field private final j:Lorg/json/JSONObject;


# direct methods
.method constructor <init>(Lcom/google/android/gms/internal/ads/ef0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/hf0;->e:Lcom/google/android/gms/internal/ads/ef0;

    iput-object p2, p0, Lcom/google/android/gms/internal/ads/hf0;->f:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p3, p0, Lcom/google/android/gms/internal/ads/hf0;->g:Lcom/google/android/gms/internal/ads/qz0;

    iput-object p4, p0, Lcom/google/android/gms/internal/ads/hf0;->h:Lcom/google/android/gms/internal/ads/vs0;

    iput-object p5, p0, Lcom/google/android/gms/internal/ads/hf0;->i:Lcom/google/android/gms/internal/ads/ns0;

    iput-object p6, p0, Lcom/google/android/gms/internal/ads/hf0;->j:Lorg/json/JSONObject;

    return-void
.end method


# virtual methods
.method public final call()Ljava/lang/Object;
    .locals 6

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/hf0;->e:Lcom/google/android/gms/internal/ads/ef0;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/hf0;->f:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v2, p0, Lcom/google/android/gms/internal/ads/hf0;->g:Lcom/google/android/gms/internal/ads/qz0;

    iget-object v3, p0, Lcom/google/android/gms/internal/ads/hf0;->h:Lcom/google/android/gms/internal/ads/vs0;

    iget-object v4, p0, Lcom/google/android/gms/internal/ads/hf0;->i:Lcom/google/android/gms/internal/ads/ns0;

    iget-object v5, p0, Lcom/google/android/gms/internal/ads/hf0;->j:Lorg/json/JSONObject;

    invoke-virtual/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/ef0;->a(Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/qz0;Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Lorg/json/JSONObject;)Lcom/google/android/gms/internal/ads/d10;

    move-result-object v0

    return-object v0
.end method
