.class public final Lcom/google/android/gms/internal/ads/zh0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/zzzn;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ai0;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ai0;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/zh0;->a:Lcom/google/android/gms/internal/ads/ai0;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ai0;)Lcom/google/android/gms/internal/ads/zh0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/zh0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/zh0;-><init>(Lcom/google/android/gms/internal/ads/ai0;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/zh0;->a:Lcom/google/android/gms/internal/ads/ai0;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ai0;->a()Lcom/google/android/gms/internal/ads/zzzn;

    move-result-object v0

    return-object v0
.end method
