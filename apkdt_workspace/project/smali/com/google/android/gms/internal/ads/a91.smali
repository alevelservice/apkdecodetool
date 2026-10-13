.class final enum Lcom/google/android/gms/internal/ads/a91;
.super Ljava/lang/Enum;
.source "com.google.android.gms:play-services-ads-base@@18.1.0"


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Enum<",
        "Lcom/google/android/gms/internal/ads/a91;",
        ">;"
    }
.end annotation


# static fields
.field private static final synthetic e:[Lcom/google/android/gms/internal/ads/a91;

.field public static final enum zzhjs:Lcom/google/android/gms/internal/ads/a91;

.field public static final enum zzhjt:Lcom/google/android/gms/internal/ads/a91;

.field public static final enum zzhju:Lcom/google/android/gms/internal/ads/a91;

.field public static final enum zzhjv:Lcom/google/android/gms/internal/ads/a91;


# instance fields
.field private final zzhjw:Z


# direct methods
.method static constructor <clinit>()V
    .locals 6

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/a91;

    const/4 v1, 0x0

    const-string v2, "SCALAR"

    invoke-direct {v0, v2, v1, v1}, Lcom/google/android/gms/internal/ads/a91;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/a91;->zzhjs:Lcom/google/android/gms/internal/ads/a91;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/a91;

    const/4 v2, 0x1

    const-string v3, "VECTOR"

    invoke-direct {v0, v3, v2, v2}, Lcom/google/android/gms/internal/ads/a91;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/a91;->zzhjt:Lcom/google/android/gms/internal/ads/a91;

    .line 3
    new-instance v0, Lcom/google/android/gms/internal/ads/a91;

    const/4 v3, 0x2

    const-string v4, "PACKED_VECTOR"

    invoke-direct {v0, v4, v3, v2}, Lcom/google/android/gms/internal/ads/a91;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/a91;->zzhju:Lcom/google/android/gms/internal/ads/a91;

    .line 4
    new-instance v0, Lcom/google/android/gms/internal/ads/a91;

    const/4 v4, 0x3

    const-string v5, "MAP"

    invoke-direct {v0, v5, v4, v1}, Lcom/google/android/gms/internal/ads/a91;-><init>(Ljava/lang/String;IZ)V

    sput-object v0, Lcom/google/android/gms/internal/ads/a91;->zzhjv:Lcom/google/android/gms/internal/ads/a91;

    const/4 v0, 0x4

    new-array v0, v0, [Lcom/google/android/gms/internal/ads/a91;

    .line 5
    sget-object v5, Lcom/google/android/gms/internal/ads/a91;->zzhjs:Lcom/google/android/gms/internal/ads/a91;

    aput-object v5, v0, v1

    sget-object v1, Lcom/google/android/gms/internal/ads/a91;->zzhjt:Lcom/google/android/gms/internal/ads/a91;

    aput-object v1, v0, v2

    sget-object v1, Lcom/google/android/gms/internal/ads/a91;->zzhju:Lcom/google/android/gms/internal/ads/a91;

    aput-object v1, v0, v3

    sget-object v1, Lcom/google/android/gms/internal/ads/a91;->zzhjv:Lcom/google/android/gms/internal/ads/a91;

    aput-object v1, v0, v4

    sput-object v0, Lcom/google/android/gms/internal/ads/a91;->e:[Lcom/google/android/gms/internal/ads/a91;

    return-void
.end method

.method private constructor <init>(Ljava/lang/String;IZ)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(Z)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0, p1, p2}, Ljava/lang/Enum;-><init>(Ljava/lang/String;I)V

    .line 2
    iput-boolean p3, p0, Lcom/google/android/gms/internal/ads/a91;->zzhjw:Z

    return-void
.end method

.method public static values()[Lcom/google/android/gms/internal/ads/a91;
    .locals 1

    .line 1
    sget-object v0, Lcom/google/android/gms/internal/ads/a91;->e:[Lcom/google/android/gms/internal/ads/a91;

    invoke-virtual {v0}, [Lcom/google/android/gms/internal/ads/a91;->clone()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, [Lcom/google/android/gms/internal/ads/a91;

    return-object v0
.end method
