.class final Lcom/google/android/gms/internal/ads/v1;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/d2;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/d2;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/v1;->a:Lcom/google/android/gms/internal/ads/d2;

    return-void
.end method

.method synthetic constructor <init>(Lcom/google/android/gms/internal/ads/d2;Lcom/google/android/gms/internal/ads/x1;)V
    .locals 0

    .line 3
    invoke-direct {p0, p1}, Lcom/google/android/gms/internal/ads/v1;-><init>(Lcom/google/android/gms/internal/ads/d2;)V

    return-void
.end method


# virtual methods
.method public final notify(Ljava/lang/String;)V
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/Nullable;
        .end annotation
    .end param
    .annotation runtime Landroid/webkit/JavascriptInterface;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/v1;->a:Lcom/google/android/gms/internal/ads/d2;

    invoke-interface {v0, p1}, Lcom/google/android/gms/internal/ads/d2;->d(Ljava/lang/String;)Z

    return-void
.end method
