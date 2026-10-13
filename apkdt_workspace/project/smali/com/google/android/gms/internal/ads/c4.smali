.class public final Lcom/google/android/gms/internal/ads/c4;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"


# annotations
.annotation runtime Ljavax/annotation/ParametersAreNonnullByDefault;
.end annotation


# static fields
.field private static final b:Lcom/google/android/gms/internal/ads/dc;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dc<",
            "Lcom/google/android/gms/internal/ads/h2;",
            ">;"
        }
    .end annotation
.end field

.field private static final c:Lcom/google/android/gms/internal/ads/dc;
    .annotation build Lcom/google/android/gms/common/util/VisibleForTesting;
    .end annotation

    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/dc<",
            "Lcom/google/android/gms/internal/ads/h2;",
            ">;"
        }
    .end annotation
.end field


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/q2;


# direct methods
.method static constructor <clinit>()V
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/f4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/f4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/c4;->b:Lcom/google/android/gms/internal/ads/dc;

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/e4;

    invoke-direct {v0}, Lcom/google/android/gms/internal/ads/e4;-><init>()V

    sput-object v0, Lcom/google/android/gms/internal/ads/c4;->c:Lcom/google/android/gms/internal/ads/dc;

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;)V
    .locals 7

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v6, Lcom/google/android/gms/internal/ads/q2;

    sget-object v4, Lcom/google/android/gms/internal/ads/c4;->b:Lcom/google/android/gms/internal/ads/dc;

    sget-object v5, Lcom/google/android/gms/internal/ads/c4;->c:Lcom/google/android/gms/internal/ads/dc;

    move-object v0, v6

    move-object v1, p1

    move-object v2, p2

    move-object v3, p3

    invoke-direct/range {v0 .. v5}, Lcom/google/android/gms/internal/ads/q2;-><init>(Landroid/content/Context;Lcom/google/android/gms/internal/ads/zzawv;Ljava/lang/String;Lcom/google/android/gms/internal/ads/dc;Lcom/google/android/gms/internal/ads/dc;)V

    iput-object v6, p0, Lcom/google/android/gms/internal/ads/c4;->a:Lcom/google/android/gms/internal/ads/q2;

    return-void
.end method


# virtual methods
.method public final a()Lcom/google/android/gms/internal/ads/l4;
    .locals 2

    .line 2
    new-instance v0, Lcom/google/android/gms/internal/ads/l4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c4;->a:Lcom/google/android/gms/internal/ads/q2;

    invoke-direct {v0, v1}, Lcom/google/android/gms/internal/ads/l4;-><init>(Lcom/google/android/gms/internal/ads/q2;)V

    return-object v0
.end method

.method public final a(Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)Lcom/google/android/gms/internal/ads/t3;
    .locals 2
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "<I:",
            "Ljava/lang/Object;",
            "O:",
            "Ljava/lang/Object;",
            ">(",
            "Ljava/lang/String;",
            "Lcom/google/android/gms/internal/ads/z3<",
            "TI;>;",
            "Lcom/google/android/gms/internal/ads/v3<",
            "TO;>;)",
            "Lcom/google/android/gms/internal/ads/t3<",
            "TI;TO;>;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/h4;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/c4;->a:Lcom/google/android/gms/internal/ads/q2;

    invoke-direct {v0, v1, p1, p2, p3}, Lcom/google/android/gms/internal/ads/h4;-><init>(Lcom/google/android/gms/internal/ads/q2;Ljava/lang/String;Lcom/google/android/gms/internal/ads/z3;Lcom/google/android/gms/internal/ads/v3;)V

    return-object v0
.end method
