.class public final Lcom/google/android/gms/internal/ads/oo;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/po;",
        ">;"
    }
.end annotation


# direct methods
.method public static a(Lcom/google/android/gms/internal/ads/rq;Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ms0;I)Lcom/google/android/gms/internal/ads/po;
    .locals 7

    .line 1
    new-instance v6, Lcom/google/android/gms/internal/ads/po;

    move-object v0, v6

    move-object v1, p0

    move-object v2, p1

    move-object v3, p2

    move-object v4, p3

    move v5, p4

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/po;-><init>(Lcom/google/android/gms/internal/ads/rq;Landroid/view/View;Lcom/google/android/gms/internal/ads/fi;Lcom/google/android/gms/internal/ads/ms0;I)V

    return-object v6
.end method
