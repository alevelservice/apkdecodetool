.class final synthetic Lcom/google/android/gms/internal/ads/wd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/pq;


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/zzalj;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/zzalj;)V
    .locals 0

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/google/android/gms/internal/ads/wd0;->a:Lcom/google/android/gms/internal/ads/zzalj;

    return-void
.end method

.method static a(Lcom/google/android/gms/internal/ads/zzalj;)Lcom/google/android/gms/internal/ads/pq;
    .locals 1

    new-instance v0, Lcom/google/android/gms/internal/ads/wd0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/wd0;-><init>(Lcom/google/android/gms/internal/ads/zzalj;)V

    return-object v0
.end method


# virtual methods
.method public final getVideoController()Lcom/google/android/gms/internal/ads/zzwk;
    .locals 1

    iget-object v0, p0, Lcom/google/android/gms/internal/ads/wd0;->a:Lcom/google/android/gms/internal/ads/zzalj;

    invoke-interface {v0}, Lcom/google/android/gms/internal/ads/zzalj;->getVideoController()Lcom/google/android/gms/internal/ads/zzwk;

    move-result-object v0

    return-object v0
.end method
