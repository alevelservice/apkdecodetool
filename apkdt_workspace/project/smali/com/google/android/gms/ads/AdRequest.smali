.class public final Lcom/google/android/gms/ads/AdRequest;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads-lite@@18.1.0"


# annotations
.annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
.end annotation

.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/google/android/gms/ads/AdRequest$MaxAdContentRating;,
        Lcom/google/android/gms/ads/AdRequest$TagForUnderAgeOfConsent;,
        Lcom/google/android/gms/ads/AdRequest$a;
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/su1;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/ads/AdRequest$a;)V
    .locals 1

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/su1;

    invoke-static {p1}, Lcom/google/android/gms/ads/AdRequest$a;->a(Lcom/google/android/gms/ads/AdRequest$a;)Lcom/google/android/gms/internal/ads/ru1;

    move-result-object p1

    invoke-direct {v0, p1}, Lcom/google/android/gms/internal/ads/su1;-><init>(Lcom/google/android/gms/internal/ads/ru1;)V

    iput-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->a:Lcom/google/android/gms/internal/ads/su1;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/ads/AdRequest$a;Lcom/google/android/gms/ads/q;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/ads/AdRequest;-><init>(Lcom/google/android/gms/ads/AdRequest$a;)V

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/su1;
    .locals 1

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/ads/AdRequest;->a:Lcom/google/android/gms/internal/ads/su1;

    return-object v0
.end method
