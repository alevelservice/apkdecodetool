.class public final Lcom/google/android/gms/internal/ads/na0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/ab0;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Landroid/content/Context;)Lcom/google/android/gms/internal/ads/ab0;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ab0;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/ab0;-><init>(Landroid/content/Context;)V

    const-string p0, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, p0}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/ab0;

    return-object v0
.end method
