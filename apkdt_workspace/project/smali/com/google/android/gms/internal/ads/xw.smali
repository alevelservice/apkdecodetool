.class public final Lcom/google/android/gms/internal/ads/xw;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Ljava/util/Set<",
        "Lcom/google/android/gms/internal/ads/ox<",
        "Lcom/google/android/gms/ads/doubleclick/a;",
        ">;>;>;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hw;


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hw;)V
    .locals 0

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/xw;->a:Lcom/google/android/gms/internal/ads/hw;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/hw;)Lcom/google/android/gms/internal/ads/xw;
    .locals 1

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/xw;

    invoke-direct {v0, p0}, Lcom/google/android/gms/internal/ads/xw;-><init>(Lcom/google/android/gms/internal/ads/hw;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/xw;->a:Lcom/google/android/gms/internal/ads/hw;

    .line 2
    invoke-virtual {v0}, Lcom/google/android/gms/internal/ads/hw;->f()Ljava/util/Set;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Ljava/util/Set;

    return-object v0
.end method
