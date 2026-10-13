.class public final Lcom/google/android/gms/internal/ads/om;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/s9;",
        ">;"
    }
.end annotation


# static fields
.field private static final a:Lcom/google/android/gms/internal/ads/om;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/om;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/om;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/om;->a:Lcom/google/android/gms/internal/ads/om;

    return-void
.end method

.method public constructor <init>()V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method

.method public static a()Lcom/google/android/gms/internal/ads/om;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/om;->a:Lcom/google/android/gms/internal/ads/om;

    return-object v0
.end method

.method public static b()Lcom/google/android/gms/internal/ads/s9;
    .locals 2

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/s9;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/s9;-><init>()V

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    .line 2
    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/s9;

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 1

    .line 1
    invoke-static {}, Lcom/google/android/gms/internal/ads/om;->b()Lcom/google/android/gms/internal/ads/s9;

    move-result-object v0

    return-object v0
.end method
