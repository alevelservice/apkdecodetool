.class public final Lcom/google/android/gms/internal/ads/cd0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# instance fields
.field private a:Lcom/google/android/gms/internal/ads/rt;

.field private b:Lcom/google/android/gms/internal/ads/ns0;


# direct methods
.method public constructor <init>(Lcom/google/android/gms/internal/ads/ns0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cd0;->b:Lcom/google/android/gms/internal/ads/ns0;

    return-void
.end method


# virtual methods
.method public final a()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/cd0;->a:Lcom/google/android/gms/internal/ads/rt;

    if-nez v0, :cond_0

    return-void

    .line 2
    :cond_0
    iget-object v1, p0, Lcom/google/android/gms/internal/ads/cd0;->b:Lcom/google/android/gms/internal/ads/ns0;

    iget v1, v1, Lcom/google/android/gms/internal/ads/ns0;->O:I

    const/4 v2, 0x2

    if-ne v1, v2, :cond_1

    .line 3
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/rt;->g()V

    :cond_1
    return-void
.end method

.method public final a(Lcom/google/android/gms/internal/ads/rt;)V
    .locals 0

    .line 4
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/cd0;->a:Lcom/google/android/gms/internal/ads/rt;

    return-void
.end method
