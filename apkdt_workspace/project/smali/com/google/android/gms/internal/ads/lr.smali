.class public final Lcom/google/android/gms/internal/ads/lr;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/vs0;

.field private final b:Lcom/google/android/gms/internal/ads/ns0;

.field private final c:Ljava/lang/String;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V
    .locals 0
    .param p3    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/internal/ads/vs0;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/lr;->b:Lcom/google/android/gms/internal/ads/ns0;

    if-nez p3, :cond_0

    const-string p3, "com.google.ads.mediation.admob.AdMobAdapter"

    .line 4
    :cond_0
    iput-object p3, p0, Lcom/google/android/gms/internal/ads/lr;->c:Ljava/lang/String;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/vs0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->a:Lcom/google/android/gms/internal/ads/vs0;

    return-object v0
.end method

.method public final b()Lcom/google/android/gms/internal/ads/ns0;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->b:Lcom/google/android/gms/internal/ads/ns0;

    return-object v0
.end method

.method public final c()Ljava/lang/String;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/lr;->c:Ljava/lang/String;

    return-object v0
.end method
