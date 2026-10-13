.class public final Lcom/google/android/gms/internal/ads/hx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/ex;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/hx;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/hx;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/hx;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/hx;->a:Lcom/google/android/gms/internal/ads/hx;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/hx;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/hx;->a:Lcom/google/android/gms/internal/ads/hx;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/ex;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/ex;-><init>()V

    return-object v0
.end method
