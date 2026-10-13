.class public final Lcom/google/android/gms/internal/ads/vy;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Landroid/view/View;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/qy;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/qy;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/vy;->a:Lcom/google/android/gms/internal/ads/qy;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/qy;)Lcom/google/android/gms/internal/ads/vy;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/vy;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/vy;-><init>(Lcom/google/android/gms/internal/ads/qy;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/vy;->a:Lcom/google/android/gms/internal/ads/qy;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/qy;->c()Landroid/view/View;

    move-result-object v0

    return-object v0
.end method
