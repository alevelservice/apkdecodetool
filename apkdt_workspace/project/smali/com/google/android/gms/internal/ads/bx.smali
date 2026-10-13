.class public final Lcom/google/android/gms/internal/ads/bx;
.super Ljava/lang/Object;
.source "com.google.android.gms:play-services-ads@@18.1.0"

# interfaces
.implements Lcom/google/android/gms/internal/ads/oe1;


# annotations
.annotation system Ldalvik/annotation/Signature;
    value = {
        "Ljava/lang/Object;",
        "Lcom/google/android/gms/internal/ads/oe1<",
        "Lcom/google/android/gms/internal/ads/zf0;",
        ">;"
    }
.end annotation


# instance fields
.field private final a:Lcom/google/android/gms/internal/ads/hw;

.field private final b:Lcom/google/android/gms/internal/ads/af1;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/common/util/e;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method private constructor <init>(Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/af1;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/hw;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/common/util/e;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    iput-object p1, p0, Lcom/google/android/gms/internal/ads/bx;->a:Lcom/google/android/gms/internal/ads/hw;

    .line 3
    iput-object p2, p0, Lcom/google/android/gms/internal/ads/bx;->b:Lcom/google/android/gms/internal/ads/af1;

    return-void
.end method

.method public static a(Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/af1;)Lcom/google/android/gms/internal/ads/bx;
    .locals 1
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lcom/google/android/gms/internal/ads/hw;",
            "Lcom/google/android/gms/internal/ads/af1<",
            "Lcom/google/android/gms/common/util/e;",
            ">;)",
            "Lcom/google/android/gms/internal/ads/bx;"
        }
    .end annotation

    .line 1
    new-instance v0, Lcom/google/android/gms/internal/ads/bx;

    invoke-direct {v0, p0, p1}, Lcom/google/android/gms/internal/ads/bx;-><init>(Lcom/google/android/gms/internal/ads/hw;Lcom/google/android/gms/internal/ads/af1;)V

    return-object v0
.end method


# virtual methods
.method public final synthetic get()Ljava/lang/Object;
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/google/android/gms/internal/ads/bx;->a:Lcom/google/android/gms/internal/ads/hw;

    iget-object v1, p0, Lcom/google/android/gms/internal/ads/bx;->b:Lcom/google/android/gms/internal/ads/af1;

    invoke-interface {v1}, Lcom/google/android/gms/internal/ads/af1;->get()Ljava/lang/Object;

    move-result-object v1

    check-cast v1, Lcom/google/android/gms/common/util/e;

    .line 2
    invoke-virtual {v0, v1}, Lcom/google/android/gms/internal/ads/hw;->a(Lcom/google/android/gms/common/util/e;)Lcom/google/android/gms/internal/ads/zf0;

    move-result-object v0

    const-string v1, "Cannot return null from a non-@Nullable @Provides method"

    invoke-static {v0, v1}, Lcom/google/android/gms/internal/ads/ue1;->a(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v0, Lcom/google/android/gms/internal/ads/zf0;

    return-object v0
.end method
