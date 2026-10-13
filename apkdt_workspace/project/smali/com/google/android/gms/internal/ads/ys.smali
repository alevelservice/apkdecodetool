.class public final Lcom/google/android/gms/internal/ads/ys;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Landroid/os/Bundle;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/ws;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/ws;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/ys;->a:Lcom/google/android/gms/internal/ads/ws;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/ws;)Lcom/google/android/gms/internal/ads/ys;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ys;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ys;-><init>(Lcom/google/android/gms/internal/ads/ws;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1
    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ys;->a:Lcom/google/android/gms/internal/ads/ws;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/ws;->d()Landroid/os/Bundle;

    move-result-object v0

    return-object v0
.end method
