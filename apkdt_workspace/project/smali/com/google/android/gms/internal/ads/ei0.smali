.class public final Lcom/google/android/gms/internal/ads/ei0;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/yh0;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/yh0<",
        "Lcom/google/android/gms/internal/ads/py;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/lz;


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/lz;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/ei0;->a:Lcom/google/android/gms/internal/ads/lz;

    return-void
.end method


# virtual methods
.method public final synthetic a(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Landroid/view/View;Lcom/google/android/gms/internal/ads/bi0;)Ljava/lang/Object;
    .locals 3

    .line 1
    new-instance p3, Lcom/google/android/gms/internal/ads/gi0;

    sget-object v0, Lcom/google/android/gms/internal/ads/di0;->a:Lcom/google/android/gms/internal/ads/sz;

    invoke-direct {p3, p0, v0}, Lcom/google/android/gms/internal/ads/gi0;-><init>(Lcom/google/android/gms/internal/ads/ei0;Lcom/google/android/gms/internal/ads/sz;)V

    .line 2
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/ei0;->a:Lcom/google/android/gms/internal/ads/lz;

    new-instance v1, Lcom/google/android/gms/internal/ads/lr;

    const/4 v2, 0x0

    invoke-direct {v1, p1, p2, v2}, Lcom/google/android/gms/internal/ads/lr;-><init>(Lcom/google/android/gms/internal/ads/vs0;Lcom/google/android/gms/internal/ads/ns0;Ljava/lang/String;)V

    .line 3
    invoke-virtual {v0, v1, p3}, Lcom/google/android/gms/internal/ads/lz;->a(Lcom/google/android/gms/internal/ads/lr;Lcom/google/android/gms/internal/ads/qy;)Lcom/google/android/gms/internal/ads/ry;

    move-result-object p1

    .line 4
    new-instance p2, Lcom/google/android/gms/internal/ads/fi0;

    invoke-direct {p2, p0, p1}, Lcom/google/android/gms/internal/ads/fi0;-><init>(Lcom/google/android/gms/internal/ads/ei0;Lcom/google/android/gms/internal/ads/ry;)V

    invoke-virtual {p4, p2}, Lcom/google/android/gms/internal/ads/bi0;->a(Lcom/google/android/gms/ads/internal/g;)V

    .line 5
    invoke-virtual {p1}, Lcom/google/android/gms/internal/ads/ry;->h()Lcom/google/android/gms/internal/ads/py;

    move-result-object p1

    return-object p1
.end method
